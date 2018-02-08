-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018 年 2 月 08 日 15:16
-- サーバのバージョン： 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photoBucket_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `error` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `tag01` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tag02` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `photo`
--

INSERT INTO `photo` (`id`, `url`, `title`, `name`, `type`, `error`, `size`, `tag01`, `tag02`, `time`) VALUES
(31, 'php/201801251621321303417996.jpg', 'php', 'IMG_9525.jpeg', 'image/jpeg', 0, 53815, '', '', '2018-01-26 00:21:32'),
(32, 'php/20180125162359580006639.jpg', 'php', 'P7040689.jpeg', 'image/jpeg', 0, 50836, '', '', '2018-01-26 00:23:59'),
(33, 'php/20180125162721308396804.jpg', 'php', 'P7040689.jpeg', 'image/jpeg', 0, 50836, 'テスト', '', '2018-01-26 00:27:21'),
(34, 'php/20180125162756781751910.jpg', 'php', 'IMG_7882.jpeg', 'image/jpeg', 0, 110380, '', '', '2018-01-26 00:27:56'),
(35, 'php/2018012517132068152514.jpg', 'php', 'IMG_4657.jpeg', 'image/jpeg', 0, 57507, '', '', '2018-01-26 01:13:20'),
(36, 'php/201801251720081036052695.jpg', 'php', 'IMG_0707.jpeg', 'image/jpeg', 0, 158341, '', '', '2018-01-26 01:20:08'),
(37, 'php/201801251723411200119293.jpg', 'php', 'IMG_6.jpg', 'image/jpeg', 0, 73903, '', '', '2018-01-26 01:23:41'),
(38, 'php/201801251723561333967958.jpg', 'php', 'IMG_0175.jpeg', 'image/jpeg', 0, 36773, '', '', '2018-01-26 01:23:56'),
(39, 'php/20180125172454286678135.jpg', 'php', 'IMG_4274.jpeg', 'image/jpeg', 0, 139852, '', '', '2018-01-26 01:24:54'),
(40, 'php/201801251726011958851826.jpg', 'php', 'IMG_0379.jpeg', 'image/jpeg', 0, 55992, '', '', '2018-01-26 01:26:01'),
(41, 'abc/201801251730131995868341.jpg', 'abc', 'aosora-10.jpg', 'image/jpeg', 0, 130825, '夏の思い出', '', '2018-01-26 01:30:13'),
(42, 'abc/201801251730181661151858.jpg', 'abc', 'DSC05654.jpg', 'image/jpeg', 0, 152626, '夏の思い出', '', '2018-01-26 01:30:18'),
(43, 'abc/20180125173025347344892.jpg', 'abc', 'IMG_6.jpg', 'image/jpeg', 0, 73903, '夏の思い出', '', '2018-01-26 01:30:25'),
(44, 'abc/20180125173029143477254.jpg', 'abc', 'IMG_0175.jpeg', 'image/jpeg', 0, 36773, 'かわいい', '', '2018-01-26 01:30:29'),
(45, 'abc/201801251730341518826047.jpg', 'abc', 'IMG_0379.jpeg', 'image/jpeg', 0, 55992, '春の思い出', '', '2018-01-26 01:30:34'),
(46, 'abc/20180125173038932250175.jpg', 'abc', 'IMG_0451.jpeg', 'image/jpeg', 0, 127993, '春の思い出', '', '2018-01-26 01:30:38'),
(47, 'abc/201801251731021510412735.jpg', 'abc', 'IMG_1486.jpeg', 'image/jpeg', 0, 79744, '春の思い出', '', '2018-01-26 01:31:02'),
(48, 'abc/20180125173107112343889.jpg', 'abc', 'IMG_2532.jpg', 'image/jpeg', 0, 53618, '春の思い出', '', '2018-01-26 01:31:07'),
(49, 'abc/20180125173112160657106.jpg', 'abc', 'IMG_3778.jpg', 'image/jpeg', 0, 61977, '', '', '2018-01-26 01:31:12'),
(50, 'abc/201801251731171029576187.jpg', 'abc', 'IMG_4151.jpeg', 'image/jpeg', 0, 64081, '', '', '2018-01-26 01:31:17'),
(51, 'abc/20180125173121169804703.jpg', 'abc', 'IMG_4274.jpeg', 'image/jpeg', 0, 139852, '', '', '2018-01-26 01:31:21'),
(52, 'abc/20180125173128568818417.jpg', 'abc', 'IMG_4290.jpeg', 'image/jpeg', 0, 66384, '', '', '2018-01-26 01:31:28'),
(53, 'abc/20180125173132591587568.jpg', 'abc', 'IMG_4657.jpeg', 'image/jpeg', 0, 57507, 'かわいい', '', '2018-01-26 01:31:32'),
(54, 'abc/20180125173138560506144.jpg', 'abc', 'IMG_4664.jpeg', 'image/jpeg', 0, 55245, '春の思い出', '', '2018-01-26 01:31:38'),
(55, 'abc/20180125173142170654119.jpg', 'abc', 'IMG_4709.jpeg', 'image/jpeg', 0, 105250, '', '', '2018-01-26 01:31:42'),
(56, 'abc/2018012517314760881480.jpg', 'abc', 'IMG_4866.jpeg', 'image/jpeg', 0, 59164, 'お菓子', '', '2018-01-26 01:31:47'),
(57, 'abc/20180125173151573269505.jpg', 'abc', 'IMG_4874.jpeg', 'image/jpeg', 0, 60392, '', '', '2018-01-26 01:31:51'),
(58, 'abc/20180125173155500272896.jpg', 'abc', 'IMG_4878.jpeg', 'image/jpeg', 0, 37037, '', '', '2018-01-26 01:31:55'),
(59, 'abc/201801251732021515151671.jpg', 'abc', 'IMG_4944.jpg', 'image/jpeg', 0, 102474, '', '', '2018-01-26 01:32:02'),
(60, 'abc/201801251732121419325872.jpg', 'abc', 'IMG_5333.jpeg', 'image/jpeg', 0, 104623, '冬の思い出', '', '2018-01-26 01:32:12'),
(61, 'abc/20180125173226815853870.jpg', 'abc', 'IMG_5729.jpg', 'image/jpeg', 0, 32518, '', '', '2018-01-26 01:32:26'),
(62, 'abc/2018012517323430465466.jpg', 'abc', 'IMG_4709.jpeg', 'image/jpeg', 0, 105250, '', '', '2018-01-26 01:32:34'),
(63, 'abc/201801251732451420931245.jpg', 'abc', 'IMG_5868.jpeg', 'image/jpeg', 0, 34445, '夜景', '', '2018-01-26 01:32:45'),
(64, 'abc/20180125173252530989294.jpg', 'abc', 'IMG_6309.jpg', 'image/jpeg', 0, 37425, '', '', '2018-01-26 01:32:52'),
(65, 'abc/201801251733011354631972.jpg', 'abc', 'IMG_7767.jpg', 'image/jpeg', 0, 36131, '冬の思い出', '', '2018-01-26 01:33:01'),
(66, 'abc/201801251733071362634753.jpg', 'abc', 'IMG_7882.jpeg', 'image/jpeg', 0, 110380, 'かわいい', '', '2018-01-26 01:33:07'),
(67, 'abc/201801251733191612898018.jpg', 'abc', 'IMG_8405.jpg', 'image/jpeg', 0, 35655, '冬の思い出', '', '2018-01-26 01:33:19'),
(68, 'abc/20180125173335329830977.jpg', 'abc', 'IMG_8830.JPG', 'image/jpeg', 0, 37501, '', '', '2018-01-26 01:33:35'),
(69, 'abc/201801251733421556299258.jpg', 'abc', 'IMG_9162.JPG', 'image/jpeg', 0, 68047, '', '', '2018-01-26 01:33:42'),
(70, 'abc/201801251733471802462621.jpg', 'abc', 'IMG_9525.jpeg', 'image/jpeg', 0, 53815, '', '', '2018-01-26 01:33:47'),
(71, 'abc/20180125173352511247082.jpg', 'abc', 'P7020001.jpeg', 'image/jpeg', 0, 80293, '絶景', '', '2018-01-26 01:33:52'),
(72, 'abc/201801251734021825191034.jpg', 'abc', 'P7040689.jpeg', 'image/jpeg', 0, 50836, '', '', '2018-01-26 01:34:02'),
(73, 'abc/201801251734091199760705.jpg', 'abc', 'P7220378.jpeg', 'image/jpeg', 0, 42625, 'かわいい', '', '2018-01-26 01:34:09'),
(74, 'abc/201801251734161898836368.jpg', 'abc', 'P7238861.jpeg', 'image/jpeg', 0, 43953, '海', '', '2018-01-26 01:34:16'),
(75, 'abc/201801251736241488903979.jpg', 'abc', 'aosora-10.jpg', 'image/jpeg', 0, 130825, '', '', '2018-01-26 01:36:24'),
(76, 'abc/201801251736351921652061.jpg', 'abc', 'IMG_0707.jpeg', 'image/jpeg', 0, 158341, '', '', '2018-01-26 01:36:35'),
(77, 'abc/201801251738271078647578.jpg', 'abc', 'IMG_0379.jpeg', 'image/jpeg', 0, 55992, '', '', '2018-01-26 01:38:27'),
(78, 'abc/201801251744302099163105.jpg', 'abc', 'IMG_6.jpg', 'image/jpeg', 0, 73903, '', '', '2018-01-26 01:44:30'),
(79, 'abc/20180125174657887053902.jpg', 'abc', 'IMG_0451.jpeg', 'image/jpeg', 0, 127993, '', '', '2018-01-26 01:46:57'),
(80, 'abc/20180125174721288777052.jpg', 'abc', 'IMG_4274.jpeg', 'image/jpeg', 0, 139852, 'おしゃれ', '', '2018-01-26 01:47:21'),
(81, 'test/201801261208091810907820.jpg', 'test', 'aosora-10.jpg', 'image/jpeg', 0, 130825, '', '', '2018-01-26 20:08:09'),
(82, 'test/201801261208131273703429.jpg', 'test', 'DSC05654.jpg', 'image/jpeg', 0, 152626, 'tag01', '', '2018-01-26 20:08:13'),
(83, 'test/201801261208181250218015.jpg', 'test', 'gari_oshare.jpg', 'image/jpeg', 0, 98949, '', '', '2018-01-26 20:08:18'),
(84, 'test/201801261208221970781613.jpg', 'test', 'IMG_6.jpg', 'image/jpeg', 0, 73903, 'tag02', '', '2018-01-26 20:08:22'),
(85, 'test/20180126120826972865816.jpg', 'test', 'IMG_0175.jpeg', 'image/jpeg', 0, 36773, 'tag03', '', '2018-01-26 20:08:26'),
(86, 'test/2018012612083074458422.jpg', 'test', 'IMG_0379.jpeg', 'image/jpeg', 0, 55992, '', '', '2018-01-26 20:08:30'),
(87, 'test/201801261208352117780767.jpg', 'test', 'IMG_0451.jpeg', 'image/jpeg', 0, 127993, '', '', '2018-01-26 20:08:35'),
(88, 'test/20180126120840947324899.jpg', 'test', 'IMG_0707.jpeg', 'image/jpeg', 0, 158341, '', '', '2018-01-26 20:08:40'),
(89, 'test/20180126120845765815867.jpg', 'test', 'IMG_1486.jpeg', 'image/jpeg', 0, 79744, '', '', '2018-01-26 20:08:45'),
(90, 'test/20180126120849172156831.jpg', 'test', 'IMG_2532.jpg', 'image/jpeg', 0, 53618, '', '', '2018-01-26 20:08:49'),
(91, 'abc/20180126131443158089497.jpg', 'abc', 'image3.jpg', 'image/jpeg', 0, 405569, '', '', '2018-01-26 21:14:43'),
(92, 'abc/20180126131450943030387.jpg', 'abc', 'og_image.jpg', 'image/jpeg', 0, 306748, '', '', '2018-01-26 21:14:50'),
(97, 'テスト/201801271010481220654606.jpg', 'テスト', 'aosora-10.jpg', 'image/jpeg', 0, 130825, '', '', '2018-01-27 18:10:48'),
(98, 'テスト/20180127101053594424823.jpg', 'テスト', 'DSC05654.jpg', 'image/jpeg', 0, 152626, 'aaa', '', '2018-01-27 18:10:53'),
(99, 'テスト/201801271010571345179632.jpg', 'テスト', 'gari_oshare.jpg', 'image/jpeg', 0, 98949, '', '', '2018-01-27 18:10:57'),
(100, 'テスト/20180127101102287422611.jpg', 'テスト', 'IMG_6.jpg', 'image/jpeg', 0, 73903, '', '', '2018-01-27 18:11:02'),
(101, 'テスト/20180127101107518081659.jpg', 'テスト', 'IMG_0175.jpeg', 'image/jpeg', 0, 36773, '', '', '2018-01-27 18:11:07'),
(102, 'テスト/201801271011101067421237.jpg', 'テスト', 'IMG_0379.jpeg', 'image/jpeg', 0, 55992, '', '', '2018-01-27 18:11:10'),
(103, 'テスト/20180127101114971739341.jpg', 'テスト', 'IMG_0451.jpeg', 'image/jpeg', 0, 127993, '', '', '2018-01-27 18:11:14'),
(104, 'テスト/201801271011201583760081.jpg', 'テスト', 'IMG_0707.jpeg', 'image/jpeg', 0, 158341, '', '', '2018-01-27 18:11:20'),
(105, 'テスト/20180127101124176711990.jpg', 'テスト', 'IMG_1116.jpeg', 'image/jpeg', 0, 73810, '', '', '2018-01-27 18:11:24'),
(106, 'テスト/201801271011291871373663.jpg', 'テスト', 'IMG_1486.jpeg', 'image/jpeg', 0, 79744, '', '', '2018-01-27 18:11:29'),
(107, 'テスト/20180127101435632432143.jpg', 'テスト', 'IMG_3778.jpg', 'image/jpeg', 0, 61977, '', '', '2018-01-27 18:14:35'),
(108, 'テスト/201801271014531858052542.jpg', 'テスト', 'IMG_4151.jpeg', 'image/jpeg', 0, 64081, '', '', '2018-01-27 18:14:53'),
(109, 'テスト/201801271045391844296659.jpg', 'テスト', 'IMG_5918.jpg', 'image/jpeg', 0, 28552, '', '', '2018-01-27 18:45:39'),
(110, 'テスト/20180127104539434049303.jpg', 'テスト', 'IMG_6309.jpg', 'image/jpeg', 0, 37425, '', '', '2018-01-27 18:45:39'),
(111, 'abc/20180127134708765010626.jpg', 'abc', 'IMG_4709.jpeg', 'image/jpeg', 0, 105250, '', '', '2018-01-27 21:47:08'),
(112, 'abc/201801271409591723427129.jpg', 'abc', 'IMG_5333.jpeg', 'image/jpeg', 0, 104623, '', '', '2018-01-27 22:09:59'),
(113, 'abc/20180127140959614776247.jpg', 'abc', 'IMG_5729.jpg', 'image/jpeg', 0, 32518, '', '', '2018-01-27 22:09:59'),
(114, 'abc/201801271410361783235366.jpg', 'abc', 'IMG_4866.jpeg', 'image/jpeg', 0, 59164, '', '', '2018-01-27 22:10:36'),
(115, 'abc/201801271410361049289182.jpg', 'abc', 'IMG_4874.jpeg', 'image/jpeg', 0, 60392, '', '', '2018-01-27 22:10:36'),
(116, 'abc/20180127141119377360326.jpg', 'abc', 'IMG_8830.JPG', 'image/jpeg', 0, 37501, '', '', '2018-01-27 22:11:19'),
(117, 'abc/201801271414311288976652.jpg', 'abc', 'IMG_4878.jpeg', 'image/jpeg', 0, 37037, '', '', '2018-01-27 22:14:31'),
(118, 'abc/201801271415141503079448.jpg', 'abc', 'IMG_4866.jpeg', 'image/jpeg', 0, 59164, '', '', '2018-01-27 22:15:14'),
(119, 'abc/201801271419301355283872.jpg', 'abc', 'P7040689.jpeg', 'image/jpeg', 0, 50836, '', '', '2018-01-27 22:19:30'),
(120, 'abc/20180127142131315222324.jpg', 'abc', 'P7040760.jpeg', 'image/jpeg', 0, 74534, '', '', '2018-01-27 22:21:31'),
(121, 'abc/20180127142217300684227.jpg', 'abc', 'P7238861.jpeg', 'image/jpeg', 0, 43953, 'tagです', '', '2018-01-27 22:22:17'),
(122, 'abc/201801271422581577863493.jpg', 'abc', 'IMG_9525.jpeg', 'image/jpeg', 0, 53815, '雑貨', '', '2018-01-27 22:22:58'),
(123, 'abc/201801271423171960182193.jpg', 'abc', 'P7020001.jpeg', 'image/jpeg', 0, 80293, '', '', '2018-01-27 22:23:17'),
(124, 'abc/20180127142357559339167.jpg', 'abc', 'IMG_7767.jpg', 'image/jpeg', 0, 36131, '', '', '2018-01-27 22:23:57'),
(125, 'abc/201801271427021549539149.jpg', 'abc', 'gari_oshare.jpg', 'image/jpeg', 0, 98949, '', '', '2018-01-27 22:27:02'),
(126, 'abc/20180127142839425290516.jpg', 'abc', 'IMG_0175.jpeg', 'image/jpeg', 0, 36773, '', '', '2018-01-27 22:28:39'),
(127, 'abc/20180127143045860104576.jpg', 'abc', 'IMG_0175.jpeg', 'image/jpeg', 0, 36773, 'かわいい', '', '2018-01-27 22:30:45'),
(128, 'abc/20180127143102344627760.jpg', 'abc', 'IMG_0379.jpeg', 'image/jpeg', 0, 55992, '', '', '2018-01-27 22:31:02'),
(129, 'abc/201801271434451595791323.jpg', 'abc', 'IMG_4866.jpeg', 'image/jpeg', 0, 59164, '', '', '2018-01-27 22:34:45'),
(130, 'abc/201801271434591467480447.jpg', 'abc', 'IMG_4151.jpeg', 'image/jpeg', 0, 64081, '', '', '2018-01-27 22:34:59'),
(131, 'abc/20180127143656314679901.jpg', 'abc', 'IMG_4657.jpeg', 'image/jpeg', 0, 57507, '', '', '2018-01-27 22:36:56'),
(132, 'abc/201801271439211930452666.jpg', 'abc', 'IMG_1116.jpeg', 'image/jpeg', 0, 73810, '', '', '2018-01-27 22:39:21'),
(133, 'abc/201801311303192042748417.jpg', 'abc', 'IMG_7882.jpeg', 'image/jpeg', 0, 110380, '', '', '2018-01-31 21:03:19'),
(134, 'abc/20180131130319612216037.jpg', 'abc', 'IMG_8405.jpg', 'image/jpeg', 0, 35655, '', '', '2018-01-31 21:03:19'),
(135, 'abc/20180131130423455608547.jpg', 'abc', 'IMG_9525.jpeg', 'image/jpeg', 0, 53815, '', '', '2018-01-31 21:04:23'),
(136, 'abc/20180131130423524747854.jpg', 'abc', 'P7040689.jpeg', 'image/jpeg', 0, 50836, 'かわいい', '', '2018-01-31 21:04:23'),
(137, 'abc/20180203105644262435221.jpg', 'abc', 'IMG_8830.JPG', 'image/jpeg', 0, 37501, '', '', '2018-02-03 18:56:44'),
(138, 'テスト/201802031057042111076279.jpg', 'テスト', 'IMG_8830.JPG', 'image/jpeg', 0, 37501, '', '', '2018-02-03 18:57:04'),
(139, 'php/20180207145143645696119.jpg', 'php', 'IMG_4878.jpeg', 'image/jpeg', 0, 37037, '夏の思い出', '', '2018-02-07 22:51:43'),
(140, 'php/20180207145555638983055.jpg', 'php', 'P7238861.jpeg', 'image/jpeg', 0, 43953, '', '', '2018-02-07 22:55:55'),
(141, 'php/20180207145606107817734.jpg', 'php', 'IMG_4664.jpeg', 'image/jpeg', 0, 55245, 'tag02', '', '2018-02-07 22:56:06'),
(142, 'php/20180207145606257279060.jpg', 'php', 'IMG_4709.jpeg', 'image/jpeg', 0, 105250, '', '', '2018-02-07 22:56:06'),
(143, 'php/201802071457121427318319.jpg', 'php', 'IMG_4866.jpeg', 'image/jpeg', 0, 59164, 'tag01', '', '2018-02-07 22:57:12');

-- --------------------------------------------------------

--
-- テーブルの構造 `title_table`
--

CREATE TABLE `title_table` (
  `id` int(11) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manager_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `title_table`
--

INSERT INTO `title_table` (`id`, `title`, `password`, `manager_flg`, `life_flg`) VALUES
(1, 'test', 'test', 0, 0),
(3, 'test2', 'test2', 0, 0),
(4, 'manager', 'manager', 1, 0),
(5, 'dead', 'dead', 0, 1),
(6, 'abc', 'abc', 0, 0),
(7, 'おためし', 'おためし', 0, 0),
(8, 'テスト', 'テスト', 0, 0),
(9, 'php', 'php', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_table`
--
ALTER TABLE `title_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `title_table`
--
ALTER TABLE `title_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
