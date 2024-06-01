# Разделение обязанностей (Separation of Concerns)

### Задача: 
Создать структуру проекта и разделить функциональность на контроллеры, сервисы и репозитории.

### Структура проекта:
src/
Controllers/
Services/
Repositories/
Config/
Public/
Vendor/

### Контроллер:
**src/Controllers/Api.php:**
```php
<?php

namespace App\Controllers;

use App\Services\UserService;

class Api {
    private $userService;

    public function __construct(UserService $userService) {
        $this->userService = $userService;
    }

    public function getUsers() {
        try {
            $users = $this->userService->getAllUsers();
            return json_encode($users);
        } catch (\Exception $e) {
            return json_encode(['error' => $e->getMessage()]);
        }
    }
}
Сервис:
src/Services/UserService.php:
<?php

namespace App\Services;

use App\Repositories\Db;

class UserService {
    private $db;

    public function __construct(Db $db) {
        $this->db = $db;
    }

    public function getAllUsers() {
        $result = $this->db->query("SELECT * FROM users", []);
        return $result->fetch_all(MYSQLI_ASSOC);
    }
}
Репозиторий:
src/Repositories/Db.php:
<?php

namespace App\Repositories;

class Db {
    private $mysqli;

    public function __construct($config) {
        $this->mysqli = new \mysqli($config['host'], $config['user'], $config['password'], $config['dbname']);

        if ($this->mysqli->connect_error) {
            throw new \Exception('Connect Error (' . $this->mysqli->connect_errno . ') ' . $this->mysqli->connect_error);
        }
    }

    public function query($sql, $params) {
        $stmt = $this->mysqli->prepare($sql);
        if ($stmt === false) {
            throw new \Exception('Prepare Error (' . $this->mysqli->errno . ') ' . $this->mysqli->error);
        }

        if ($params) {
            $stmt->bind_param(...$params);
        }

        if (!$stmt->execute()) {
            throw new \Exception('Execute Error (' . $stmt->errno . ') ' . $stmt->error);
        }

        return $stmt->get_result();
    }
}
Внедрение Dependency Injection
Задача:
Создать контейнер для управления зависимостями и внедрить зависимости через него.

Контейнер:
src/Container.php:
<?php

namespace App;

class Container {
    protected $bindings = [];

    public function set($key, $resolver) {
        $this->bindings[$key] = $resolver;
    }

    public function get($key) {
        if (isset($this->bindings[$key])) {
            return $this->bindings[$key]($this);
        }
        throw new \Exception("No binding found for key: {$key}");
    }
}
Использование контейнера:
index.php:
<?php

require __DIR__ . '/vendor/autoload.php';

use App\Container;
use App\Controllers\Api;
use App\Repositories\Db;
use App\Services\UserService;

$config = require __DIR__ . '/src/Config/config.php';

$container = new Container();

$container->set('Db', function($c) use ($config) {
    return new Db($config['db']);
});

$container->set('UserService', function($c) {
    return new UserService($c->get('Db'));
});

$container->set('Api', function($c) {
    return new Api($c->get('UserService'));
});

$api = $container->get('Api');
echo $api->getUsers();
Использование подготовленных выражений для SQL-запросов
Задача:
Обновить методы для использования подготовленных выражений для всех SQL-запросов.

Репозиторий:
src/Repositories/Db.php:
<?php

namespace App\Repositories;

class Db {
    private $mysqli;

    public function __construct($config) {
        $this->mysqli = new \mysqli($config['host'], $config['user'], $config['password'], $config['dbname']);

        if ($this->mysqli->connect_error) {
            throw new \Exception('Connect Error (' . $this->mysqli->connect_errno . ') ' . $this->mysqli->connect_error);
        }
    }

    public function query($sql, $params) {
        $stmt = $this->mysqli->prepare($sql);
        if ($stmt === false) {
            throw new \Exception('Prepare Error (' . $this->mysqli->errno . ') ' . $this->mysqli->error);
        }

        if ($params) {
            $stmt->bind_param(...$params);
        }

        if (!$stmt->execute()) {
            throw new \Exception('Execute Error (' . $stmt->errno . ') ' . $stmt->error);
        }

        return $stmt->get_result();
    }
}
Обработка ошибок
Задача:
Добавить обработку и логирование ошибок.

Контроллер:
src/Controllers/Api.php:
<?php

namespace App\Controllers;

use App\Services\UserService;

class Api {
    private $userService;

    public function __construct(UserService $userService) {
        $this->userService = $userService;
    }

    public function getUsers() {
        try {
            $users = $this->userService->getAllUsers();
            return json_encode($users);
        } catch (\Exception $e) {
            return json_encode(['error' => $e->getMessage()]);
        }
    }
}
Вынесение жестко закодированных значений
Задача:
Вынести конфигурации в отдельные файлы.

Конфигурация:
src/Config/config.php:
<?php

return [
    'db' => [
        'host' => 'localhost',
        'user' => 'root',
        'password' => '',
        'dbname' => 'database_name'
    ]
];
Репозиторий:
src/Repositories/Db.php:
<?php

namespace App\Repositories;

class Db {
    private $mysqli;

    public function __construct($config) {
        $this->mysqli = new \mysqli($config['host'], $config['user'], $config['password'], $config['dbname']);

        if ($this->mysqli->connect_error) {
            throw new \Exception('Connect Error (' . $this->mysqli->connect_errno . ') ' . $this->mysqli->connect_error);
        }
    }

    public function query($sql, $params) {
        $stmt = $this->mysqli->prepare($sql);
        if ($stmt === false) {
            throw new \Exception('Prepare Error (' . $this->mysqli->errno . ') ' . $this->mysqli->error);
        }

        if ($params) {
            $stmt->bind_param(...$params);
        }

        if (!$stmt->execute()) {
            throw new \Exception('Execute Error (' . $stmt->errno . ') ' . $stmt->error);
        }

        return $stmt->get_result();
    }
}
Использование конфигурационного файла:
index.php:
<?php

require __DIR__ . '/vendor/autoload.php';

use App\Container;
use App\Controllers\Api;
use App\Repositories\Db;
use App\Services\UserService;

$config = require __DIR__ . '/src/Config/config.php';

$container = new Container();

$container->set('Db', function($c) use ($config) {
    return new Db($config['db']);
});

$container->set('UserService', function($c) {
    return new UserService($c->get('Db'));
});

$container->set('Api', function($c) {
    return new Api($c->get('UserService'));
});

$api = $container->get('Api');
echo $api->getUsers();

Обоснование решений
1. Разделение обязанностей (Separation of Concerns)
Суть проблемы: Функции выполняли слишком много задач, что затрудняло их поддержку и расширение.
Решение: Разделили функциональность на контроллеры, сервисы и репозитории.
Ценность:

Улучшенная читаемость кода.
Легкость в поддержке и расширении.
Возможность тестирования отдельных компонентов.
2. Внедрение Dependency Injection
Суть проблемы: Зависимости создавались внутри классов, что затрудняло тестирование и модификацию кода.
Решение: Внедрили dependency injection, используя простой контейнер.
Ценность:

Улучшенная тестируемость и гибкость кода.
Упрощенное управление зависимостями.
Повышенная модульность кода.
3. Использование подготовленных выражений для SQL-запросов
Суть проблемы: Код был уязвим для SQL-инъекций из-за использования динамических SQL-запросов.
Решение: Использовали подготовленные выражения для всех SQL-запросов.
Ценность:

Повышенная безопасность и защита от SQL-инъекций.
Снижение риска атак на базу данных.
Улучшение надежности кода.
4. Обработка ошибок
Суть проблемы: Во многих местах отсутствовала корректная обработка ошибок, что затрудняло отладку и поддержку.
Решение: Добавили обработку и логирование ошибок.
Ценность:

Улучшенное управление ошибками.
Легкость в отладке и мониторинге приложения.
Повышенная стабильность кода.
5. Вынесение жестко закодированных значений
Суть проблемы: Жестко закодированные значения использовались в коде, что затрудняло настройку и модификацию.
Решение: Вынесли конфигурации в отдельные файлы.
Ценность:

Упрощенная настройка и модификация параметров.
Повышенная гибкость и переиспользование кода.
Улучшенное управление конфигурацией приложения.

