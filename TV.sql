-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 27 2019 г., 16:59
-- Версия сервера: 5.6.37
-- Версия PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `TV`
--

-- --------------------------------------------------------

--
-- Структура таблицы `DeleteAll`
--

CREATE TABLE `DeleteAll` (
  `id` int(11) NOT NULL,
  `item` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Все найденные значения item в строке будут удалены';

--
-- Дамп данных таблицы `DeleteAll`
--

INSERT INTO `DeleteAll` (`id`, `item`) VALUES
(1, 'акпараттык-сараптамалык багдарламасы'),
(2, 'Программа'),
(3, 'Ток-шоу'),
(4, 'багдарламасы'),
(5, ' 0+'),
(6, ' 6+'),
(7, ' 12+'),
(8, ' 16+'),
(9, ' 18+'),
(10, 'Итоговая программа'),
(11, '. Третий день'),
(12, '. Четвёртый день'),
(13, 'Тележурнал '),
(14, '. 1/8 финала'),
(15, '. 1/2 финала'),
(16, '. 1/4 финала'),
(17, '(16+)'),
(18, '(ОТВ,2018)'),
(19, '(12+)'),
(20, '(ОТВ, 2018)'),
(21, '. Прямая трансляция'),
(22, '(2018, ОТВ)'),
(23, 'Информационно-развлекательная программа'),
(24, '(0+)'),
(25, '. Период 3'),
(26, '. Период 2'),
(27, '. Период 1'),
(28, '(ОТВ,2017)'),
(29, '(6+)'),
(30, '(каз/рус)'),
(31, 'Премьера. '),
(32, '(Сезон 2)'),
(33, 'с Эдуардом Бендерским'),
(34, 'с Евгением Полонским'),
(35, '(Сезон2)'),
(36, '()'),
(37, '(каз.)'),
(38, '(рус.)'),
(39, 'Азiл - кулкi'),
(40, '(каз)'),
(41, 'с м.Оспановым'),
(42, '(повтор)'),
(43, 'Кулинарная программа'),
(44, '(повтор вечернего выпуска)'),
(45, 'Премьера!'),
(46, 'Скетчком'),
(47, 'багдарлама'),
(48, 'тележоба'),
(49, 'деректi фильмi'),
(50, '3 сезон'),
(51, 'Премьера '),
(52, 'Ток шоу'),
(53, '(каз.яз)'),
(54, 'с м. Оспановым'),
(55, 'с Эдом Стаффордом'),
(56, 'с Сержем Марковичем'),
(57, 'док.цикл'),
(58, 'деректi фильм'),
(59, '(6 сезон)'),
(60, 'Тусаукесер!'),
(61, '(кайталау)'),
(62, 'Жана маусым!'),
(63, 'реалити-шоу'),
(64, 'Казакстан эстрада жулдыздарынын ан-шашуы'),
(65, 'ток-шоу'),
(66, '(ОТВ,2019)'),
(67, '(2019,ОТВ)'),
(68, '(ОТВ, 2019)'),
(69, '(2019, ОТВ)'),
(70, '(новый сезон)'),
(71, 'Трансляция из Швейцарии'),
(73, '1/8 финала'),
(74, '1/4 финала'),
(75, '1/2 финала'),
(76, 'Трансляция из Красноярска'),
(77, 'с Сергеем Бешенцевым'),
(78, 'с Робсоном Грином'),
(79, 'с Сергеем Астаховым'),
(80, 'с Оливией АндриакО'),
(81, 'с Александром Борисовым'),
(82, '. Тiкелей эфир');

-- --------------------------------------------------------

--
-- Структура таблицы `DeleteAllExcept`
--

CREATE TABLE `DeleteAllExcept` (
  `id` int(11) NOT NULL,
  `item` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Оставляемые фразы (прочее в строке будет удалено)';

--
-- Дамп данных таблицы `DeleteAllExcept`
--

INSERT INTO `DeleteAllExcept` (`id`, `item`) VALUES
(1, 'Профессиональный бокс'),
(2, 'Смешанные единоборства'),
(3, 'Кино в деталях'),
(4, 'Радзишевский и К'),
(5, '\"20:30\"'),
(6, '\"7 кун\"'),
(7, '\"X factor\"'),
(8, '\"ГЛАВНАЯ РЕДАКЦИЯ\"'),
(9, '\"Жди меня\"'),
(10, '\"Любимые актеры\"'),
(11, '\"ПОРТРЕТ НЕДЕЛИ\"'),
(12, '\"Я стесняюсь своего тела\"'),
(13, '\"Битва экстрасенсов\"'),
(14, '\"Вопрос времени\"'),
(15, 'В гостях у Митрофановны'),
(16, 'Все на Матч!'),
(17, 'Галыгин.ru'),
(18, 'Дела семейные'),
(19, 'Искры камина'),
(20, 'Истории в деталях'),
(21, 'История советской эстрады'),
(22, 'Нахлыст'),
(23, 'Особенности охоты'),
(24, 'ОТВдетям. Мультфильмы'),
(25, 'Пешком...'),
(26, 'Сати. Нескучная классика'),
(27, 'Сквозной эфир'),
(28, 'Съешьте это немедленно!'),
(29, 'Дaчныe радoсти'),
(30, 'Звездное выживание'),
(31, 'рыболовная лига'),
(32, 'Рыболовные экспедиции'),
(33, 'Зимняя рыбалка'),
(34, 'Охота на оленей'),
(35, '\"Избранное за неделю\"'),
(36, 'Горные лыжи. Кубок мира'),
(37, 'Прыжки на лыжах с трамплина. Кубок мира'),
(38, 'Биатлон. Кубок мира'),
(39, '\"В погоне за историей\"'),
(40, 'Санный спорт. Кубок мира'),
(41, 'Лыжные гонки. Кубок мира'),
(42, 'Уральские пельмени'),
(43, 'Прыжки с трамплина. Кубок мира'),
(44, '\"Как в ресторане\"'),
(45, '\"Манзара\"'),
(46, '\"Оныта алмыйм\"'),
(47, '\"Кел, келiнiм\"'),
(48, '\"О самом главном\"'),
(49, '\"60 Минут\"'),
(50, 'Горная охота'),
(51, '\"Непутевые заметки\"'),
(52, 'Лыжное двоеборье. Чемпионат мира'),
(53, 'Лёгкая атлетика. Чемпионат Европы'),
(54, 'Битва ресторанов'),
(55, 'Биатлон. Чемпионат Европы'),
(68, 'Биатлон. Чемпионат мира'),
(69, 'Спортивная гимнастика. Кубок мира'),
(70, 'Кёрлинг. Чемпионат мира'),
(71, '\"Попкорн\"');

-- --------------------------------------------------------

--
-- Структура таблицы `FindReplace`
--

CREATE TABLE `FindReplace` (
  `id` int(11) NOT NULL,
  `find_what` text NOT NULL,
  `replace_with` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `FindReplace`
--

INSERT INTO `FindReplace` (`id`, `find_what`, `replace_with`) VALUES
(1, 'Охота в Восточной Пруссии', 'В Восточной Пруссии'),
(2, 'Зимняя рыбалка в Приволжье', 'Зимняя рыбалка'),
(3, 'Возвращение Мухтара - 2', 'Возвращение Мухтара-2'),
(4, 'Культ//Туризм', 'КультТуризм'),
(5, 'ВРЕМЯ НОВОСТЕЙ', 'Время новостей'),
(6, ' ХК ', ' '),
(7, 'Ивановы-Ивановы комедийный сериал', 'Ивановы-Ивановы'),
(8, 'Шоу \"Уральских пельменей\"', 'Уральские пельмени'),
(9, 'П@утina', 'Паутина'),
(10, 'Äyel siri…', 'Аyel siri'),
(11, 'Подводная жизнь дельты Волги', 'Подводная жизнь Волги'),
(12, '\"ДНЕВНИКИ ПУТЕШЕСТВЕННИКА\"', '\"Дневники путешественника\"'),
(13, '\"BEAUTY DAY\"', '\"Beauty day\"'),
(14, 'лос-анджелес', 'Лос-Анджелес'),
(15, 'Коркем – фильм', 'Коркем–фильм'),
(16, ' :', ':'),
(17, 'ЕСТIМЕГЕН ЕЛДЕ КОП', 'Естiмеген елде коп'),
(18, 'BACKSTAGE', 'Backstage'),
(19, 'АЗIЛ СТУДИО', 'Азiл студио'),
(20, 'Культ//туризм', 'КультТуризм'),
(21, '33 квадратных метра. Дачные истории', '33 квадратных метра'),
(22, 'Охотничья и рыболовная кухня', 'Кухня');

-- --------------------------------------------------------

--
-- Структура таблицы `RealNames`
--

CREATE TABLE `RealNames` (
  `id` int(11) NOT NULL,
  `item` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Имена собственные';

--
-- Дамп данных таблицы `RealNames`
--

INSERT INTO `RealNames` (`id`, `item`) VALUES
(1, 'ивановы'),
(2, 'джерри'),
(3, 'чаппи'),
(4, 'боб'),
(5, 'россии'),
(6, 'россия'),
(7, 'магикян'),
(8, 'ургант'),
(9, 'сюткин'),
(10, 'astana'),
(11, 'ричер'),
(12, 'адель'),
(13, 'патриарших'),
(14, 'федора'),
(15, 'строгова'),
(16, 'артамоновой'),
(17, 'ольгой'),
(18, 'простоквашино'),
(19, 'гуд'),
(20, 'казахстан'),
(21, 'машков'),
(22, 'америке'),
(23, 'торнберри'),
(24, 'лавровой'),
(25, 'федя'),
(26, 'казакстан'),
(27, 'мадагаскар'),
(28, 'дулиттл'),
(29, 'бангкок'),
(30, 'холмс'),
(31, 'чаннын'),
(32, 'вегас'),
(33, 'владимир'),
(34, 'высоцкого'),
(35, 'поттер'),
(36, 'лещенко'),
(37, 'никитич'),
(38, 'горыныч'),
(39, 'добрыня'),
(40, 'муромец'),
(41, 'бастилии'),
(42, 'пореченков'),
(43, 'африке'),
(44, 'тайланд'),
(45, 'алматы'),
(46, 'карибского'),
(47, 'нарнии'),
(48, 'каспиан'),
(49, 'персии'),
(50, 'лондон');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `DeleteAll`
--
ALTER TABLE `DeleteAll`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `DeleteAllExcept`
--
ALTER TABLE `DeleteAllExcept`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `FindReplace`
--
ALTER TABLE `FindReplace`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `RealNames`
--
ALTER TABLE `RealNames`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `DeleteAll`
--
ALTER TABLE `DeleteAll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT для таблицы `DeleteAllExcept`
--
ALTER TABLE `DeleteAllExcept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT для таблицы `FindReplace`
--
ALTER TABLE `FindReplace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `RealNames`
--
ALTER TABLE `RealNames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
