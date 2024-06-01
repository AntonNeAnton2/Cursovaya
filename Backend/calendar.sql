-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 25 2024 г., 04:50
-- Версия сервера: 10.9.8-MariaDB
-- Версия PHP: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `calendar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `calendar_constructor`
--

CREATE TABLE IF NOT EXISTS `calendar_constructor` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `created` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `calendar_constructor`
--

INSERT INTO `calendar_constructor` (`id`, `user_id`, `data`, `created`, `name`) VALUES
(7, 7, '{"elements":[],"calendar":[],"month":1,"year":2024}', 1710335462, 'January'),
(8, 1, '{"elements":[{"type":"image","x":245,"y":450.96875,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/alphabet\\/A Acorn.png?v=1.0.0.7"}],"calendar":{"2_1":"#fdf2f2"},"month":5,"year":2024,"texts":[]}', 1710363324, 'tst'),
(9, 5, '{"elements":[{"type":"image","x":550,"y":600,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5847.png?v=1.0.0.2"},{"type":"image","x":665,"y":190,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5848.png?v=1.0.0.2"},{"type":"image","x":55,"y":505,"w":76,"h":93,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5849.png?v=1.0.0.2"},{"type":"image","x":460,"y":410,"w":79,"h":80,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5850.png?v=1.0.0.2"},{"type":"image","x":140,"y":305,"w":62,"h":75,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5851.png?v=1.0.0.2"},{"type":"image","x":565,"y":305,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5852.png?v=1.0.0.2"},{"type":"image","x":635,"y":65,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5853.png?v=1.0.0.2"},{"type":"image","x":140,"y":605,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5854.png?v=1.0.0.2"},{"type":"image","x":35,"y":290,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5855.png?v=1.0.0.2"},{"type":"image","x":355,"y":295,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5857.png?v=1.0.0.2"},{"type":"image","x":345,"y":500,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5858.png?v=1.0.0.2"},{"type":"image","x":435,"y":165,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5859.png?v=1.0.0.2"},{"type":"image","x":155,"y":390,"w":-1,"h":-1,"image":"https:\\/\\/bots-tg.ru\\/img\\/calendar\\/images\\/April\\/IMG_5860.png?v=1.0.0.2"},{"type":"text","x":337.85,"y":485.26,"w":-1,"h":-1,"text":"<b>a_e<\\/b><br>bake<br>rake","size":"20","color":"#000000"},{"type":"text","x":177.8499755859375,"y":545.2666625976562,"w":-1,"h":-1,"text":"<b>a_e<\\/b><br>bake<br>rake","size":"20","color":"#000000"},{"type":"text","x":252.8499755859375,"y":305.26666259765625,"w":-1,"h":-1,"text":"<b>a_e<\\/b><br>bake<br>rake","size":"20","color":"#000000"}],"calendar":{"2_3":"#ea868f"},"month":4,"year":2024}', 1710646807, 'April Draft'),
(10, 1, '{"elements":[],"calendar":[],"month":3,"year":2024}', 1710671585, 'test2'),
(11, 1, '{"elements":[],"calendar":[],"month":4,"year":2024}', 1710672236, 'ap');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client` varchar(32) NOT NULL,
  `expires` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `token`, `user_id`, `client`, `expires`) VALUES
