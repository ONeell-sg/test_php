-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 15 2024 г., 08:57
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testphp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `date`, `comment`) VALUES
(1, 'Roud', '0000-00-00', 'it should work just fine...'),
(2, 'Richard', '0000-00-00', 'Wow thanks for the help parfait'),
(3, 'Dilan', '0000-00-00', 'Hopefully, this will answer all your questions'),
(4, 'Jack', '0000-00-00', 'Our goal is to get back all the countries'),
(5, 'Daniel', '0000-00-00', 'The first parameter specifies'),
(6, 'August', '0000-00-00', 'We can read information '),
(7, 'Roud', '0000-00-00', 'it should work just fine...'),
(8, 'Richard', '0000-00-00', 'Wow thanks for the help parfait'),
(9, 'Dilan', '0000-00-00', 'Hopefully, this will answer all your questions'),
(10, 'Jack', '0000-00-00', 'Our goal is to get back all the countries'),
(11, 'Daniel', '0000-00-00', 'The first parameter specifies'),
(12, 'August', '0000-00-00', 'We can read information ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
