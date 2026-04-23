-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 23 2026 г., 17:28
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
-- База данных: `restauracja`
--

-- --------------------------------------------------------

--
-- Структура таблицы `rest_klienci`
--

CREATE TABLE `rest_klienci` (
  `id_klient` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `numer_telefonu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Дамп данных таблицы `rest_klienci`
--

INSERT INTO `rest_klienci` (`id_klient`, `imie`, `nazwisko`, `numer_telefonu`) VALUES
(1, 'Jan', 'Kowalski', '111222333'),
(2, 'Anna', 'Nowak', '222333444'),
(3, 'Piotr', 'Zielinski', '333444555'),
(4, 'Maria', 'Wisniewska', '444555666'),
(5, 'Tomasz', 'Wojcik', '555666777'),
(6, 'Ewa', 'Kaminska', '666777888'),
(7, 'Adam', 'Lewandowski', '777888999'),
(8, 'Karolina', 'Dabrowska', '888999111'),
(9, 'Pawel', 'Kaczmarek', '999111222'),
(10, 'Magda', 'Mazur', '123456789'),
(11, 'Jan', 'Kowalski', '111222333'),
(12, 'Anna', 'Nowak', '222333444'),
(13, 'Piotr', 'Zielinski', '333444555'),
(14, 'Maria', 'Wisniewska', '444555666'),
(15, 'Tomasz', 'Wojcik', '555666777'),
(16, 'Ewa', 'Kaminska', '666777888'),
(17, 'Adam', 'Lewandowski', '777888999'),
(18, 'Karolina', 'Dabrowska', '888999111'),
(19, 'Pawel', 'Kaczmarek', '999111222'),
(20, 'Magda', 'Mazur', '123456789');

-- --------------------------------------------------------

--
-- Структура таблицы `rest_menu`
--

CREATE TABLE `rest_menu` (
  `id_pozycja` int(11) NOT NULL,
  `nazwa_pozycji` varchar(100) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL,
  `kategoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Дамп данных таблицы `rest_menu`
--

INSERT INTO `rest_menu` (`id_pozycja`, `nazwa_pozycji`, `cena`, `kategoria`) VALUES
(1, 'Pizza Margherita', 25.00, 'Pizza'),
(2, 'Pizza Pepperoni', 30.00, 'Pizza'),
(3, 'Burger Wolowy', 28.00, 'Burger'),
(4, 'Zupa Pomidorowa', 15.00, 'Zupa'),
(5, 'Salatka Grecka', 20.00, 'Salatka'),
(6, 'Deser Tiramisu', 18.00, 'Deser'),
(7, 'Burger Chicken', 26.00, 'Burger'),
(8, 'Rosol', 14.00, 'Zupa'),
(9, 'Pizza Capricciosa', 32.00, 'Pizza'),
(10, 'Lody', 12.00, 'Deser');

-- --------------------------------------------------------

--
-- Структура таблицы `rest_zamowienia`
--

CREATE TABLE `rest_zamowienia` (
  `id_zamowienie` int(11) NOT NULL,
  `id_klient` int(11) DEFAULT NULL,
  `id_pozycja` int(11) DEFAULT NULL,
  `data_zamowienia` datetime DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Дамп данных таблицы `rest_zamowienia`
--

INSERT INTO `rest_zamowienia` (`id_zamowienie`, `id_klient`, `id_pozycja`, `data_zamowienia`, `ilosc`) VALUES
(1, 1, 1, '2025-05-01 12:00:00', 2),
(2, 2, 3, '2025-05-01 13:00:00', 1),
(3, 3, 2, '2025-05-01 14:00:00', 3),
(4, 4, 5, '2025-05-02 15:00:00', 2),
(5, 5, 4, '2025-05-02 16:00:00', 1),
(6, 6, 6, '2025-05-03 17:00:00', 4),
(7, 7, 7, '2025-05-03 18:00:00', 2),
(8, 8, 8, '2025-05-03 19:00:00', 3),
(9, 9, 9, '2025-05-04 20:00:00', 1),
(10, 10, 10, '2025-05-04 21:00:00', 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `rest_klienci`
--
ALTER TABLE `rest_klienci`
  ADD PRIMARY KEY (`id_klient`);

--
-- Индексы таблицы `rest_menu`
--
ALTER TABLE `rest_menu`
  ADD PRIMARY KEY (`id_pozycja`);

--
-- Индексы таблицы `rest_zamowienia`
--
ALTER TABLE `rest_zamowienia`
  ADD PRIMARY KEY (`id_zamowienie`),
  ADD KEY `id_klient` (`id_klient`),
  ADD KEY `id_pozycja` (`id_pozycja`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `rest_klienci`
--
ALTER TABLE `rest_klienci`
  MODIFY `id_klient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `rest_menu`
--
ALTER TABLE `rest_menu`
  MODIFY `id_pozycja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `rest_zamowienia`
--
ALTER TABLE `rest_zamowienia`
  MODIFY `id_zamowienie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `rest_zamowienia`
--
ALTER TABLE `rest_zamowienia`
  ADD CONSTRAINT `rest_zamowienia_ibfk_1` FOREIGN KEY (`id_klient`) REFERENCES `rest_klienci` (`id_klient`),
  ADD CONSTRAINT `rest_zamowienia_ibfk_2` FOREIGN KEY (`id_pozycja`) REFERENCES `rest_menu` (`id_pozycja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