(3, '136a87aa0e26771aced41b6ca9c5d578', 1, '88c408d586dbf5c39696177dc8a3770c', 1707498133),
(6, '0ca30f07be11fc6419fb52d09c386f3d', 1, '803a9593f507233aad5ed627db54f847', 1707513025),
(8, 'ffd4fee86e19e80009fc79429b2f4e19', 1, 'c98c45b332b49ab81f9e2f1ae22e7999', 1707535164),
(9, '3f127d3469aaa045ade8711714926938', 1, 'c2f568a705cb5614a1d05593c1805b1d', 1707670521),
(10, '6470975e614dee18f5a421fad66ddc95', 1, '47bf26b05e7a714307baf26cc02f1ee6', 1707675583),
(11, 'f5430cb4200fb0aa5af00ebd5b80bace', 1, 'edaf7c85f36b3b97207c3dc27eec5a0f', 1707726306),
(17, '5f32f135504fa3a3ed05cefca25d4f63', 1, '356853d3153c167cffa3860f8562ca05', 1707932066),
(18, 'd8cbd3b91b82b62aebe6bd6effbed610', 1, '82b2f053ff46bd60ee0c26034e44afed', 1707938675),
(19, '0452b05cfaf70a030dd1399ee971c0a1', 1, 'bfa40e6971efa55d3a3927f488c22d8d', 1707958767),
(20, 'a41bcb710e94f50680dc31b9d3baf16d', 5, 'bc54d1d1ac53fb15dc0291a520947ec5', 1707959088),
(22, 'b7561adc9a287d12f6360452625ad756', 1, '6565f8d5206dce9d76aada2a40c93f37', 1707999876),
(23, '67265c0b2d27810c538d2403e0ccb222', 1, '9cd28ec30cf7c64bace36fcfce2351e6', 1708023285),
(25, 'a9041e5c653950fad0dbecf9f419c5db', 1, '0a4848c789a7197a3dfdb68339b3ff53', 1708118469),
(26, '74ea25640be864bdbe49463d10c941be', 1, '6cb78afff322367cb7ab07fc2f1c31ac', 1708119522),
(27, '304826125a808e926c42922474b12238', 1, '8c9378a4f94eae640a5dcd7f4fa5833f', 1708122779),
(29, '26a436c330a9452db483c7986504a593', 1, '8d763b86fcb2018abeab3c7bad37dac6', 1708203018),
(30, '6338943d3794b313e492aa10d2bd83ac', 1, 'ada8201a55a7293fee671e5ded689b50', 1709090176),
(31, 'af95c17e18799b660e7c6d2dfecc5889', 1, '9e05abef0ef25798757479271213f00f', 1709092624),
(32, '1bad2ac9a7671ab4790ccdaa1590bff2', 1, '37f51594fbceca384a81ad018264026a', 1709092686),
(34, '42452cfb61df4486fd7f110a7e6e9126', 1, 'a5ee4da4ecfae295872583557b145ceb', 1709298600),
(35, 'eb3b299350ca82bbf589e111be8e33cc', 1, '7862abb862c55c3ee91eee9ada074ab9', 1709382085),
(36, 'd9a347b0cde5f0ef21e082ac9c49100a', 1, '6233c653596f0e58950d9b75fede3d6e', 1709432420),
(40, '4044281579cf8aa56cf982ce07bc162d', 1, 'ce3c337939516277ee6fdbaf4b4d4065', 1709694012),
(41, 'ebef743267099f208afb7b1c5cb49d63', 6, 'c3c1bf9531c418e578de5245955dba9c', 1710288808),
(44, 'd36ab4bbd14c1afd462342c312f61418', 1, '1de98e138e8a5dc2282fa3e239054c7d', 1710382264),
(45, '4bf6dcfbf33024caff1099d29a5a0919', 1, 'c8074a68d71b87ce5693a9323acddfa5', 1710382460),
(47, '2c964c663316e7fd58ba20a1b8073633', 6, '6b7f59fbd76f658a9202f615f1cd539f', 1710386944),
(48, '2e547432293484704fea5dc43033cb1a', 1, '2cb7b6a3e1abb8e064c6ae3aaf0ba246', 1710422041),
(49, 'bc9d8b808ba93f9800174e018573a665', 7, '19747b47b3c73b431f1ae086bb3d1d74', 1710443304),
(58, 'faf7bc079b95c90d560a72c7c2aa7256', 1, '2987e7f1a75e1fb9ebf52eb00a2a970d', 1710457523),
(59, '6bb08f6a2d27775dd7691290f7f29725', 1, '978b5bc7f84e517d4961bf1e24e2d53e', 1710464710),
(60, '6fa2e5793323419b81745f352a1bb68b', 5, '1fe1cdd0f0fc6dbadb360c49f26639a0', 1710466196),
(61, 'c5966e85fb8b4dafcc402a8b9b2d813b', 1, '7a2f8ad701e510bdf4b46c3a53a8d3e9', 1710542889),
(62, '832bd47680f9a44ca4ad510ee41ab65a', 1, 'ff654d67fadce550b15f13e769ff93c6', 1710650482),
(65, '3ce0f084c755f307bc244522dc42c003', 1, '323b1ff0ec852be290f0ac083c5b627f', 1710811673),
(66, 'bad6e3aaaf0e79fe6c0c0cbe68ef9f3e', 1, '2817fc895cb5d8e49c9b4121870f54f9', 1710849166),
(67, 'cae654f53c5c503dd0c2af6061107f6d', 5, '409e6f1b0729f5ca9997760027ed5673', 1710901872),
(68, '665401f94f9a617815687f82bf2417f8', 1, 'dcc4379e4e896a81b45528d4e414736a', 1710976465),
(69, 'd40f4897335318fcdb860393cee79c5b', 1, '19beda64726b73991c3f0b7b137f5557', 1710976590),
(71, 'faf83111e6a8a2f65fe5ee224d022532', 1, 'f064456e4fbec5d69cc57e1d81fd2ed3', 1711171237),
(73, 'e7db95dde8f70de216a4e96d10d1f0e7', 4, '49747b6a1e9b64a14c40897a975fc593', 1711396610);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `email` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `recovery_password` varchar(60) DEFAULT '',
  `name` varchar(15) NOT NULL,
  `created` int(11) NOT NULL,
  `verify` int(11) NOT NULL DEFAULT 0,
  `verify_code` varchar(32) NOT NULL,
  `verify_code_expires` int(11) NOT NULL,
  `surname` varchar(15) NOT NULL DEFAULT '',
  `interests` varchar(100) NOT NULL DEFAULT '',
  `login` varchar(15) NOT NULL DEFAULT '',
  `gender` int(11) NOT NULL DEFAULT 0,
  `about` varchar(1000) NOT NULL DEFAULT '',
  `photo` text NOT NULL DEFAULT '',
  `email_code` int(11) NOT NULL DEFAULT 0,
  `email_code_expires` int(11) NOT NULL DEFAULT 0,
  `week_type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `email`, `password`, `recovery_password`, `name`, `created`, `verify`, `verify_code`, `verify_code_expires`, `surname`, `interests`, `login`, `gender`, `about`, `photo`, `email_code`, `email_code_expires`, `week_type`) VALUES
(1, 1, 'nickolai.panaitov@yandex.ru', '$2y$10$jhmHMttQ0WBcm4O7JPNY9e/XhaG6spvd.uRsL5ZcoG8n0BC3rfCjG', '$2y$10$SM39Ow3hut9zyf7Ly8lrpuuvW6.BFFo8krSFJ13.N0PKEZK4kdzVi', 'Nikolay', 1707341314, 1, '99f3108dc4ca30f597db6b8502645ff3', 1707387095, 'Panaitov', 'Programming', 'Picknice', 1, 'I''m programmer', '', 918531, 1707430741, 0),
(2, 0, 'picknice@outlook.com', '$2y$10$JroenMQbtuh93Ff1KNU.huPXufU08NEgQ6l61uBuddlVEx2RUl6lW', '', 'Nikolay', 1707650122, 0, '977b9244b3f760db10c7cb3630e02019', 1707763484, '', '', '', 0, '', '', 0, 0, 0),
(3, 0, 'picknice@mail.ru', '$2y$10$bG7SC.6QDUC9fcvp1WYwpu.p/jymaq2vsIvQjt8B05QZMMGNaEGiS', '', 'Nikolay', 1707684897, 1, '8112a8f45bebd4ce0fc28344c1dcebb0', 1707688497, '', '', '', 0, '', '', 0, 0, 0),
(4, 1, 'a_poklonsky@mail.ru', '$2y$10$P79D9DFmaNZGKyxKzAcdxuG.MugLBvUu6atC47/lfG3543bdB2O.a', '$2y$10$TCLYZrtdkrIfiToZvAQxZOu5cNUgEMyPyNsVLCOgZ44k5YMOvocOu', 'AntonPoklonsky', 1707685577, 1, 'c46cbd34678e743215f93c0407b9f6ab', 1707689177, '', '', '', 0, '', '', 0, 0, 0),
(5, 1, 'by.elena@yahoo.com', '$2y$10$kygtaDP3M9RzK/4lRrq4zOkvB2u4SL7.LBQ/Jw3buwGk7uZjnm4GK', '$2y$10$1M86eW8GFN9IZVGTf33rtOArYGU/QnpCZAo7BtGhtadx472ro1XM2', 'ElenaBaydina', 1707850904, 1, 'b76ba9cd19af64ecc4bb5488f5da67f0', 1707854504, '', '', '', 0, '', 'e795bee2c08614b8d7a13cefc9b51918.png', 0, 0, 0),
(6, 1, 'dariafedotova42@gmail.com', '$2y$10$Qqdz6QV/J4dS91qSTtwF/uvX/inEY/OxwQqNwT.GINYzytF/GI73e', '', 'Daria', 1710180781, 1, 'e618d0279e240e20acb61a8c58c8137f', 1710184381, '1290', 'аааааа', '123', 0, 'ааааа', '96426bf004b63beeb9a00f3227bce5e0.png', 0, 0, 0),
(7, 0, 'nikita.smirn2011@yandex.ru', '$2y$10$NUrW73I1pTjfWRFWZ7VKYO.Ag/K7Nxqc3a5BN0.xRrkNXzGR33/ZK', '', 'NikitaSmirnov', 1710335273, 1, 'e8124d87b28175fff47bc5cc01cddbde', 1710338873, '', '', '', 0, '', '', 0, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `calendar_constructor`
--
ALTER TABLE `calendar_constructor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `calendar_constructor`
--
ALTER TABLE `calendar_constructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
