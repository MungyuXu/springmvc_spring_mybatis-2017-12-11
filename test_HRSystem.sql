-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-12-20 08:10:36
-- 服务器版本： 5.5.48-log
-- PHP Version: 5.5.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_HRSystem`
--

-- --------------------------------------------------------

--
-- 表的结构 `eleave`
--

CREATE TABLE `eleave` (
  `id` int(10) UNSIGNED NOT NULL,
  `q_eno` int(10) NOT NULL,
  `q_ename` varchar(20) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `leave_date` date NOT NULL,
  `leave_to` varchar(20) NOT NULL,
  `leave_remark` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `eleave`
--

INSERT INTO `eleave` (`id`, `q_eno`, `q_ename`, `leave_type`, `leave_date`, `leave_to`, `leave_remark`) VALUES
(11, 1, '1', '1', '2017-12-13', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `employ`
--

CREATE TABLE `employ` (
  `id` int(11) NOT NULL,
  `eno` int(10) UNSIGNED NOT NULL,
  `ename` varchar(20) DEFAULT NULL,
  `egender` char(20) DEFAULT NULL,
  `ebdate` date DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `esection` varchar(20) DEFAULT NULL,
  `eposition` varchar(20) DEFAULT NULL,
  `etype` varchar(20) DEFAULT NULL,
  `efrom` varchar(20) DEFAULT NULL,
  `e_entrydate` date DEFAULT NULL,
  `eattenddate` date DEFAULT NULL,
  `pno` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `employ`
--

INSERT INTO `employ` (`id`, `eno`, `ename`, `egender`, `ebdate`, `eid`, `esection`, `eposition`, `etype`, `efrom`, `e_entrydate`, `eattenddate`, `pno`) VALUES
(2, 2, '马云', '男', '2017-12-01', 1, '养老院', '销售红烧肉铺', 'A', 'A', '2017-12-01', '2017-12-02', NULL),
(3, 3, '李彦宏', '男', '2017-12-09', 1, '卡布基诺', '销售红烧肉', 'A', 'A', '2017-12-30', '2017-12-29', NULL),
(4, 4, '周杰伦', '男', '2017-12-05', 1, '卡布基诺', '销售红烧肉', 'B', 'A', '2017-12-28', '2017-12-20', NULL),
(5, 5, '隔壁老王', '男', '2017-12-28', 1, '养猪场', '销售佛跳墙', 'A', 'A', '2017-12-07', '2017-12-04', NULL),
(6, 11, '蒋金宇', '男', '2017-12-08', 1, '养猪场', '销售红烧肉', 'A', 'A', '2017-12-22', '2017-12-15', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pmove`
--

CREATE TABLE `pmove` (
  `id` int(10) UNSIGNED NOT NULL,
  `q_eno` int(10) DEFAULT NULL,
  `q_start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `q_ename` varchar(20) DEFAULT NULL,
  `q_method` varchar(20) DEFAULT NULL,
  `pmove_position` varchar(20) DEFAULT NULL,
  `pmove_type` varchar(20) DEFAULT NULL,
  `pmove_cause` varchar(20) DEFAULT NULL,
  `pmove_date` date DEFAULT NULL,
  `egender` varchar(20) DEFAULT NULL,
  `eid` int(10) DEFAULT NULL,
  `esection` varchar(20) DEFAULT NULL,
  `eposition` varchar(20) DEFAULT NULL,
  `etype` varchar(20) DEFAULT NULL,
  `efrom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pmove`
--

INSERT INTO `pmove` (`id`, `q_eno`, `q_start`, `end`, `q_ename`, `q_method`, `pmove_position`, `pmove_type`, `pmove_cause`, `pmove_date`, `egender`, `eid`, `esection`, `eposition`, `etype`, `efrom`) VALUES
(2, 512, '2017-12-11', '2017-12-20', '566222', '升职', '542', '42', '42424', NULL, NULL, NULL, NULL, '24', NULL, NULL),
(3, 3, '2017-12-05', '2017-12-13', '带我飞', '升职', ' 小弟弟v', '多少', '的深V', NULL, NULL, NULL, NULL, '调查是', NULL, NULL),
(7, 7, '2017-12-11', '2017-12-11', '我我我我', '升职', '52', '52', '524', '2017-12-06', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 5, NULL, NULL, '隔壁老王', NULL, NULL, NULL, NULL, NULL, '女', 1, 'A部门', 'B', '正式员工', '校园招聘');

-- --------------------------------------------------------

--
-- 表的结构 `position1`
--

CREATE TABLE `position1` (
  `id` int(11) NOT NULL,
  `pno` int(11) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `ptype` varchar(20) DEFAULT NULL,
  `pnum` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `position1`
--

INSERT INTO `position1` (`id`, `pno`, `pname`, `ptype`, `pnum`) VALUES
(31, 1, '销售红烧肉', '管理', 2),
(32, 2, '销售佛跳墙', '销售', 2),
(33, 3, '无名厨师', '技术', 3),
(35, 87, '李豪杰', '管理', 1);

-- --------------------------------------------------------

--
-- 表的结构 `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `sno` int(10) UNSIGNED NOT NULL,
  `sname` varchar(20) NOT NULL,
  `stype` varchar(20) NOT NULL,
  `sphone` varchar(20) DEFAULT NULL,
  `sfax` varchar(20) DEFAULT NULL,
  `supper` varchar(20) DEFAULT NULL,
  `s_setdate` date DEFAULT NULL,
  `sdes` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `section`
--

INSERT INTO `section` (`id`, `sno`, `sname`, `stype`, `sphone`, `sfax`, `supper`, `s_setdate`, `sdes`) VALUES
(1, 1, '卡布基诺', '部门', '1', '1', 'A部门', '2017-12-01', '1'),
(2, 2, '红烧肉', '公司', '1', '1', 'A部门', '2017-12-01', '1'),
(3, 3, '佛跳墙', '部门', '1', '1', 'B部门', '2017-12-09', '1'),
(4, 4, '养老院', '部门', '1', '1', 'A部门', '2017-12-09', '1'),
(5, 5, '幼儿园', '公司', '1', '1', 'B部门', '2017-12-07', ''),
(6, 10, '不能随便起名字', '公司', '1', '1', 'A部门', '2017-12-14', '1');

-- --------------------------------------------------------

--
-- 表的结构 `smove`
--

CREATE TABLE `smove` (
  `id` int(11) NOT NULL,
  `eno` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `moveCause` varchar(20) NOT NULL DEFAULT '',
  `moveDate` date DEFAULT NULL,
  `oldPosition` varchar(20) DEFAULT NULL,
  `movePosition` varchar(20) DEFAULT NULL,
  `moveType` varchar(20) DEFAULT NULL,
  `remark` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `smove`
--

INSERT INTO `smove` (`id`, `eno`, `name`, `moveCause`, `moveDate`, `oldPosition`, `movePosition`, `moveType`, `remark`) VALUES
(6, 5, '隔壁老王', '喜欢猪', '2017-12-28', '佛跳墙', '养猪场', '主动调转', NULL),
(7, 2, '马云', '养老', '2017-12-13', '卡布基诺', '养老院', '主动调转', '！'),
(8, 11, '蒋金宇', '喜欢猪', '2017-12-30', '卡布基诺', '养猪场', '主动调转', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eleave`
--
ALTER TABLE `eleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employ`
--
ALTER TABLE `employ`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pmove`
--
ALTER TABLE `pmove`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position1`
--
ALTER TABLE `position1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smove`
--
ALTER TABLE `smove`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `eleave`
--
ALTER TABLE `eleave`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `employ`
--
ALTER TABLE `employ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `pmove`
--
ALTER TABLE `pmove`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `position1`
--
ALTER TABLE `position1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用表AUTO_INCREMENT `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `smove`
--
ALTER TABLE `smove`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
