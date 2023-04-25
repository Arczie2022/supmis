-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2021 at 07:34 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supmisdbv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE `tblaccount` (
  `accountID` int(11) NOT NULL,
  `accountUsername` varchar(20) DEFAULT NULL,
  `accountPassword` varchar(255) DEFAULT NULL,
  `accountName` varchar(100) DEFAULT NULL,
  `accountPosition` varchar(150) DEFAULT NULL,
  `levelID` int(11) DEFAULT NULL,
  `officeID` int(11) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccount`
--

INSERT INTO `tblaccount` (`accountID`, `accountUsername`, `accountPassword`, `accountName`, `accountPosition`, `levelID`, `officeID`, `DateCreated`, `no`) VALUES
(1, '0001', '$2y$10$YfV3e.DXzAzuzQuvsfLDcuqzFds8ZgS6kpzLgDCMMyL6ogc3U7xz.', 'Rusty G. Abanto', 'SUC PRESIDENT III', 7, 1, '2020-08-26 07:54:01', 523),
(2, '0002', '$2y$10$h2E6Xfd/orbDsf2u0GK6AOljmZVf96PPSEGLLG9Up8BrWCbttNBjW', 'Ruben J. Tumaneng Jr.', 'BOARD SECRETARY V', 7, 2, '2020-08-26 07:54:01', 0),
(3, '0003', '$2y$10$BQyNZ9x3GcxFRoSOPMSwKOGwLUiV2ydQ7dv6mJFB7xfgPHzyTRXV2', 'Manolo A. Carbonell', 'CHIEF ADMINISTRATIVE OFFICER', 7, 6, '2020-08-26 07:54:01', 0),
(4, '0004', '$2y$10$UEWjZ6/Pqktio.8rg0IDhOu4nJG1GYYn/y3h2dRSE07W2f.a0lbQ.', 'Madelon B. Lee', 'ACCOUNTANT III', 6, 24, '2020-08-26 07:54:01', 523),
(5, '0005', '$2y$10$LOyWvN7S6RqdSCUwXi5KiOR2dwn6lhjMMsAQLwbxvroHPhq0HXfoe', 'Nelia O Llena', 'ENGINEER III', 7, 0, '2020-08-26 07:54:01', 0),
(6, '0006', '$2y$10$ryXCi.Dmu78lSa78P7Kf3OfN3AddWsLgFsWXeW6Uf8OX0snihN5Ia', 'Emma H. Sumaway', 'ADMINISTRATIVE OFFICER V', 7, 0, '2020-08-26 07:54:01', 0),
(7, '0007', '$2y$10$hO/2p4dlrakXxYg0uHGZ0epDxwkK/zl8RKnCFKkuaLKbVUEI93F7y', 'Jefferson T. Dacer', 'ADMINISTRATIVE OFFICER V', 8, 6, '2020-08-26 07:54:01', 523),
(8, '0008', '$2y$10$w8IpLbMcPVWcy86gcDG42eFb8MQDXthHTL6iSfk1TZmPAhAUaX522', 'Ronald P. Dando', 'ADMINSTRATIVE OFFICER V', 7, 7, '2020-08-26 07:54:01', 0),
(9, '0009', '$2y$10$LyJ9eQd9ezKXeI0eNKZhKeyLfvloPK8kl8ntkrcEmozqorNmz0NEW', 'Amelia O. Elep', 'ADMINISTRATIVE OFFICER V', 8, 25, '2020-08-26 07:54:01', 523),
(10, '0010', '$2y$10$NWLllDpJJ4DtzWcJ5aeDye9jnUxYszyJZwjXeFnWQuPfaiBTj8fCK', 'Evangeline L. Sarion', 'ADMINISTRATIVE OFFICER V', 3, 27, '2020-08-26 07:54:01', 0),
(11, '0011', '$2y$10$tEklmP5M92bKLgXqwrBys.a9qs2fqPvIGwuD.B4qW/Z97Yh2FFt62', 'Martin M. Lukban', 'ADMINISTRATIVE OFFICER V', 7, 26, '2020-08-26 07:54:01', 0),
(12, '0012', '$2y$10$FsjAzwk882JNIQN7aV219OTXtClVjrrJH6e7Ag8uQ/jJUT7PRPNVi', 'Eloisa R. Lukban', 'ADMINISTRATIVE OFFICER V', 8, 29, '2020-08-26 07:54:01', 523),
(13, '0013', '$2y$10$fMUpe/Hcq9K2wm9/H1EEb.iD82BySjJ5gQvb9IYGjhq8m6sE0xTKK', 'Sheila P. Sapusao', 'REGISTRAR III', 8, 13, '2020-08-26 07:54:01', 523),
(14, '0014', '$2y$10$NdixcD7yLYM/H3D8f/FcyeOmTgfqPY4HwdCb9Y4j.Wr2xsfcMzsu2', 'Emma Labrador Zamudio', '', 7, 0, '2020-08-26 07:54:01', 0),
(15, '0015', '$2y$10$spYJY.JR1gozKbCsxVm6Ruz5nzwaWLAzO7jVUUqkxf7pVgUe/7T9u', 'Doreen Cresencia B. Pefianco', 'DENTIST II', 8, 22, '2020-08-26 07:54:01', 523),
(16, '0016', '$2y$10$TFTTeycHy4EUbTueCEJlquNI5qKqXGe5MnE1chFEp5bTUodBI.gqy', 'Louielyn S. Cada', 'ACCOUNTANT II ', 6, 24, '2020-08-26 07:54:01', 523),
(17, '0017', '$2y$10$PCBD6tp8oMv9qRgzqGaxpuZC3j4s7Qv8eSjN3xvEywBKnqU4g4T.2', 'Aida F. Carranceja', 'GUIDANCE COORDINATOR III', 8, 16, '2020-08-26 07:54:01', 523),
(18, '0018', '$2y$10$JmpsqS.3CkMtIrYLx7NjR./anSbJNBhnKCG5G7scvYmzB9hHzkC7G', 'Nida T. Pimentel', 'ADMINISTRATIVE OFFICER IV', 8, 28, '2020-08-26 07:54:01', 523),
(19, '0019', '$2y$10$ZKFl4z1wKKG6B1OUcXle8.CQwMzfEbC9XXSXRzg6XN3f8PLybqtOm', 'Irine E. Andaya', 'ADMINISTRATIVE OFFICER IV', 7, 28, '2020-08-26 07:54:01', 523),
(20, '0020', '$2y$10$yHfwdzP7aNInjaNVaWQxae5iM4TDcpGsKMvTMiwn7wHDryrcyPmlq', 'Rodel S. Elizes', 'NURSE II', 7, 0, '2020-08-26 07:54:01', 0),
(21, '0021', '$2y$10$YxNJ1FYC75Y6f4HDi8qhO.D/RierE9oOxHnWwsgry6W00XuA5B2PO', 'Aida Z. Bacuño', 'ADMINISTRATIVE OFFICER III', 5, 51, '2020-08-26 07:54:01', 523),
(22, '0022', '$2y$10$zaymseWMNFLPxUie7NsN6OPOfONdKIRrkHSF6A/gIRkSX83TnH1Qm', 'Arsenio Gem A. Garcillanosa', 'ADMINISTRATIVE OFFICER III', 3, 27, '2020-08-26 07:54:01', 523),
(23, '0023', '$2y$10$jBwyFp5I54ER3Vb3T7rvyOT3YTa/wfeDpE8USmt44bOaqmCmmlhPi', 'Jezyl V. Imperial', 'COLLEGE LIBRARIAN I', 7, 0, '2020-08-26 07:54:01', 0),
(24, '0024', '$2y$10$VzCFvAovshUb0W3Id/RI..0AgR8fBd1dW0Af6xJjj891tu9PAuBlG', 'Lea L. Fulgueras', 'COLLEGE LIBRARIAN I', 8, 0, '2020-08-26 07:54:01', 523),
(25, '0025', '$2y$10$1shvZEyWBI60/4aqfuLtE.jBE9JSuO0RzUycZb/6v4CZpfn7y7C9u', 'Arlane L. Lo', 'GUIDANCE COUNSELOR III', 7, 0, '2020-08-26 07:54:01', 0),
(26, '0026', '$2y$10$g0moCpaW.LHXGT2inqjHJumuEA0ooPkH51eLcT0HigNq/K6lDXTwG', 'Julia L. Nipas', 'GUIDANCE COUNSELOR III', 7, 16, '2020-08-26 07:54:01', 0),
(27, '0027', '$2y$10$7SzkjMhbI0CQY3loCceLKu7l8DxC9dtof0Uxuzpd6jwOhCwmDgwAy', 'Elizabeth P. Pitoy', 'GUIDANCE COUNSELOR III', 7, 0, '2020-08-26 07:54:01', 0),
(28, '0028', '$2y$10$NG0cI6S3jdaUo/dX8JSHxu7SED.UslgxfVFLd/G3n7CYssNYlFg42', 'Aida R. Robles', 'ACCOUNTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(29, '0029', '$2y$10$hfGLBSVUUAdbDjtlsH9mYutwHxtRtvi6SoWVFWgimmR3V4q9MMuuy', 'Jessica M. Encinas', 'ACCOUNTANT I ', 6, 24, '2020-08-26 07:54:01', 0),
(30, '0030', '$2y$10$0ObSVBYtbjgFvVcz2He9iemJRXeBuLsvqkuM.PYLYayQUdqy8KgSC', 'Wava Ann G. Baylon', 'GUIDANCE COUNSELOR I', 7, 0, '2020-08-26 07:54:01', 0),
(31, '0031', '$2y$10$F5pLSkOTRu5jynvXPSO4SegbBrrA16IG03288CnZem46QsIeugnAS', 'Romulo Z. Villafuerte', 'ADMINISTRATIVE ASSISTANT V', 7, 0, '2020-08-26 07:54:01', 0),
(32, '0032', '$2y$10$XAemXh7UtyxPtKeOCIQkDOisUVuwwFd7NmKisifMukgRerora.Jjy', 'Shara N. Pabines', 'NURSE I', 7, 0, '2020-08-26 07:54:01', 0),
(33, '0033', '$2y$10$BMajkyHvSDy7O1eLIBrqCOYyDfcN5Rxp1slXbzaorqSAFx6n14jyu', 'Dante N. Trinidad', 'REGISTRAR I', 7, 0, '2020-08-26 07:54:01', 0),
(34, '0034', '$2y$10$iIybv.soI7c0Y77qnC.ndOn59xjewDJC/HR1smNumZ.RXclcB3DHC', 'Cherelda S. Badrina', 'REGISTRAR I', 7, 0, '2020-08-26 07:54:01', 0),
(35, '0035', '$2y$10$lm5bkb0OF6DW45LAnPYeuOwcdNPBjgAxOr9MlQAQ1ToHPAImjEtDO', 'Maria Dolores P. Orbita', 'ADMINISTRATIVE OFFICER I', 7, 0, '2020-08-26 07:54:01', 0),
(36, '0036', '$2y$10$nk2xKNjLyVTq3Zjj9K5g2OUFQIKohOe8wxacSCgKTr5KP5NC2D/Vi', 'Marilyn P. Ferrer', 'ADMINISTRATIVE OFFICER I', 7, 0, '2020-08-26 07:54:01', 0),
(37, '0037', '$2y$10$STTJoagCh6zC.fFa.bqhmuRf9x6UWobXy3gTh0qCDgooUuWVmlkLO', 'Lolita Y. Torres', 'ADMINISTRATIVE OFFICER I', 7, 0, '2020-08-26 07:54:01', 0),
(38, '0038', '$2y$10$ATbaH/TO/px7pI8zxmto0exQGlSFJcwWfzBRGqoVOtfBrFeh6J5lq', 'Amelita S. Angeles', 'ADMINISTRATIVE OFFICER I', 7, 0, '2020-08-26 07:54:01', 0),
(39, '0039', '$2y$10$I4LGEOWROaVDBUY5DyJqSulOI46OXDdkQFIXcbs3YRtpnPlDjEVJ.', 'Maria Linda B. Dela Cruz', 'ADMINISTRATIVE ASSISTANT III', 7, 0, '2020-08-26 07:54:01', 0),
(40, '0040', '$2y$10$vw2AS131YYqTW53GS9hKde7vEI.Q0ZJjIrVHVJzYwzJBlLWaLJqGG', 'Marlene O. Asis', 'ADMINISTRATIVE ASSISTANT III', 7, 0, '2020-08-26 07:54:01', 0),
(41, '0041', '$2y$10$sW.xaFUtK/TyhQSECRApGuQV2zWq6u5ehQS5F3GOeMB9qt3IENZeG', 'Jane S. Hemady', 'AMINISTRATIVE ASSISTANT III', 7, 24, '2020-08-26 07:54:01', 0),
(42, '0042', '$2y$10$fOtNM3yHVBLjQPUMLbow/u1VZef6aHzNYfuZJQoE4kmj7YlFq0DKe', 'Jocelyn C. Morada', 'LABORATORY INSPECTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(43, '0043', '$2y$10$RZvR52OeFWYi/yEB2Fmq6.ODIkamBuU9gqlwDXAEBUWYRnG6XD1g6', 'Leonila M. Padrigon', 'ADMINISTRATIVE ASSISTANT I', 6, 24, '2020-08-26 07:54:01', 523),
(44, '0044', '$2y$10$dG7mHWmUMvgy0XnrMqPl2.nza.UoQibphpSZxS0j8BHen7MvAkwGu', 'Ma. Victoria R. Ingatan', 'ADMINISTRATIVE ASSISTANT I', 7, 36, '2020-08-26 07:54:01', 523),
(45, '0045', '$2y$10$SofZ9iAVEgLNWntDXRaTyuRUskDEU7yg/mWcNHpYBXT31.leyFsE6', 'Shirley S. Prado', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(46, '0046', '$2y$10$1IWbfMf9BhqIJyIkKqpgfugoGBHrU6gzAw4RhXeEQKN5lzGVRGQnW', 'Sybelle M. Orias', 'ADMINISTRATIVE AIDE VI ', 7, 0, '2020-08-26 07:54:01', 0),
(47, '0047', '$2y$10$trCFc8GNn1b58zlixvRD3OmwTW1KAn6v3CikScRO.h/8/9vqrb7oS', 'Fay T. Paat', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(48, '0048', '$2y$10$Iwl2dkjb/tnSHQw2xKnc/urr5iVWpRf0gtwjDFEsfL4oZp3B.k1Ei', 'Maria Teresa L. David', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(49, '0049', '$2y$10$bXso65pjfpldzE9CvZvjn.kk4OMOQQ520OnQEZevkeLlQwe/XZDIG', 'Erlinda M. Castillo', 'ADMINISTRATIVE ASSISTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(50, '0050', '$2y$10$DSCXqceeRwXPCPut63MGQel1yNrD4B2PYo725A8ohgqG3/2JIQB0q', 'Arnel J. Padrigon', 'ADMINISTRATIVE ASSISTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(51, '0051', '$2y$10$c5evWmMahUgfDi.7YEQhN.tS3YuV2RjlS6nRjVdNW/2WO2OCcJqZa', 'Celnor Yanto Noora', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(52, '0052', '$2y$10$USF01gNNZNiSVu2JtK97uuqTXe83Fw6T4bJuNNQjAqwQUwtYaS1Ee', 'Benedicto V. Israel', 'ADMINISTRATIVE AIDE V', 7, 0, '2020-08-26 07:54:01', 0),
(53, '0053', '$2y$10$0TcMSeDYg/uIuQrE3tOgeuUFSCGXYfDxBmzpjXYVe.bKFwUY.25We', 'Arman O. Añonuevo', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(54, '0054', '$2y$10$OkE9murFh2RdKOmZmCHKBemkvdIYyYKpeCMTDK8ox0mCeN4rrp73O', 'Ricky S. Paat', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(55, '0055', '$2y$10$vsR6vLlfGDEJX.kPMcmlVuzN0Cy5mbybPuBKQTkSO7VTn975ILBT6', 'Genaro E. Balauro', 'ADMINISTRATIVE AIDE IV', 8, 0, '2020-08-26 07:54:01', 523),
(56, '0056', '$2y$10$GxcMpyNJw57A7HgbygStl.bVE3eZ/GBYC0AL9E9NGoEYIilJm0Gp2', 'Ronnie H. Ternida', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(57, '0057', '$2y$10$EAe1gRK9FZFufzz3NhvGVOazLkwcBtWA8qDsTA9zqkwVmbJPVRhXO', 'Jesus A. Mojal Jr.', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(58, '0058', '$2y$10$rcK.u6BZ0/dvnlhWpgKnYOTDe/ABxFBfY0KGGJt38bhujDT7Rn97y', 'Ricky F. Lucero', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(59, '0059', '$2y$10$zHh8BzDIL9w0TF.dqnrLdeFxeOZJKBVju56UnwfgDmFLHvWyBmsQO', 'Marlon R. Casallos', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(60, '0060', '$2y$10$OqqihEUYgBYi0pBVuLTLnuibdYiLxiY3L4WdAV8oCK3/8jEWuxly2', 'Ariosto S. Decena', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(61, '0061', '$2y$10$mbN8TSGz0wksZh05yzdpRO.mvMsiiKJ8VjmPxEKRTDoAk.8GfHcru', 'Jemeul N. Gago', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(62, '0062', '$2y$10$kfzWMZAF4IQntdpmdVWyiOSkG.VvkHmpNROefphk5QTySLvmE9DaS', 'Michael M. Zabala', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(63, '0063', '$2y$10$T7nMXjicRWdgACHE4RjnBeWqQ2X/03b7wA5CA.Cx17krDlMtGRu2y', 'Ana Bella T. Ratilla', 'ADMINISTRATIVE AIDE III', 7, 45, '2020-08-26 07:54:01', 523),
(64, '0064', '$2y$10$YU73FkHmZdjTYR6pRm2aKulmVZdAuxGSzGqiqpgigqSNZqWELmE6y', 'Marzon V. Israel', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(65, '0065', '$2y$10$6eWxm5DuVtrdTS0q5LEpae2QQexzdCgKOWQ9q8xitVrfl5e//510O', 'Odello S. Dela Cruz', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(66, '0066', '$2y$10$Q.RcQdE3z/HpHPN7U4W3.u/TE7VfxY2vnGZrgsapzqT3tOECyok.y', 'Salvador O. Totanes Jr.', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(67, '0067', '$2y$10$dpbNtlsIGfzKxxGDrJTpXOT8OplZs5SXlfLTCvn.5LOqFMMnMx1GS', 'Cherryvelle I. Jardinero', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(68, '0068', '$2y$10$cnFWam4XG61S9ZWrcYvJiuhdZEDTQOliDitSRFVbzncSXg5Oq2rHW', 'Jinky D. Mapusao', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(69, '0069', '$2y$10$KzchKwGf2/BTg5//K5AFKex1QTENr8HtHTaH8ytEh1YdJ9iBafrhK', 'Andrew A. Naranjo', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(70, '0070', '$2y$10$eZzjS5akV5dEHAdi8YXHG.wACpAFi5boiCtJk76FUKnEdYaQKf97.', 'Antonio B. Dongon', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(71, '0071', '$2y$10$QVtAwvYW.jJkb/7fdzF/7uOd0CBgk1jgQsY9JRg9Pbg0BZ.sshvkC', 'Graciela G. Sanglay', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(72, '0072', '$2y$10$PwiFSYphr/nwS3j.Od./v.1TGnzIknBCKxTFrOo8qvsnZaLhI7Jp2', 'Barbie Mae E. Rosales', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(73, '0073', '$2y$10$xSSsa8MtRpcJNqvSIRKCVOWgSgttLhEXek6qFY1Tt.CPcduMrDy56', 'Arman B. Salvino', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(74, '0074', '$2y$10$d7aR5pi3pva0nJiupsBLiu0UNr46EX6oa/tYkgBORwYje4VNQOSwy', 'Haide H. Espina', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(75, '0075', '$2y$10$rBv0VnlViR2rYSbX.v1o6u/HkWII/GVFGosTyvvz98nFVo7e3XOMK', 'Alma C. Furuc', 'ADMINISTRATIVE AIDE III', 3, 27, '2020-08-26 07:54:01', 523),
(76, '0076', '$2y$10$DzBGE/KeoMLh3antK7Leied2pVtCAeynF4uF/09EJ5Fp5KtqhgjKO', 'Jeanette C. Abaquita', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(77, '0077', '$2y$10$A7lKGK5dirfYwn7gs.iaOOxqAtCxTml6DJ7gBhb1QWUgxZwHRg5uW', 'Arturo C. Peñaflor', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(78, '0078', '$2y$10$TnNtnqtnmjk4VQdibDJzBucUFg1qJ1gih1.Kqim7GuRZW.mTEf8Ea', 'Brenda A. Castro', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(79, '0079', '$2y$10$OfEWMeJA5x9wgJiWYc8U7OO.8ugrHsgSMThxk0.n4XW5ihutL7jva', 'Jonel Odi Diaz', 'ADMINISTRATIVE AIDE IV/PROCUREMENT IN CHARGE', 7, 0, '2020-08-26 07:54:01', 0),
(80, '0080', '$2y$10$sPdzlIwjKDSbYejycRgSY.J4nA.vVrwdLwZnrLjR6JbkNDW3jCbKi', 'Samuel S. De Vera', 'ADMINISTRATIVE AIDE IV', 7, 10, '2020-08-26 07:54:01', 0),
(81, '0081', '$2y$10$qUUYwsTNDSaviPkZm0aIuelSivTiWsgtHsgQ5zDsmQ2YDfgbVng4u', 'Silvestre E. Aborde Jr.', 'ADMINISTRATIVE AIDE lll', 7, 0, '2020-08-26 07:54:01', 0),
(82, '0082', '$2y$10$Zwwt9ghYAt.Wc7h7SU7oRunURoWDYBalpr/OcT52uUicgFB044XPe', 'Felix G. Ambrona II', 'AUDIO-VISUAL EQUIPMENT OPERATOR I', 7, 10, '2020-08-26 07:54:01', 0),
(83, '0083', '$2y$10$lYn.f4WF6E6BCr8u5uTzyevaKct.ViG6FIMwKHiEPqaXbLCbatf3W', 'Edgardo I. Serrano', 'FISHERMAN I', 7, 0, '2020-08-26 07:54:01', 0),
(84, '0084', '$2y$10$wujdUt9GLOCF22.zLcANKOV8/d9xj/vNTTNRRXzIthg/OMCukKffa', 'Rufo F. Gallego', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(85, '0085', '$2y$10$6584K2uu0fMbmsqeR0NWmee2fRK3s8ymI9l9qxQHP.3LO0/KPFCQq', 'Joey Q. Roazul', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(86, '0086', '$2y$10$t760ytICondfhi0nmf.P1.yXbVv80AIaUGU18Q.G8Mio10xcQnura', 'Felimon F. Crisosmo', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(87, '0087', '$2y$10$bJh7t1Y3tfO17kO7ES/keutbfVetxFoNvSMDvNciPglpL/3k4PdXS', 'Jesus C. Dela Cruz', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(88, '0088', '$2y$10$sallUE.C4usosoQkYi9QjupyVJOffdKgYk4MNxY3UH7ZNq7iuGLrC', 'Virgilio V. Aldeza', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(89, '0089', '$2y$10$tuyYK6ZsZ3pULbIwVRo5Ru/Y6EbdQHPhdUgAmy.IXMCHauaEATGcO', 'Joey Melq Z. Hicaro', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(90, '0090', '$2y$10$mks.L6.UY0WlkVSuDw07VuDD0jCTyxq74KGj62kG/G7ALqE/HHu5i', 'Maria Luisa T. Baria', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(91, '0091', '$2y$10$Un/tqknhvoTWdkcBsYwk..A47JFxsFDX/RlrldspJv2XDj7sPeb7q', 'Aileen A. David', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(92, '0092', '$2y$10$TL3Hr0DnJmCVn0seqsX1vuL1IOHYQ1QPnBeGkF5qQGFYDyRkwSSFa', 'Maricel A. Balon', 'ADMINISTRATIVE AIDE II', 4, 41, '2020-08-26 07:54:01', 10),
(93, '0093', '$2y$10$ccZX2JuLrdufOEvVIyuaw.dJhbsuN/AtQOhXbYTyhCID7ARbR959u', 'Charlie C. Yago', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(94, '0094', '$2y$10$62s5zPI0T1lSVbwXVgDO3.QpQMznU/Jqp39R0V.ZQOikp37cjHLEi', 'Anna Liza J. Salo', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(95, '0095', '$2y$10$Y.0KfVAq3/4WldmK9I38wejkhhCp6EEtTFT0LW6xLwB71sCVxfUE6', 'Lilibeth A. Sarion', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(96, '0096', '$2y$10$B/uQb1REAAGbi0RHYhSDheNXyOSK3.b7PFToOfp1APtJtl5ec6lgi', 'Edgardo V. Teope', 'ADMINISTRATIVE AIDE II', 4, 48, '2020-08-26 07:54:01', 523),
(97, '0097', '$2y$10$T4EH.A0U1TbJ7d5vV/.hpOeNTaxXXbX.gYvdftwK6ehlJ0kq39F.6', 'Ernesto T. Manlangit', 'FARM WORKER I', 7, 0, '2020-08-26 07:54:01', 0),
(98, '0098', '$2y$10$XcQq.cu7kJoCBKSyVjTFBe7JnEw5Kw0chLgavYnbkxnF/E4FLzCLO', 'Amelito Odi Andes', 'FARM WORKER I', 7, 0, '2020-08-26 07:54:01', 0),
(99, '0099', '$2y$10$HpjWk9CI1Y8IgWegW6D3g.c1tvXSADXEBsgjAx7FnOkf0iJzzldEO', 'Ariel O. Diaz', 'FARM WORKER I', 7, 0, '2020-08-26 07:54:01', 0),
(100, '0100', '$2y$10$BLLCbz.UojvzXTrC7QIvcOD5eWNWTKuqUSTvim3piaSqdLx4UhBNO', 'Melania A. Padua', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(101, '0101', '$2y$10$0F3GyMRGBfdyymyovT2FzeJlFu5/sNX7xWxLrSkvspydLd22rSgEG', 'Antonio C. De La Cruz', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(102, '0102', '$2y$10$PnWDvvOX1c3SWpR4IPNmr./HCd754h2JWgm9m26T9.V8aKoAJBLGe', 'Zenaida G. Joyosa', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(103, '0103', '$2y$10$ew8VrapDpDmrSca5llFGl.2M5JudV0xHnJtDTKl6BXGF.N5w2h5X2', 'Eden E. Mojal', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(104, '0104', '$2y$10$5x5HXuU/G/9GTAiO1mR44OIDUoq6RIV0PSE1L2Unz4D7vtE7f6lI2', 'Rustom B. Lagonoy', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(105, '0105', '$2y$10$W.Cu2ZeBCRHhFJ81eQgTzeNDPpOacRte2zfogDhARSmrAuyIzTZyy', 'Alexander L. Nual Jr.', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(106, '0106', '$2y$10$BOdwhXofZBX8PUFHLMI9p.wwpgzMlolRaOWL1ODZFkX4wrbHWmbeO', 'Antonio V. Sarion', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(107, '0107', '$2y$10$stvXZJjtFdSlJUdJauOVbeL06Dqq/T46Oia3AnsRqjka6reERVODW', 'Marcelino E. Bajaro', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(108, '0108', '$2y$10$DIuy2XFNNApsH48VhOJrtujHSu1USFBdL.wlokPrqHu2mu0oWoRem', 'Mario Q. Roazul Jr.', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(109, '0109', '$2y$10$TkUV/z9G1TxT8kT1bgf7g.F.2OaOYulJinvJUY9rCNhPA.ERPyMtC', 'Nolito S. Roquid', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(110, '0110', '$2y$10$rpWUH5blscOe6Q..KyRVmOEOWunAwXXotAoO/ZkvMBSosaPIii3Oy', 'Wenifredo Tordilla Oñate', 'COLLEGE PROFESSOR', 7, 0, '2020-08-26 07:54:01', 0),
(111, '0111', '$2y$10$KxymHhPywSJx45NaevciVuH3G3nPb9l5huP5IwkmD8DlOAlhc0ILS', 'Corazon S. Fajardo', 'PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(112, '0112', '$2y$10$NqhpQG8BPjmN1IXCnMnTkeJ26Rl/Dfzn2TJd4hYM/n/ejVUHy/Xsm', 'Ela N. Regondola', 'PROFESSOR IV ', 7, 0, '2020-08-26 07:54:01', 0),
(113, '0113', '$2y$10$Hcrtaix.QHaJMvfEQIf6su567spsUWxx8VcZRLTnpHSSImqaoEDEi', 'Sonia S. Carbonell', 'PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(114, '0114', '$2y$10$Hi0A32vcsqutwrV01f6feuDBUzZamVMTBcmbYxPT60h5APMYSmVpy', 'Erlinda J. Porcincula', 'PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(115, '0115', '$2y$10$6MOiM.N9S9USBZKclyfNmOPqfrXtcso/qLqI.8YVVBFaRdgIGOU..', 'Cesar B. Bermundo', 'PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(116, '0116', '$2y$10$JXwGuz1ewOp3OAteHMzFs.0Vt8qmfuzST6Kb1UKhv8HPIy8e5Xepm', 'Lilibeth A. Roxas', 'AP - V / VP FOR ADMIN. AND FINANCE', 8, 3, '2020-08-26 07:54:01', 523),
(117, '0117', '$2y$10$Y7KdP80OJ3w9mZFzuQFKqO9K/clztAAvjiaXWbVGZMENBxX8RZJyC', 'Nora J. Macasinag', 'ASSOCIATE PROFESSOR V', 7, 0, '2020-08-26 07:54:01', 0),
(118, '0118', '$2y$10$Bt2zepe28at1ekraj7YfqObNQl8nfY1Gby7NNT5GnVVlhMkusc59.', 'Manuel B. Alberto', 'ASSOCIATE PROF. V / CAMPUS DIRECTOR', 8, 0, '2020-08-26 07:54:01', 523),
(119, '0119', '$2y$10$xw8oZXKvZbZbufGHemqdtuzfm2RstbVf6rkRARJZB7G6MzOmbhmCy', 'Pimeh C. Tolentino', 'ASSOCIATE PROFESSOR V', 8, 12, '2020-08-26 07:54:01', 523),
(120, '0120', '$2y$10$VN.Eu6dHXacLxxESlNu5ZuG/r2QTx.x/P/6RkMML2uK.H7kYQbTcy', 'Dolores C. Volante', 'ASSOCIATE PROFESSOR V', 8, 0, '2020-08-26 07:54:01', 523),
(121, '0121', '$2y$10$lsgTG1JVyckEnDWE9QFibOlsf/T3NMmTqIfEMZbHctu4GuuLTsC9m', 'Bartolome S. Papares', 'ASSOCIATE PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(122, '0122', '$2y$10$AJsbLaV50k5hWtz3G90nUOVGtw8pRVc.KGcZm/yWt2BNORSFIiXvK', 'Felomino Vicente T. Fernandez', 'ASSOCIATE PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(123, '0123', '$2y$10$4lgzM.GrvdfLPmBM1d5qPu7UmlxoEibHDYQsc/QukQu8bA4Uinq1u', 'Roberto D. Vecida', 'ASSOCIATE PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(124, '0124', '$2y$10$0Boompe4mzVxyWOfNtCdT.FU2i25ddhS6TaGy5rLlylJBXWfpmPIu', 'Job Balmes Imperial', '', 7, 0, '2020-08-26 07:54:01', 0),
(125, '0125', '$2y$10$CjXwae0D5bSb.4ZeeNBng.lyJS9fW9jVIalc9wULJ0xrgu4P.NejO', 'Josefina Socorro F. Tondo', 'ASSOCIATE PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(126, '0126', '$2y$10$3soYR5bUgh.cIpzXFeg1u.6fz/237gqzILW0F634RIBnnZ60yJNAe', 'Gene F. Bonito', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(127, '0127', '$2y$10$CfgbjzQ9bfFHB6eJRJzNkuFk8M8imp6s2XLt7zVZmkzBdWNMxqOwC', 'Maria Cristina C. Azuelo', 'ASSOCIATE PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(128, '0128', '$2y$10$CBB2JFlEYhR3zqWGDrCa6O2XR9hDrC5oOTY.ptz/vCYJnp9/wRd36', 'Juanita C. Emata', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(129, '0129', '$2y$10$glYv/q63u8st.OQr9kkGfOkSXzbWUQLqyaoxLD2pYKwgPWY/p4rQW', 'Roberto L. Olboc', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(130, '0130', '$2y$10$dSgoIHZOQkUkmp2U/QNpO.1GclExK.DDn6lu//gp22.a3Ubd8T3pm', 'Lolito R. Orendain', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(131, '0131', '$2y$10$BRLyiazRoDB05.5DSijP/emTIOfz74y0Um1khdFYOnd9fh4YNLMZa', 'Lourdes S. Vedad', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(132, '0132', '$2y$10$zsCAq45FH6XwfEeCJmS11e4oJAIDT.oyi1BvhuZ.4o8KYvoOcZ8x.', 'Leah N. Barbado', 'ASSOCIATE PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(133, '0133', '$2y$10$mE1u70/HHBYnV9hAnfVx8uiqOKt8qcgqGvbn9/uZrm2dW1bimV9C6', 'Noli S. Dipasupil', 'ASSOCIATE PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(134, '0134', '$2y$10$1PiHe8Lwb2xABEkJ8Hk/p..mEbvdu8GwdicqftVPCPDm7VOl/AByC', 'Rosalie A. Almadrones', 'ASSOC. PROF. II / VPAA', 8, 0, '2020-08-26 07:54:01', 523),
(135, '0135', '$2y$10$Jr7.Kf81YiUu.krFwcndfOs0hLT6wHPcPHcbqBIWKFmXBTe//ziZe', 'Marietta Ceres Nataño Epino', 'ASSOCIATE PROFESSOR II/CHAIRPERSON ENTREP. DEPARTMENT', 7, 0, '2020-08-26 07:54:01', 0),
(136, '0136', '$2y$10$q/NrJasOoCB4g8u7GTJIEOQNajuE49WUUTwmv31QUhQw8aBjT9rMK', 'Ana B. Del Mundo', 'ASSOCIATE PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(137, '0137', '$2y$10$7OeOpjtnrvjhIBDCsOt2pe6weVO8HLfsDf1LrrmrEfO08xBwtpgQS', 'Marilyn R. Papares', 'ASSOCIATE PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(138, '0138', '$2y$10$8zxNwzjvV2eGi5r.RwVOMu8dLdJPDQtTaKewEh1IzRZR/CuxApDzi', 'Ricardo D. Diño', 'ASSOCIATE PROFESSOR II', 8, 0, '2020-08-26 07:54:01', 523),
(139, '0139', '$2y$10$oKQo82.X5nWYOMsVTySefubPXobMtSArFM9r1aKmBlmtyFtc7Fimu', 'Shirley Alberto', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(140, '0140', '$2y$10$FcyaJrXhhFw9h10KvLRBPehWbPjONtVVcaOgxTxp4p.BauUYBTSYG', 'Rene B. Abrera', 'ASSOCIATE PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(141, '0141', '$2y$10$1Zwtsfvw0XPwFqLrRR8DQ.1qARK4ezsmardRw4MtlkRoPtAvfOA4y', 'Aida C. Caldit', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(142, '0142', '$2y$10$z302A.xolEME.QcGh0xb9OuRIJNgSYopMQluyS7tW16sUUIK02SPi', 'Eden Santiago Chong', '', 7, 0, '2020-08-26 07:54:01', 0),
(143, '0143', '$2y$10$eSvE5DOgEpvl.l8xfAbAvucHcAivKTS0vMQCSLaWQxLtrjZqCGxiS', 'Fermin A. Gaurino', 'ASSOCIATE PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(144, '0144', '$2y$10$vfe45e8Mn9vpP/YqDYS1WuHXP83MaD7/35D7oUUs8xT5SdsTRwHce', 'Rogelio A. Quimno', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(145, '0145', '$2y$10$1scDqnqjgtk2cF9v6ZdTz.JWUHc0ay3bqOfwvxcrNX5Onzraq6fsq', 'Alex V. Sureta', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(146, '0146', '$2y$10$eslnmLiAX/V4GkT.EvNHD.WqaaGuGVO92VVPYWhXvphuMJQJ6dvAS', 'Dario A. Torero', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(147, '0147', '$2y$10$cgDrh01L7H1nuuEEaP76Vu5FoP6CZn9rNHm7GqW6hC5pw6S6CSFPi', 'Silvestre H. Ilao', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(148, '0148', '$2y$10$yXFX7rpOfoRtgUHiN6f1m.OtgFMxvldZKeYhGvto5lsu3pLOLr3TW', 'Edwin M. Llena', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(149, '0149', '$2y$10$nU2ifDhvgyz56KFHCeRxte1/Q2XOPyxrYy/93C0TC56IlxTjkJ5lC', 'Edgardo E. Mancenido', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(150, '0150', '$2y$10$v2BpONRw/5w74XCwH0Q2yOgiUpnkSgDFWly350TRsT3jyccF5oqYu', 'Elsa T. Manlangit', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(151, '0151', '$2y$10$fzH/kjoHZriiorsnyRunOunJZIJO.3aE/vdZKp1jzRQe9lm87lSIK', 'Bernadette C. Mendejar', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(152, '0152', '$2y$10$6mMN.XISA.6WfGcf1RPhJOzRSHA812CfUzdgVGPUjSLMjsGu9.hEK', 'Rogelio L. Tan', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(153, '0153', '$2y$10$g6Hp6jZxyGK/oZUZpt9XgeNbk8pyu4qweveNWCig3bcmbYR53Oynm', 'Virginia S. Abuyo', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(154, '0154', '$2y$10$k5Xbh9srFSjZTnyI9EUWt.GsfdVwLjEZXo.pfX9Zw6CGsfteEKNKS', 'Melanie D. Bacuño', 'ASSISTANT PROFESSOR IV ', 8, 0, '2020-08-26 07:54:01', 523),
(155, '0155', '$2y$10$bU.k4kTIdXvJdjzyYbyHtOPa7c05heExeUL22RReeOgpjIrpLfSeW', 'Genaro B. Balane', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(156, '0156', '$2y$10$wjzFFJ1I96m3a0pHFVsU.uOSfFM4uPVHftbMUQfsRBxO90QBmDEqK', 'Evelyn P. Buitre', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(157, '0157', '$2y$10$qGrf4XLbywFZzZnDovKx8eb4zr.RSAJRgMH6/iGETR.1CDmNxEPhK', 'Emmanuel A. David', 'ASSISTANT PROFESSOR IV ', 7, 0, '2020-08-26 07:54:01', 0),
(158, '0158', '$2y$10$Y3FNDWPi1/25h0JzMnFSK.cAf.x2pE3VXZv33Ckm9LeimC7QDIqzC', 'Jackson B. De Chavez', 'ASSISTANT PROESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(159, '0159', '$2y$10$FoCDdeT87twBN6fIJnqJ6ufSG4kC5.BbjKbB1nfMCvPZGLnOLmEHu', 'Roger Jay Lamadrid De Vela', '', 8, 0, '2020-08-26 07:54:01', 523),
(160, '0160', '$2y$10$PuIbMoNJ/dD/ATf.6SjL9uxsyZIaPJDqhwE7RAAr59nSS7BEng/Ne', 'Renato T. Pancho', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(161, '0161', '$2y$10$WgkBo7FqxpFtckyJv06NY.64wHzdjOzwQp0FJn.N6oF5OmNyZ23Ji', 'Claro Ramon A. Duero', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(162, '0162', '$2y$10$Wg./mKfGMYEdUwp30w4aS.qhK2fnjfDaX58hxrv9KVhNihY/yL6Ea', 'Nena B. Peteza', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(163, '0163', '$2y$10$5ii1UEPVkPnX.JShdqy6rOzg/0nzlZ20FAc/57axFAHuIjlMLQTny', 'Gina J. Estrada', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(164, '0164', '$2y$10$f.liIuLsg/QbE3YzskUsCOYTNM7q0YRxfSpa13/05DRAXe0SMeQ62', 'Rosabel G. Sayson', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(165, '0165', '$2y$10$xxawNCq16V.P9yTSJm5G1.SaDDSYMWxLmd2liJZTqKCgbJ6Otbe5m', 'Merly A. Labaro', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(166, '0166', '$2y$10$pRT1V6hYvuJo9u5LNaYHluKBc/WbR.Khz8oMAwjf/pAMG.N8oP1JS', 'Denis M. Lo', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(167, '0167', '$2y$10$rVF2aP8MrOOgDDYP..X/Je9C834/t49qPdaAvFtznoxpSWrXpwH7m', 'Israel C. Lotivo', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(168, '0168', '$2y$10$UWRTW/EqfMj8tFmc97bJpOqNZ2iWQojROty0xJwendSZ.ezfcfxmC', 'Nemia Z. Vecida', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(169, '0169', '$2y$10$odozIkmQSqXL9Cpchlj1G.9EoAzGFNWjEjsgQzV41j3X8s4u78FYm', 'Estrella P. Obusan', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(170, '0170', '$2y$10$SHTCP.C584Bfm8hFos2YWu/LKZlIcZ481kEgoykg5vvCwgnA/s4ay', 'Ramon A. Orbita', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(171, '0171', '$2y$10$zX3JUebWHH6qTOiQOCLM7ePUnBLu2Fq3SYgfNVhJlyKVgY3j3R0MG', 'Aida Cereno Rojas', 'ASSISTANT PROFESSOR IV ', 7, 0, '2020-08-26 07:54:01', 0),
(172, '0172', '$2y$10$FIxmJhPQ.E6rAo/PJEP7terrJMd2rFOaUmV9ULARQdf..YD0td2L.', 'Almira K. Velasco', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(173, '0173', '$2y$10$mPPMMlnMxoOLzLbkJDAwDOZ2KXM89WF7qT5XXsRXK3IahAnpZjgae', 'Abner Jose C. Villar', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(174, '0174', '$2y$10$qbiT/JMudaj3inpdEIf0U.8x.oMUgGqMIw04beeWJreASlft4k4cm', 'Samson B. Zantua', 'ASSISTANT PROFESSOR IV ', 7, 0, '2020-08-26 07:54:01', 0),
(175, '0175', '$2y$10$0jpRDi/6radDQvayOsSTKOCfWaA6xTiBRkIVY4t3M/ih1iiS4WSxG', 'Jocelyn L. Abogado', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(176, '0177', '$2y$10$qrZ4sURCUbOnSymRfZO5eekW07UOvWsey27SEl6woDjFp26mBZwwO', 'Arlene C. Alegre', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(177, '0178', '$2y$10$nVx/y0C3lb6KFgPBtumS1ewl4tsw0byNB3O2VVghgz4VY2SNAy4NG', 'Jesus C. Avanceña', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(178, '0179', '$2y$10$EPSq6bdCBNgbTx5feQvD7emHICU/F8r6F.nxYepQdMoaD6Rh9qpwK', 'Aser N. Dino', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(179, '0180', '$2y$10$X/k4/ptP3JeBtPvwhBV6xe8zUzTLVA5W7L/jXU9rAXzLEZ4nlxgMS', 'Marissa I. Flores', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(180, '0181', '$2y$10$U5Ohe0p/87dv/wvs1TanVefQaukSQgyaahcAwoFNkdK.zi8/3Vtoa', 'Beverly V. Musa', 'ASSISTANT PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(181, '0182', '$2y$10$s1a/85AinfYziRLeg0.jru.7N.rtE8qagSNjC2nWUXLt2NC.Rz.4q', 'Girly H. Naval', 'ASSISTANT PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(182, '0183', '$2y$10$/Mf32cnd0JR9/JaymceRfuS.XvksXXC5Xz7GXU/e.UKBDmFlH/R4W', 'Norma A. Papares', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(183, '0184', '$2y$10$GYXHpp.zsA9wp3u4TWHmG.xTGEV6tdX9sN/9tZ99lDvC5fbXV3OB6', 'Jennifer S. Rubio', 'ASSISTANT PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(184, '0185', '$2y$10$y7bunOTpfL.b36BcTcBWROYyV9hzsv7Km6mRXNN/36eusXm0l1LlO', 'Emmanuel A. Rojas', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(185, '0186', '$2y$10$VoDuzPjK.gTOejpsj947L.73I4am5OALSgfCpbVDqKjTL6.gvzrIO', 'Bella V. Sabordo', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(186, '0187', '$2y$10$WJqbHvnOQyCKwZBMp.JL/ebjhRLWVDVySCFY7rPtXMenSCzAhe1ce', 'Jocelyn E. Trinidad', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(187, '0188', '$2y$10$j4jmvpf.W3X8B9Q3IjITYOk4DyIb1zg/YN6Xgeim4L6s7RW2CS50.', 'Gil Victor G. Zaldua', 'ASSISTANT PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(188, '0189', '$2y$10$F/vSteX0RjaMv5zzHDRYw.8duh2gSgs3dj.Eed82RIMgmhiYn6m0u', 'Delma Jean V. Abad', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(189, '0190', '$2y$10$.kAWbXDCOClAV77mLG3Kpe.GzUR.mUoFIO8/dnP8rYlNGTyMWQZsm', 'Ronnie E. Asis', 'ASSISTANT PROFESSOR II ', 7, 0, '2020-08-26 07:54:01', 0),
(190, '0191', '$2y$10$69BlWmScbRqiQ167tYtzl.gwaerWYoW0.4OUhGHeQ8g7HHjGI7igK', 'Ronald S. Mancenido', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(191, '0192', '$2y$10$8S57Ki7F.9CKyRpRLejR7ORfJUE6stmunfVtnHgzcHX7gj84.zlhG', 'Michelle S. Carbonell', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(192, '0193', '$2y$10$k1Nu61QnPhrv1Awhp4.JEuCV0ucY.wGPCTEZJLT76zmjAw83aSW6q', 'Daniel E. Maligat Jr.', 'ASSISTANT PROFESSOR II', 8, 0, '2020-08-26 07:54:01', 523),
(193, '0194', '$2y$10$NMmAmaKFwRbNKoi0frgFwuS6aDphUvLZPgpYQi70ASeQ1g/4gCDta', 'Nemia C. Puse', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(194, '0195', '$2y$10$UHwbwh6m.d60CViFvuZxw.AmsSoWTXg6/IzTp4kLV9wZbyeezhC1m', 'Rudy T. Rayos III', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(195, '0196', '$2y$10$GIroy0PVzAvmcCsobfBfA.cBISZmxkWe098g5mWejDkG3CyeKLxHa', 'Sheela G. Salvador', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(196, '0197', '$2y$10$/t1pEiMyLxPk3QiERt6pGOUfCvbq0HqYRPydtp0QPW3ED0it080ZG', 'Noe M. Emata', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(197, '0198', '$2y$10$QCkHtUE0veJecCtXs0BcJeBZxd5ckrF/28/4DMOgmlDKLZfLDamXu', 'Dorothy S. Sureta', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(198, '0199', '$2y$10$plcRTA.Qggbgchl3CsBXueIcsVo/QAzRvnx/BQLDCfPE2AkiKxB2i', 'Jocelyn O. Torio', 'ASSISTANT PROFESSOR II', 8, 0, '2020-08-26 07:54:01', 523),
(199, '0200', '$2y$10$VAl53NG3r9zlVz9jvNkE1uq3iDYJOmvtlYmQCutL9tHxLa5xg9lVC', 'Angelita M. Orendain', 'ASSISTANT POFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(200, '0201', '$2y$10$JG.Sq3piPdVltPcLaByMFOumakJOxnirEMO62zRGlCNWTbf9WhG7y', 'Angeles I. M. Asay Jr.', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(201, '0202', '$2y$10$xIcRAdQwL/IqFVXA66H2IOrQvshhVrRNtuoKmKq8v7tV4.ByBghIm', 'Zenyfe S. Paraiso', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(202, '0203', '$2y$10$vfq72VsRe8lDkprQVIvOA.WxKaHnP9Hw0e4WG6sbN7qyXKby8e.hK', 'Arthur Ibita Avila', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(203, '0204', '$2y$10$KjMikjlg4YH8AcZtDuNPP.x6asrlOXxoeLcvrmW8/DsfVEDkktEdq', 'Roland S. Alarcon', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(204, '0205', '$2y$10$6Z6qH2C3ozfh556gJJwzEuvxiSdWMz96K4uLLzFuryOIbNGQePRti', 'Evelyn M. Baesa', 'ASSISTANT PROFESSOR I / ICS DIRECTOR', 7, 0, '2020-08-26 07:54:01', 0),
(205, '0206', '$2y$10$VtvSfoodeEFcFTO/uCWYbuGcF7JgsL099tSfqs9pnmZ7MkHEJyppi', 'Maria Elena A. Bidar', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(206, '0207', '$2y$10$tnbifyqqlKJwVFy.V2ExJuhZLiWn.nudf1PMM/IgEbFJ92kO0hIRa', 'Rosemarie T. Bigueras', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(207, '0208', '$2y$10$40tmcowGwFQVSBYCLY0dqO5MHMfLCLcwzntTH3Mw3VLBruE/kgjkm', 'Helen D. Cabanilla', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(208, '0209', '$2y$10$mJMTl5X4EYsvA3U3G2PtluHSpIdXerwtwtvvgUMmMyZMpZlPEu/ma', 'Edwin R. Ichiano', 'ASSISTANT PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(209, '0210', '$2y$10$031rIchPhtoxm6f9xBDaIe6ZFuRKtnlNdhrseV9nofnwpCCHEo2KO', 'Gracia A. Delos Reyes', 'ASSISTANT PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(210, '0211', '$2y$10$HeAGWiGOI2o6t/OTP0NqN.sXh0n8y/MUdoR8rrllL1XD90Wsgycei', 'Adrian G. Daniel', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(211, '0212', '$2y$10$IFIs6X0iintjXZcIUSlMc.0IS2ihJ7k62f3Ac/sYhgbDGEubmJHOC', 'Noel S. Manila', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(212, '0213', '$2y$10$Jgj0eaX7gTXjVpB1VKnkR.ciH1qpxIjHWodDd.AxDS.HosGfsV0cy', 'Edgar Bryan B. Nicart', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(213, '0214', '$2y$10$sPIbTdtZNt02EqCO4/hI9OKbkz2fiFw/gUEjtPFlTSr9UmFLes3Hu', 'Emilyn O. Panotes', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(214, '0215', '$2y$10$CitBb8VrxuklNJsVo9UZkOyhGXD5GzR4XvvlSmNaj98ti4Rnf6c1a', 'Jofhiline F. Dygico', 'ASSISTANT PROFESSOR II', 8, 0, '2020-08-26 07:54:01', 523),
(215, '0216', '$2y$10$Wem92Ll9yB1S8/9ZGDs8DuQHa/G8linHbw1xCQw8PEJrm0.zY26hy', 'Andy C. Robles', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(216, '0217', '$2y$10$9wsy/5hdVfFfNrRjh1gDBeMm6wESHX0ySWSfnZhSze5vuQA05tHRG', 'Joel F. Valera', 'ASSISTANT PROFESSOR I', 4, 45, '2020-08-26 07:54:01', 523),
(217, '0218', '$2y$10$gQJxrZs5YykzqTFA6iEmY.50BHnDwAzwe6xfkeUD7tEr9OQL704zS', 'Luvy S. Asis', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(218, '0219', '$2y$10$LOGGcdGB9Y1QVssbBEVYgeChQNBgDmIvZOBStbkkFvcjyFod021w.', 'Eduardo M. Abad', 'ASSISTANT PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(219, '0220', '$2y$10$jg5ou1jjuVZAciUAnMFylOK/oEjjl.wg.5ZaO9Zh5DMizz27V36Pa', 'Margie B. Ocampo-agawa', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(220, '0221', '$2y$10$zL3jKo.7O6qKs9i26dQJleUbQLAoeGZZSCKEt7SpSnoth8CWTCWt.', 'Alex Rafael Aragona', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(221, '0222', '$2y$10$uWfo6H1rlJQsPHesRXCtg.FWI6yXDvfTWCyzSYUwQN5xefr/67Ca.', 'Erlinda M. Crescini', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(222, '0223', '$2y$10$UuADdMq/kkTMqhtnzjimBeL/3gO5mlYkgaf4CliM7Gw/vWhkKJdji', 'Renato A. Canaria', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(223, '0224', '$2y$10$3pGGaQInxP2Bum.xGZ.hvez6RUZChnowRmZNVSp8HwFwFEw.M0Y1e', 'Melissa S. Carbonell', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(224, '0225', '$2y$10$NL.inrzRZFiTfNM0NUsaUOn/sluGJoxzkDUaGX6R6ZokybzkOYeUK', 'Asuncion B. Merciales', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(225, '0226', '$2y$10$L/yLqby0VaDLhC4tCOjj2OXqy81uHWPt7BKNAhII2j5jm3W6VtERC', 'Iris H. Eboña', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(226, '0227', '$2y$10$hEM/bbYzQqpanbYWmhyOWeLDX5xUWWhd4ddeBe4KMIoSjEaIFK3N6', 'Gennevie L. Elep', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(227, '0228', '$2y$10$8mqk4lM0LZuv/MOFkjbs5Ogn14KvZxhK8pwYa5vO4Rv41X6o8xvbC', 'Menchie I. Bernardo', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(228, '0229', '$2y$10$DVTX35MFKw1aQB.DMlG8UeV2zVpAKIqo7vVuFqTSmFjPj4xD1xjc2', 'Aileen S. Lladoc', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(229, '0230', '$2y$10$ip2LOd0ywbdVx0UEzBfNm.8pK7P6jkslQi09LQBMFa3Xn78VtQV7W', 'Lovewiserlyn O. Dela Cruz', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(230, '0231', '$2y$10$Ef.gygo.WRwuzhim3VhGEOjkIiYQhsVTwvgBc964CLpj8A6MULhay', 'Sammy P. Pitoy', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(231, '0232', '$2y$10$fitYPm6sZgUDLuF5WAYz7ew88.FepszABByl3eNYCnd2O2kks0dPC', 'Madelene Grace G. Rocas', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(232, '0233', '$2y$10$MH7yeoM6rKaIrgaoUoZ7Xe3wWcvZGHxhbB.UBrUuNJ/VIytgkRxL.', 'Analyn A. Vedad', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(233, '0234', '$2y$10$Eb77bi9HS8QaGl47FJ9fKOwx.mc0OhgpER116g9fcC3XTXmjx71la', 'Herman F. Sumaway', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(234, '0235', '$2y$10$4Od6FupnjN9F8WFPARB9jeE/sYdy.7FWATm3eUnHsWJOD.H2xGwlu', 'Jose A. Sapusao, Jr.', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(235, '0236', '$2y$10$R8gFfGTuyLVgBWHIJrSM9eLgK5biRNJTRTfSZZKxuqJZmMQuu1xOm', 'Aiza L. Castañeda', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(236, '0237', '$2y$10$lx5UNjoo1BHzrlAJSafgu.TlJNXi95Xtw.yDE3E2rVUocZBtFVqua', 'Alvin M. Tapia', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(237, '0238', '$2y$10$QwTGtDN3pi9DDNilwfJ0.eeIyALyyRACYZMAxaqbhXjAdjgZYv1se', 'Emmalyn C. Guaves', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(238, '0239', '$2y$10$dKhMIunS.1.JYSZAB9oRUu4T8RMys969cN/VY2Z2naJIOIICQmL6G', 'Pilarita O. Cabrejas', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(239, '0240', '$2y$10$FeemRVIOKxdRUZ.EEUfcIuGLg5cYxNc39EL58FMvCLB7xZ4K2EV8e', 'Jesse O. Opeña Jr.', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(240, '0241', '$2y$10$zPOvJgboeC4/fiy0hv5MROzR84jcoqyZTUkFF6.gaXWOAbrfLFP86', 'Maria Carla R. Mañago', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(241, '0242', '$2y$10$.LKOBgh/m7MdcMMNQx6JDuGseKVhPmkgUSz1kZDctoWOp1Fzn4.yS', 'Wilfredo B. Abanto', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(242, '0243', '$2y$10$Ltt.HEOR1ItJNI3F1LO32u.hSy9WfFtCgcvWLEkrx79HUO1WiOWrq', 'Stephanie Grace C. Lanuza', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(243, '0244', '$2y$10$7bTQtNFyy5CKsTdZ96xXved7OzaGXlEYjEWEtkDovuMVEhRMmEcAe', 'Mary Grace Baluca Bolos', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(244, '0245', '$2y$10$FojIWNgqgC4QdWQ9SCMXMOZIKyKcO7tMF79Rxys1NijqKYhpsB0ky', 'Rose Ann Dp. Aler', 'INSTRUCTOR I', 8, 0, '2020-08-26 07:54:01', 523),
(245, '0246', '$2y$10$kDEKXRFoh.cS2EjdAnhR0OLFlrCqg4sNXgN9CfWy/JCEDl/4F7xre', 'Irish M. Orgeta', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(246, '0247', '$2y$10$azOWHG8v36mbxMK5eWa4BuzIV7jDM8iyNx4UUrkpeg2lTugnltt7C', 'Sigfred V. Aler', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(247, '0248', '$2y$10$DUscBUEaAV28UblKTLQt2OQz7NtOM8E8LOPxZM3yguwS0K9XYTTo.', 'Bryan R. Arellano', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(248, '0249', '$2y$10$Xq501tqAUwBeoSfNOSwuue0ZM1Uzmyavxnpqvi9iA6S4g2ja2q3.i', 'Joan P. Rojas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(249, '0250', '$2y$10$4E1YmaG.Ug4wueIsUfnT0eHIYwM3k7/E4tHd.YkLyU3W.SrJkyHja', 'Adrian C. Guinto', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(250, '0251', '$2y$10$rujU1mL5ZduosLOuM57US.yZJFB6Ztk1EXwe2smZdZ9eYsOd2yLIi', 'Ryan Francis J. Macasinag', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(251, '0252', '$2y$10$.A6G..W.e13UAEuvdxDuJe2Z3eEZ9WRz/drczkm6FgrskkGaZY7BC', 'Kristel May. De Arao', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(252, '0253', '$2y$10$NWy9ut9MdNhrQs2TBpTWaO0s1risRCdgrUZp3bo6HHWwpaSCRew1u', 'Jhon Paul M. Castillo', 'INSTRUCTOR I ', 7, 0, '2020-08-26 07:54:01', 0),
(253, '0254', '$2y$10$ACAKr1MAhk0pLlLWQtZ54OEq2TlR3mbWtzZsZ4f31ZW9cXRhhFed.', 'Pearly Beth C. Ogayon', 'INSTRUCTOR I', 7, 33, '2020-08-26 07:54:01', 0),
(254, '0255', '$2y$10$R9knmti2O951Ys7lq1SAEu2aCD.RHH2egViIKnzMqzaimcRAdRe9.', 'Roel V. Rafer', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(255, '0256', '$2y$10$1h15Mmtvo7ACwAhtuCcchOQfacwxveYPthQ3b.gW.RePZo0pxizCi', 'Bryan M. Torres', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(256, '0257', '$2y$10$o74t0d2i99Lce87jetIj3eulegaasuec99n/lLjv.q6YbD4HWFWRy', 'Maria Theresa B. De Panes', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(257, '0258', '$2y$10$eVOhYpqmOiEVKLwnZNLDTeOtt5MxHBHZYAHDkWbZ7pLCCTuFvD1ee', 'Melza R. Macayan', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(258, '0259', '$2y$10$76WHNvqrq/ZXAif7BTXpGeXn5b/.y88F.IqrtuAZlrDG/JWgaSy8e', 'Analyn D. Ramos', 'INSTRUCTOR I', 8, 0, '2020-08-26 07:54:01', 523),
(259, '0260', '$2y$10$PGhzfR/dx11vda/zOOYyk.OMix/wymxHuXvmdLieeyvjErMEUpUom', 'Joselito A. Olalo', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(260, '0261', '$2y$10$U.J8WZ6PTB09azrZdlmlwO5GzFAhhHXSAyB47UfGl6qijvMlBX/0K', 'Kay Mariz D. Bendian', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(261, '0262', '$2y$10$hVuoLjiuaJFOAgfy9Wwsqu9BzsaSYlCSKOBHDOghhH8Jcbz3Xo2IG', 'Hessa G. Azul', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(262, '0263', '$2y$10$.vddCyXoGJnsV1Os3HU6Zu0uMPx8PRjUe.zlpnA9NF8NM3uwsXJny', 'Ferdinand P. Francisco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(263, '0264', '$2y$10$JxBZgQZL5WjtN7UugzhcL.xyGS9hXpL3kY0puMbijzGF5mD8yPcm.', 'Japhia V. Medillo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(264, '0265', '$2y$10$pKU7W.I68f2JlQIAyR2bzONLp4F0cmZjDhb3sPc2d6S/phK0zQCDO', 'Nicole Anne G. Panotes', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(265, '0266', '$2y$10$ip9wDAweug58Ja58iF4Qn.UN9sRCouCXT.Czc9O0S1RKR.cfe/cJa', 'Clarisse Antoinette T. Duero', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(266, '0267', '$2y$10$CP1X.PU/nAwrvNhqfjS2uOQe5iEnAG6aijOsYvI1YTgZ3Wa8OkACy', 'Edgar P. Aban', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(267, '0268', '$2y$10$TUJucGEiraZKgvS0d1X/9.WcDBdbEyu8nMxXFl8MMCxf6NghTOZXu', 'Rohilyn E. Colenares', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(268, '0269', '$2y$10$99j9vigTNeu92ThqsKpnP.IBQMhNe4bQEOuHWEUtqOiYj.nzHjA76', 'Jeselle T. Hernandez', 'INSTRUCTOR I', 7, 33, '2020-08-26 07:54:01', 0),
(269, '0270', '$2y$10$HP3VETsJvsDNjydguxiuWecCZgrzU.lwXURMo1V7AEBYTAWNCQ6zm', 'Richelle C. Vedad', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(270, '0271', '$2y$10$BFtEuzHdD87mjd1nNji1Een2Gm./LHRnYqdnsow0wGaZj5K6FPepS', 'Sharine A. Gutierrez', 'INSTRUCTOR I', 7, 38, '2020-08-26 07:54:01', 0),
(271, '0272', '$2y$10$82LAQ8pSWMpX.5z8J8fxoewOnJNlnF1TgOWCg0nkvxKEGdaqdo3ym', 'Gelyn L Bongabong', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(272, '0273', '$2y$10$fLjXsIy.7u/karAfaFCER.l7FALIM.T7Z0ABaBfrNInGtnzhfxa0C', 'Efren E.. Alim Jr.', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(273, '0274', '$2y$10$ucai8sFO2UP489SWTN83nuEgt3iNe99xFGWxcg0iTRPpUNSznYgCC', 'Michael Bryan Z. Rayos', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(274, '0275', '$2y$10$F.xMpzNmSeIWn.fKtI4Fj.iefzE3Ce4zllHyTfcRZ484OKYNWaMQS', 'Ma. Kathrina M. Pobre', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(275, '0276', '$2y$10$XrF8KPPHOLTr.K7IoDcDg.efxB7ZjECVYb/M3XmFw3HAahmNGn9Gy', 'Edgar P. Malano', 'INSTRUCTOR I ', 7, 0, '2020-08-26 07:54:01', 0),
(276, '0277', '$2y$10$o4wWvTXeit8Sp49.ZyE3Ee0I9m2qwc6YGJ64Zgc06/p5V6tjt4wNW', 'Gehana D. Lamug', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(277, '0278', '$2y$10$y7kURSrvQ7b9TC6yM2NjeuqMlGM1ESqhATWLVc8k6hfPzRoEH6FRK', 'Jesus B. Roncesvalles Jr.', 'INSTRUCTOR I', 4, 47, '2020-08-26 07:54:01', 523),
(278, '0279', '$2y$10$iGqh9u5NcejyrF8SIbnQrOiPWekqIkHeHGGvDtyc.6hJ1/7M4CNDa', 'Mark Anthony Y. Manuguid', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(279, '0280', '$2y$10$Wfhok9htOyCi3YvAD0huCeEr.lUkGDq7oHthTa2.l8tteXqHSkbOu', 'Rayniel D. Zabala', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(280, '0281', '$2y$10$EmZkk1Hw5khQkW5GtnNUh.lk1ilhtDQI9XujAq59o9na1HQMav1cO', 'Jeanny A. Nagrampa', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(281, '0282', '$2y$10$FRuLQoQXsswhUBaytp.uX.LRA7NMyRLKy6QSjZ4I7wLTNfCNXX/PS', 'Lemuel V. Aton', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(282, '0283', '$2y$10$vkM3RU2fLz6TJQ7yrPuOd.ztzAbYBmLlwX8mjRSX7PSuYupAzxDxm', 'Alin D. Quibral', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(283, '0284', '$2y$10$mW.vVAJqrP2g4TfVLPfccemymFEIQAWWNJwsTVo0JGh.lhTy2gacW', 'Rhodaviv V. Avila', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(284, '0285', '$2y$10$dd9e/Ku8gHw/.Os5iKLMR.CqoRK2f1das4K0hjvE4HYGU/qfPl3oe', 'Joseph E. Rubio', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(285, '0286', '$2y$10$mjauRDWnk7nRY01StZD6JOnbk0W5Tc.0q36v7SRRr.5x.hMym6jbG', 'Aireen M. Babagay', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(286, '0287', '$2y$10$gTMP8bDjAsoMN9bCmTF8A.aVZD3.UIKEhMbWVC50VNOU6zAb0eeMO', 'Hazel Joy Q. Albao', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(287, '0288', '$2y$10$Z8m1wHGWN.bpRikqA5unI.RSxdc3y2b93L7KynEEWzPhI2lnt8bxm', 'Precious Princess T. Saba', 'INSTRUCTOR I', 7, 34, '2020-08-26 07:54:01', 0),
(288, '0289', '$2y$10$0O01UUCll89KTTjQzC/WneH/4C02NKels/xe9aHr2pAZlMKKyKMeO', 'Jienneffer G. Tabanao', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(289, '0290', '$2y$10$0rTgfwEhxO6zKXK.MquPwu308WfyfsBzWWRqRbOZb6mpkLykH9.pK', 'Shallah Rica E. Mancenido', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(290, '0291', '$2y$10$4EE5Lr3iJfmu/dON.H9D5e4L7cYMprtcIbuDntOnrcevuv.JUcNGC', 'Excelsa M. Fernandez', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(291, '0292', '$2y$10$MMA.tFVY34dZqbVhb.jskeIhSjrHiDGE6TtotgQ4lxj7a5qHtMkGi', 'Francis V. Villacorta', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(292, '0293', '$2y$10$I1BaYr78SYg6zfr5QAXW9Otn6lZsFPILNOX5fy/BSZveMnWDuPWPq', 'Mary Jane T. Abestro', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(293, '0294', '$2y$10$JRVXsNz48jriC9x1VwQ/Zu.dEZY28uqrWiLMQtYrJDQNCEWFGnRiG', 'Ria P. Morales', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(294, '0295', '$2y$10$JxRAumBJ/Ek2nnh9Yc0I0uww8FNOzQCafZB1O7ECnrcBol4KvEkg.', 'Mark T. Bonaobra', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(295, '0296', '$2y$10$lOVst0d6.OB6FQSwQQEK.OWdLMCWsIIUJR9EDXwljkXEzVKLoYP3u', 'Leo Agustin P. Vela', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(296, '0297', '$2y$10$ONshxVsAwg4.3nu5uGPUiOONGrsuFvXOm0PdtBVRDLwshmzpVtmN6', 'Agapito D. Borjal', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(297, '0298', '$2y$10$Sg1w9DERJHhSlPOKUjs.kuPCw7YPDfDQRIPwqpg8Eg13Q6zBKa6EK', 'Honeycell D. Baldonasa', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(298, '0299', '$2y$10$kFowMvvmbKEWbUE.ix55cO//M437wyLM0XOkZlCm2OxmdLWqNPYuC', 'Frederick B. Gaurino', 'INSTRUCTOR I', 8, 0, '2020-08-26 07:54:01', 523),
(299, '0300', '$2y$10$Bd2FG58p7X3FEZL/gxnoiu0ImqtwrNU26pUrYR63HACSceIUQg52W', 'Darwin C. Biag', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(300, '0301', '$2y$10$GuiY8vOS6ZpmQVb0Kak9QeGHR3fWVTl1d3PMmlYn5RYIeh/wvT0zm', 'Consuelo R. Saenz', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(301, '0302', '$2y$10$TCP2W1QaSHqKxKmMjxkmLuts5QxLXbp266/.FKUJEpMxGz9qfCtYG', 'Ma. Angela Josefa G. Pioquinto', 'INSTRUCTOR I', 8, 0, '2020-08-26 07:54:01', 523),
(302, '0303', '$2y$10$sHVj6q9J6N4UVwWSAXefzOBYH3UzBURZPF9GwrrsasyuASHFXG0bK', 'Joe Nelson Villamora Sarion', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(303, '0304', '$2y$10$0HurnrX/J1ar3CMZp9lFhuh0RcHV439QYLALyq0c1bkgUhkIcTxdy', 'Ruby Ruth Apple M. Abanto', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(304, '0305', '$2y$10$EC8c/jRD3WLRSUToSdjSt.L8nWtlANaPLwYh6YN4doDy3f7m/DiXy', 'Ariel L. Balean', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(305, '0306', '$2y$10$CJyZb0T2LQquNn39abUcGuqd4.jzHV01wa4.ntW1B1kLo7jKI/v/u', 'Mary Jane J. Ferrer', 'INSTRUCTOR I ', 7, 0, '2020-08-26 07:54:01', 0),
(306, '0307', '$2y$10$3Qs85TTApFtu5FGnUTVRne1DAYVVyYDL87eaHZegvFg5bHxaJMukW', 'Nestor B. Badillos', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(307, '0308', '$2y$10$5PpCKSMV1D4SpQwGCQz0w.jTsvwYKv4mhwfC3Is0fx8iFHr12xg7W', 'Marianne Mae I. Jalgalado', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(308, '0309', '$2y$10$UeZbv5bupYwcq8u3JUs2zu7Mtis101D3yqUQk7ngTRyODspkZGugG', 'Rayvimart L. Mancenido', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(309, '0310', '$2y$10$cLawOt45g0DUGX/TtE5nuu7j8UlweVedUTDaxYFj842vYYk.qIhv6', 'Junil G. Salmorin', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(310, '0311', '$2y$10$DOAHt1nkvH9x/6CzOPgcUO03WumUWPMpYvMYuZyYrglfSjCpatum.', 'Regine C. Oco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(311, '0312', '$2y$10$Lhs6xSsT96IaR4DXVIKRAOdETtyU4r6nCkBers4XtFMUTJkQHyriG', 'Arrietta Mae O. Llegado', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(312, '0313', '$2y$10$DFLQVSFic9guQP8GNvNqhebpLYrmfc8epxHn5pNMBqGSKtzZ3uUOy', 'Ma. Luisa B. Borigas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(313, '0314', '$2y$10$tu/fjCT1HsxlyY38SpshdurjljMK7zOSOHGR/aucnW36qNwzgKZN2', 'Jade G. Ocfemia', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(314, '0315', '$2y$10$5m4qhGlhsSRpaKQFRw/DcusBUM1yUw.feUeLCo7YNp9YzBuR9wX2m', 'Daryl Vincent P. Petas', 'INSTRUCTOR I', 7, 47, '2020-08-26 07:54:01', 523),
(315, '0316', '$2y$10$n5uJOkdUG.5PImuYZPffjus3I9T3c4VVF9OBrGHgAuGEpCLdeHqMG', 'David Jeffrey V. Guardailao', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(316, '0317', '$2y$10$pWdYNG1AmHtAA8SoYpzmMOqmMGZ2ass5Ede/exeDre2zJYvbJIqbu', 'Karen Joyce A. Mariano', 'INSTRUCTOR I', 7, 38, '2020-08-26 07:54:01', 0),
(317, '0318', '$2y$10$EcC3H8bZTP291W1TXmS0lefxpPLbr.AcOzrZLZYCeEspgf5CFtD8.', 'Arlene A. Nicart', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(318, '0319', '$2y$10$iY71yGBVaRzofK.IcCtxfe4g4an6mcy79ZzvB8rwBc9FbHbPFmCfG', 'Ricalyn E. Sumpay', 'INSTRUCTOR I', 7, 36, '2020-08-26 07:54:01', 0),
(319, '0320', '$2y$10$C4nf.35Njhs4dT/Ba.ymaegEznS.jg9uk5mJGKltBoGiInZDt1Q/S', 'Marla V. Relloso', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(320, '0321', '$2y$10$M4YdqLJaFL57nA.2N84WqOrGla9t/7vOBwEu1ARTJMV.8LLxd7/x2', 'Jennelyn S. Vargas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(321, '0322', '$2y$10$CSPphNCNNG.ebeDzCbFJtulVR393Og1ASX1nnTYMvnvukYtma/3cO', 'Ronald J. Escasinas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(322, '0323', '$2y$10$lc66orwBf7npM5EFC8y8QOh4eOqn7KTMKZQDIWjDEtwo2bsRQfDzC', 'Raymond Q. ZARATAR', 'INSTRUCTOR I / MIS HEAD', 7, 10, '2020-08-26 07:54:01', 523),
(323, '0324', '$2y$10$Zja9K1O..TVXaa7wRERzP.OLDBwotoaNrhETFQBphRnqaJ5xm5dc6', 'Norlen Jay T. Azul', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(324, '0325', '$2y$10$vg/QwYSiFNygIozqaDaMBOT8tqBURHD9G0TRpvCIGqm7.fTIN3kT2', 'Peter Clyde B. Lamadrid', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0);
INSERT INTO `tblaccount` (`accountID`, `accountUsername`, `accountPassword`, `accountName`, `accountPosition`, `levelID`, `officeID`, `DateCreated`, `no`) VALUES
(325, '0326', '$2y$10$hrGij.BxPKqZtxWCsIG9NuuvKP.HywPbbIrf9ZtIBfCaB/VQrot56', 'Jifferey E. Velasco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(326, '0327', '$2y$10$Ul3HJp/.P8YVSCyVTpONUOlvzfOCFqXnw3KB5t7YK6NY6V2qy.kBa', 'Julio B. Cas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(327, '0328', '$2y$10$M9jS8S/XslH.ae4vTFguMewOZwjR2zVvEumWnCwQFc0cKgcuMNpFq', 'Analyn B. Asis', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(328, '0329', '$2y$10$nmgjQZFGX56mmWLSHQnIHOBPnlq6xKEJFlkJ2R.xQ0qlMg3wRN.0e', 'Marvin G. Bequillo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(329, '0330', '$2y$10$9FhL2yBHjPXdvV8YTKbE2OI9xNn9PXjNeWw99C0NsnnSw4rv5zxP2', 'Arden Peejay L. Ezaki', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(330, '0331', '$2y$10$IHgzdIvR3pd3n7wvzCb2BujHp49TtKhmH0O7FjdJKMdtFTk6xslEK', 'Noli M. Esperas Jr.', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(331, '0332', '$2y$10$MtIU2Kh4DydciobAoOZFoeET0zQ44ZjcLAYVbNkwTINXw.UXvUUya', 'Ginalyn R. Sabroso', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(332, '0333', '$2y$10$InPVfTlEBfRKY7LvKRlJ9e29otTC8TNilBWMKMlXVJvKP5HTUU1Xy', 'John Lester B. Sinangote', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(333, '0334', '$2y$10$HQYuII7.8eQXyqlfc9EfT.tVSBF0PRcrliM64bQhNa5dGnxqgHhAy', 'Roderick P. De Leon', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(334, '0335', '$2y$10$eJHkN9S1jgwWLU5YvY260OnsPagFjzZIU0cxrOQv25FWkMOX3HdHm', 'Judelin S. Alvarez', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(335, '0336', '$2y$10$9rHoET1Gwxc3.RdF3oHkyOz/fI1zavZg4LzE6gpkZ.fha3Blo4GvW', 'Luis S. Bardon', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(336, '0337', '$2y$10$pDbNoK4cG0j6XH/UK5OLDefUKcvHD.wUWICWsGx0BDKo/Hpoqtz4y', 'Regine S. Balmaceda', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(337, '0338', '$2y$10$hbE.hvhT1wWdHXzjbNFcGeV36vjXu4Pw8k7v8ucoJfLDox3UfuqF6', 'Ryan S. Rodriguez', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(338, '0339', '$2y$10$KInh0/dlVqpNmwrfWYNEJulfoEFq2R.InsQDPGNiv.JOKFsf8T2dC', 'James Robert R. Vaughan', 'INSTRUCTOR I', 4, 33, '2020-08-26 07:54:01', 523),
(339, '0340', '$2y$10$OLuPyyUj0Ns3kK03PL3AaOJpQKf8VX0F7FRfXNdb8NQ6pI24pg3Ga', 'Shiela Marie O. Diezmo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(340, '0341', '$2y$10$wZ5v/xNuHOoGFkfgQVQCfe5QJjiTj8CijYPeZbUZJ7zm3YsAZA7Yi', 'Noel C. Alegre', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(341, '0342', '$2y$10$x70M2t5u34N2k1ovNN0Xn.iLqr52pj6nf12vWWOnJ54y2aNeCxsE6', 'Mary Nor U. Rada', 'INSTRUCTOR I ', 7, 0, '2020-08-26 07:54:01', 0),
(342, '0343', '$2y$10$X.etkxEHJhLuW8h4yFo7xOsst1PJCM2Kcbe1x6Y4rypMbO9QNIWPi', 'Jessa B. Cano', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(343, '0344', '$2y$10$0tgQcadiYGcj5K7jJtTgCuUNAuRVhPlmQ46Rvr9bHlkpAJVljdRJO', 'Floradelle A. Vega', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(344, '0345', '$2y$10$ntFktcadWAbYgAwuSyuGeOb.2ZzueYJ0IO1F8i8K9VM6LL38I4H7G', 'Robert Clarence B. Lee', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(345, '0346', '$2y$10$Suj1sPNpvrJH0Su8QILb3.T975NBKi42.fQuA0Um9A5DkEjlZNwUG', 'Mary Grace B. Imperial', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(346, '0347', '$2y$10$0evJLk5tfEY19GxdZSXatOgFaBpt2gGnZ5.tGjuEOULkqZwRuguya', 'Edralin R. Raro', 'INSTRUCTOR I', 7, 46, '2020-08-26 07:54:01', 523),
(347, '0348', '$2y$10$KtWrKOHi./tOikRLfOuLPuq7B7o0rK5EbEpmwnfCw7MBVi7hvlJ7y', 'Maria Senen D. Bongulto', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(348, '0349', '$2y$10$HxJKMwT1SJIZUxO2yq.ytOWPBxtmYyZvbKET6Vaao/D4lWacl0W7e', 'Mylene N. Elizario', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(349, '0350', '$2y$10$Tl9Ki9K9kHmpHFH3drSDzuJmn9YdjMaW/4dlaZ3XsyYoRe4fFunii', 'Ponciano J. Puse Jr.', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(350, '0351', '$2y$10$S8xqAODP0vUmuXUPIxzE4uAbqfm7TPrbUBGRXt/Rg3AP5cJS7OSbG', 'Sharlyn Rica P. Nolasco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(351, '0352', '$2y$10$KQHN.55Wkmw3f.AXpfLUkuqyQUb/GbFnycMzqRyvGDMcgD2XERZg6', 'Sherwin R. Reyes', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(352, '0353', '$2y$10$M0Yy8RLeLZhVlEcRiysSc.B.ccDdriOyg.hZ/1GpreW3l.yBg0svq', 'Malyn B. Manalo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(353, '0354', '$2y$10$ro/UOoMg8IQ0T51neEJIIu9NRMEqZ.BWI/oDUpQ...nRuGk1t5ARe', 'Arvin B. Taruma', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(354, '0355', '$2y$10$2R4vZ6gAhmS.76BuPxIMnuI69EGgh6P7meXxePz9MEZw3mz33Y7Da', 'Thinez B. Bobis', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(355, '0356', '$2y$10$b79STmuuSLzxQZPSil34ruNhA1zkA0EU9kJ2AfW48HvXWUDOVRxv.', 'Manuel P. David', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(356, '0357', '$2y$10$CrxDkcQ41YfEH.B5okxEW.fgWgThURpZuUSPTP14iuyTYu82K0xGa', 'Leo Greg D. Villasanta', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(357, '0358', '$2y$10$OHEtq4UW4L5DJ2Mt2uVxzusGs6uwNjvbktpR1FfUFzT1e9SQrtbny', 'Jogee Vern Katherine S. Bacerdo', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(358, '0359', '$2y$10$p/YFcDnEPhXctazCEReM8erHzlUCSezQogKD/nuqy2QT763HFBLtm', 'Raul P. Batistis', 'CANTEEN COOK', 7, 0, '2020-08-26 07:54:01', 0),
(359, '0360', '$2y$10$hwBSuB6qVGVc6RhQu2LrvOh9M93HutdDNkdNnYDzftqkTOi7DJEtm', 'Emyruth B. Chavez', 'ADMINISTRATIVE AIDE VI', 7, 24, '2020-08-26 07:54:01', 0),
(360, '0361', '$2y$10$5bl9VOvDlkrDC6LDLOC7bexVUjGO3plxYQ9heX31koQt.c6RE1AuG', 'Glenda P. Dipasupil', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(361, '0362', '$2y$10$isX7x/QhD/2tmYO6n/ZoWuoXghZa3pzZZzEELha8TNQS2g6cbHZT2', 'Julie Fe S. Laborte', 'ADMINISTRATIVE AIDE III', 3, 27, '2020-08-26 07:54:01', 523),
(362, '0363', '$2y$10$UreE1FF69WqOhtOfiT1iR.2XLM5CAc8AWlc03/lep1Hgf6NJKWKCy', 'Merly J. Torquator', 'DORMITORY ATTENDANT', 7, 0, '2020-08-26 07:54:01', 0),
(363, '0365', '$2y$10$K2m73dm8XoA5GZq/uQQqBe7dEyZI2/u2j9/k5/SoRR6mzi14TuVjC', 'Sheila Jed E. Mojal', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(364, '0366', '$2y$10$CF/eE4kSApcJFqCE.oKGF.ncKuh.cIlK46D/DnCcoh0EnvHg8F2Ne', 'Froilan P. Balmaceda', 'BAND MASTER', 7, 0, '2020-08-26 07:54:01', 0),
(365, '0367', '$2y$10$XmGstG7liwCHm5C3oLtI8uLYd2NR7HdUR4JDFmC3QIBNQ/ZNWDDW2', 'Jeffrey O. Narvasa', 'UTILITY WORKER', 7, 0, '2020-08-26 07:54:01', 0),
(366, '0368', '$2y$10$o4pwARNMq/RmyUYLwlDnx.GSLDbyjEOM4PCYkEh8gUQQSkwkQimGq', 'May Ann A. Rodriguez', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(367, '0369', '$2y$10$suZUJkEKygPZHUXTNpKbWeMTm.7cC2Zq3lUEFmsY4/4DvgTk4DBVS', 'Arjie B. De Vera', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(368, '0370', '$2y$10$aVf839Ld/EbW1lwY.caS8.NRB7E//RZTZTlq45dSB6cLlJHwpb8HS', 'Emylou L. Madrid', 'CLERK ', 7, 0, '2020-08-26 07:54:01', 0),
(369, '0371', '$2y$10$dh17tRYRxvn8LpHc/BVxwOKj7rbbvWPugb4C1FPG.Jhp6Sp7a0B92', 'Rez C. Sanchez', 'UTILITY WORKER', 7, 0, '2020-08-26 07:54:01', 0),
(370, '0372', '$2y$10$RZaAIeJotqXkRGjbHP3jOuCP3XLWdys6y8SeW058bnWNqTdO/dSCi', 'Ruth A. Racca', 'ENGINEER I', 7, 0, '2020-08-26 07:54:01', 0),
(371, '0373', '$2y$10$ZBApdEUL8AJ5XHEQElNwZuIcwPVlH5qK2.ng0hSVE2sJwBZAN/cMi', 'Joanne M. Orendain', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(372, '0374', '$2y$10$6wW6Sc9WiewjRNn/5GuT5uSpS1uf/29ur2RgntRYWI9LdUUHFLWOm', 'Analyn A. Lagumen', 'CANTEEN CREW', 7, 0, '2020-08-26 07:54:01', 0),
(373, '0375', '$2y$10$y00tdLwRY8q8yRpIOMFYEug.RzMPt6VLsLWXeCh8zw7vrXQ3mj386', 'Evelyn M. Recafrente', 'CANTEEN CREW', 7, 0, '2020-08-26 07:54:01', 0),
(374, '0376', '$2y$10$mpC//w5vJc3ub93PVGPc9uznx5MGlA3xUgupgJEr4e.ju92DoiS.u', 'Mark Joseph D. Mapada', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(375, '0377', '$2y$10$7Bh5TVA1D3.kgiCKRGRHmeyazbyx/cQVHtQ/Otpu3a6JB2i5drEl2', 'Perlita Barce', '', 7, 0, '2020-08-26 07:54:01', 0),
(376, '0378', '$2y$10$F3L1Wh498ia1mF.YM5Yo6e5AvhWhANjuOhImbwLOoSbxX2Fvp0RZq', 'Nova Vera C. Morales', '', 7, 0, '2020-08-26 07:54:01', 0),
(377, '0379', '$2y$10$ReO.lPLYsnxqUoHczMRw.uB2jVXErJ55NhmU1fyNZ8B/robvkeis2', 'Hazel Zyra B. Elep', 'CLERK', 7, 13, '2020-08-26 07:54:01', 0),
(378, '0380', '$2y$10$CgEiMWDa6.svGLPdZCcBVOZaxF8M29IlmPPli.L/2c975TkSB0P/2', 'Michelle N. Laborte', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(379, '0381', '$2y$10$v0mwCQ2jypiwkpbv3DOjj.C5./OLkrvfA.40i4hiwhSgyhD28wvuK', 'Alfie S. Bares', 'CLERK', 4, 44, '2020-08-26 07:54:01', 523),
(380, '0382', '$2y$10$GRDl4.yUxWg4ES7b7Ai8O.lN2DT7HKgyGOBbudzv7GWOo4oHTbG/K', 'Pilar Mae C. Villaluz', 'WEB DEVELOPER', 7, 0, '2020-08-26 07:54:01', 0),
(381, '0383', '$2y$10$8i3frLXArRGmDAB.5zsxEu3499.3jI9RYGkygYRnjl/O.W6cpr8Pe', 'Princess Jane S. Laborte', 'TECHNICAL CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(382, '0384', '$2y$10$rrCyHovvElX7TeTV/v4/j.juxxynx9P6BZZ8ytvsaPNQquLIrhFb6', 'Loina Mae W. Salamero', 'BOOKKEEPER ', 7, 0, '2020-08-26 07:54:01', 0),
(383, '0385', '$2y$10$8yqfOD9T8I9SW2bHWJ3wkuWXHVH/tVfG.i8GgHVf3RD4TFTVQjXwu', 'Rochelle H. Mercado', '', 4, 45, '2020-08-26 07:54:01', 523),
(384, '0386', '$2y$10$GOpEoANMLQRd54PDUGG2eekUl3eXFcibzBE08s/Z7LRGK6mynq40u', 'Jocelyn Pempolyo', 'UTILITY WORKER', 7, 0, '2020-08-26 07:54:01', 0),
(385, '0387', '$2y$10$4SGKFCz/satbyZCQvUsKIOebkpIah9U83RKnrwDue5noVUXy4Fx1y', 'Hazel C. Balane', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(386, '0388', '$2y$10$iVZWoqaWGl5fNNldFQ6b7uzKX7k.QQ.1FhNxoRDMACR5p0arbMIs2', 'Jeric S. Bobis', '', 7, 0, '2020-08-26 07:54:01', 0),
(387, '0389', '$2y$10$.XpDgYecuFFV1JJhrTroK.hldekWJU0M6PysfZBYKq/ctGHEto1ze', 'Rommel E. Edoria', 'PRINTING PRESS ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(388, '0390', '$2y$10$sJsagTcI21u3fKZCYNmwduWqs99uae9zJTOInhNnscnlwtxz/.Sq6', 'Mark Carlo Barilla Evia', 'HATCHERY TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(389, '0391', '$2y$10$8uwtcYQxZZ3wwwFVS7i46enhjhr7EYgJT38E948PMyUuVD9XTye0a', 'Mariane M. Yanto', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(390, '0392', '$2y$10$Ix.qns1IGwbDz9O5Dzz0jeg0m1xhzxS1rFllG6otLuZl9kef4HaWC', 'Sarah Karen C. Barcena', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(391, '0393', '$2y$10$dzunSTdNZthF3mn4KuZNbezqPrY/g6ZXw9POeeM3z5lnHa.yCboSK', 'Jonnel E. Ferrer', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(392, '0394', '$2y$10$mBtTnSCBHFbYimWNtffbwOJA7BUpVXZ6Fa1YfRsz1qFOrudPA6nne', 'Julius S. Laborte', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(393, '0395', '$2y$10$Ouf6FkM7lsVo5V4pudMPVuxBQrU7E1MIL2V.hFeg3d.pP332.6ypS', 'Francia C. Ibas', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(394, '0396', '$2y$10$JCdOvGE2uFlrFq2VF5DzxOLMtLeskH7sUTKPwGY.CrQMKt4gagqtG', 'Leandro M. Israel', 'UTILITY WORKER', 7, 0, '2020-08-26 07:54:01', 0),
(395, '0397', '$2y$10$vT/SqSr4WHgqkAwbHSOojuO2vCi/bKzO43GpxHuj/2edDnIIErjO6', 'Ian R. Sta. Maria', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(396, '0398', '$2y$10$Ng36AMO0r8dgfXM9Kp5FqOjFUwW6oH.jNAwY6H8v3ZSQ2aDuNl9q.', 'Joy A. Namoca', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(397, '0399', '$2y$10$2obxCwWPQwf2s2kb6Q147u3QwQo/mAS7S9TXN.j6hArK6GBItzzRe', 'Leo Ayrald Z Parale', 'LABORATORY TECHNICIAN ', 4, 36, '2020-08-26 07:54:01', 523),
(398, '0400', '$2y$10$cxXl3WR2JT4/QwpgbiuVtuaGyD7OeqlJf6JGeAPJeXThQX94nPV.C', 'Bernadette I. Sta. Catalina', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(399, '0401', '$2y$10$ikorifCvXd1NGYa5q7sWmOUQ73DPMHR5BsMrDflUhVYE.du6SKkNm', 'Erika J. Herico', 'BOOKKEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(400, '0402', '$2y$10$D8/uiEnf2.6nd8oebE8Gw.Ijw6QFl7EfX.N4To.U3QNJR0OqDVziC', 'Maynard S. Supsup', 'SYSTEM SOFTWARE ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(401, '0403', '$2y$10$XEeYYinKJYvWokOJGGzhWuRbM4o26ukLoUSZDM9k1ULp9yqO2mC5m', 'Lucy O. Elep Jr.', 'CLERK I ', 7, 0, '2020-08-26 07:54:01', 0),
(402, '0404', '$2y$10$/jOEfp/oiC5OlF5PrRT2N.9rYW7x3hQ2DCHlDcc6Y0xtfk7j6ktqS', 'Jerrick S. Rosento', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(403, '0405', '$2y$10$bq9bMZ3bwN026B1iZlXVLOGHb1sKVnAYTBsB7vZPmg2A2xK3nWHSq', 'Ronelyn D. Fajardo', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(404, '0406', '$2y$10$9sa/0HZE.iyMN9gl/XzEMuWpnvqo8DdAmW9A4AUggbdN3op9h4/w2', 'Daniel A. Sena', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(405, '0407', '$2y$10$uhwB0T0oUXfD5/j.BFNFP.QbjHqwVNNrK/S4aVqVS4.Iig3htu0wW', 'Larah D. Peñaflor', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(406, '0408', '$2y$10$w.dETn5FC0gOgvqWDLstTOgU6Z2yMTxu4jKs.UwphNefM.MNPWnXC', 'Monica E. Badaguas', 'ARCHITECT I', 7, 0, '2020-08-26 07:54:01', 0),
(407, '0409', '$2y$10$j.Bt35saO1QYgUG/72CFeeVmNCffwnm9OqIHP9se.2B2fS0PBIA2O', 'Ela M. Bernardo', 'ARCHITECT I', 7, 0, '2020-08-26 07:54:01', 0),
(408, '0410', '$2y$10$RK18p0STxwSnfPnaSIlhleTWB5hDzh7vsl9uMea3MeG9IV3WsAikW', 'Karen Mae A. Abanes', 'BOOK KEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(409, '0411', '$2y$10$LzLRy3WF0KFRxg5WRgBKYOQ4/9yr.b211ajO3qVyseO9MBH4D.fGu', 'Ariel A. Anoñuevo', '', 7, 0, '2020-08-26 07:54:01', 0),
(410, '0412', '$2y$10$RirnN54eHFLuBLYEv3qgiuGoagbhwxtmS3h0PJ7E7QamnT8U6cPV2', 'Rolly A. Balbaira', 'PROJECT ASSISTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(411, '0413', '$2y$10$tSC3Dmq0d5o7ZupeC1zgOeJrbCdsGWQGTKJrffQnLfGhO0GFgg0Dy', 'Manolo G. Griño', '', 7, 0, '2020-08-26 07:54:01', 0),
(412, '0414', '$2y$10$reWPqhkZwgPyEoMKWWo83e/.4/Y0uJTciHzj38GmXB6U10Hje9eV.', 'Kathleen Mae M. Idnani', 'RESEARCH ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(413, '0415', '$2y$10$lrQ8OOgBx76EYSdZuRlQHenhG1ZvGcOPcgwibOISErMR4kwR8Kt8G', 'Ley Ann B. Mira', '', 7, 0, '2020-08-26 07:54:01', 0),
(414, '0416', '$2y$10$0AGY9DRHCe80m3.cyjcNOeQm/VqmGk3PdXZzYj.K1ooraCENsg2kW', 'Christine O. Napoles', 'RESEARCH ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(415, '0417', '$2y$10$ItKP9Z1L9BN6yB.tn6hzBe.ijvHQ637xbkGu1tW23EK9Ys4LJW5Ou', 'Liezel Ann A. Sarical', 'PROJECT ASSISTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(416, '0418', '$2y$10$C4TNYkYhbx/cFEfG/dGFVOwBVf2z/MWRr2TGSg6/tZoLDOx2VnMqC', 'Riezalyn B. Taruma', 'SCIENCE RESEARCH ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(417, '0419', '$2y$10$oK335C2kLY29.HVtTtIwd.j0iM1jwISI05GP7WLoZjL.VsfMtGYRG', 'Robert C. Robles', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(418, '0420', '$2y$10$hNA0/JRQlKIPXQRLGOTf0.D.v1qR3AqzhyicAjxTBcrjZphv6IBAK', 'Danilo C. Nipas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(419, '0421', '$2y$10$NcoYdgl5XzlxOrDunYJDqeBaVBdYXiOToakNhyICR6Kg4vjeHWmYm', 'Jim Ryan V. Asutilla', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(420, '0422', '$2y$10$pGPRv6c16EyTUIG2lkkpZO6wtGZtBEnmwdHdhqYFjMyJkrdqjkXMG', 'Ian Brando M. Equipado', 'INSTRUCTOR I', 7, 33, '2020-08-26 07:54:01', 523),
(421, '0423', '$2y$10$Zt2Hu7BxISSisVTyacD1UuqpvQ/36leokw3Sdn1XS7bexq.4y7F2a', 'Russel John M. Belarma', 'COMPUTER TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(422, '0424', '$2y$10$DM6oOVcqb2HeIrdH9WOdv..pKkl5phY86PAi3v1ZVbAGIhkCPrcke', 'Jessica F. Gonzales', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(423, '0425', '$2y$10$1T/fZtOSk1DOxcIHvcrwTucQeT4t.tvG2czeXFrCS38LBmYTLQwrO', 'Crisanto S. Ramirez', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(424, '0426', '$2y$10$7WdbFiJTI2ZeWY18qDoABOfa85mDGQIoQaCA/8WhLqQB5tisj57tO', 'Angelika A. Olboc', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(425, '0427', '$2y$10$V9/JAQPt4n1I9U0k0UGzEOxpwIP4aXVBJ32RE3sxzYthVPMVTVpai', 'Rochelle A. Abay', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(426, '0428', '$2y$10$4iojfugxFCgW3C6wQE4pU.GmYaBTqfCJft2HF7yIKP2KBb6dorE5.', 'Earl D. Pioquinto', 'INSTRUCTOR I', 7, 10, '2020-08-26 07:54:01', 0),
(427, '0429', '$2y$10$BwhpGr2WeBCPphk4ZxXen.Ir8jbuPc.xNFvNwMEHG0Osz98PB55tm', 'Jastine G. Orbillo', 'CLERK', 7, 16, '2020-08-26 07:54:01', 0),
(428, '0430', '$2y$10$fMcM28whesZ33/XasrJ0SeiW9GrL/aYpPR/88NJiugjMnMO0CZUqS', 'John Dominick A. Limon', 'MAJORETTE TRAINER', 7, 0, '2020-08-26 07:54:01', 0),
(429, '0431', '$2y$10$LYdW.PYWtvPKS.5s2t/KsOlwrWJav7BljQSO50NuycibyEE2Na3vC', 'Edison M. Visitacion', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(430, '0432', '$2y$10$Y8oxTw7RVI19LwnT8B39re93qMMNO.4OeYZg4.BxGe183k5A7xXxK', 'Kathy Joy A. Posada', 'INTERNAL CONTROL ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(431, '0433', '$2y$10$iZLHtOzNubTDUS5.6JT.ou6tdzCaT5RMOJe8lL6MST0XqG4.xv43u', 'Doreen C. Alberto', 'BOOKKEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(432, '0434', '$2y$10$u.z2Nh/jKAzzDBOIRDALyOpokBlpj35gaXVyAlkJHYNbyBhP3dCn.', 'Monaliza R. Pertes', '', 7, 0, '2020-08-26 07:54:01', 0),
(433, '0435', '$2y$10$t1MoA3FITW1qoLAAI55Wqe6cF4yfsP3Sqe9vUNwBBd1dPPA8zvVeG', 'Marjorie A. Vega', 'BOOKEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(434, '0436', '$2y$10$YCe1tSg.xg/uNoWsROF/Su15mS3a/LSpLLvOjmkQrmdKgcthwKdAC', 'Krissel Joy M. Loreno', 'TECHNICAL CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(435, '0438', '$2y$10$7mUdSXOnQN2AoFV6/XNObeRBZebWnmfTT3xI66YrJ5sMosb14ZpU2', 'Mailyn Q. Alarcon', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(436, '0439', '$2y$10$N4u9tow04VAM.iodXqLCP.1kIItjVmOeL.dVHkqtZWESl8wagGMJ6', 'Faye Madeleine U. Carranza', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(437, '0440', '$2y$10$ZsF4sScVNtIqQWq9EYgVL.Mx3qC0VH6ucnO9P4BYj6nq/RvemWuXK', 'Sherilyn C. Acunin', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(438, '0442', '$2y$10$Nvq5QRfD00RfnKB.Pq2kzuWhYtDP.QL6JnJlDLcGeiM95ZP3sky6C', 'Marc Lester Acunin', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(439, '0443', '$2y$10$M2JcGDVeR9NVSmSNy9394.rFdR.m2V.ApxuOs8BkUfh0ubu7CDnTi', 'Kathileen S. Tindoy', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(440, '0444', '$2y$10$rNHfJevvMPtDUJiYvKx3IeuH8HoH6TcxVXlspfiMge4UPOhdgbkkG', 'Ma. Reina A. Mabeza', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(441, '0445', '$2y$10$tIWTvq0fbiBUWld1saANMO41KaNVasE.HZA4id9N6A5Ry80BJ5lYC', 'Ma. Venus D. De La Paz', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(442, '0446', '$2y$10$I3IW1QIwi2EFO.NFeionxeSMVFhIxAHycxYaSwznmMyrYVnfrjT4y', 'April D. Ocampo', 'NURSE III', 7, 0, '2020-08-26 07:54:01', 0),
(443, '0447', '$2y$10$D2ePeegThcWZk4S5znqSSeT3.o6iiPsFrKa3fijQEIZy7pWn.xC16', 'Jerome V. Aler', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(444, '0448', '$2y$10$lZK3yP1RRvs/qCzxNZIuc.RgrT39uuhH58yAq2DLXLoDUysalJ4E2', 'May-ann B. Maceda', 'COLLEGE LIBRARIAN I', 7, 0, '2020-08-26 07:54:01', 0),
(445, '0449', '$2y$10$9RnaM1MZh2cJS.P4PnU8UebU9Rni3r.3ZbAvVJ1nJm3lcmKCUSc46', 'Glo Ann P. De Leon', 'NURSE III', 7, 0, '2020-08-26 07:54:01', 0),
(446, '0450', '$2y$10$Fvzxh3YajNp8O1MtHWy23eEnL7kspV7Btzb3xXp6gGsGZWttdKcjO', 'Irene D. Malaya', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(447, '0451', '$2y$10$/r.t.LDfwUlzx8M3SZT1/eokrJcv6E7eBHPxj11vACUHgn1GCOQai', 'Richard Andre B. Francisco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(448, '0452', '$2y$10$eE1sD4J.PoQjvuZ/aTSV2e/uO4kPXsyvksEg8rf4aQ/S3UI4GMybe', 'Ginalyn O. Dimaiwat', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(449, '0453', '$2y$10$HEZ6yvDY085c3NtKLtb32eFMeSdBeD8nHg/s.Iv4gQhVxVDWwNXTq', 'Jansen C. Cuadro', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(450, '0454', '$2y$10$xqXuSzm7ZUWC8Uma3roHmuFxMhYXt0WrLkhTqaZa9s9icoEoZaecu', 'Michelle D. Pineda', 'TECHNICAL STAFF', 7, 0, '2020-08-26 07:54:01', 0),
(451, '0455', '$2y$10$NcL1QGVIw0R9HP8Ym9CaP.R5TPEp5bZOaBpBi4GL0uvBa41TgTu3K', 'Jesus Mark C. Nape', 'RESEARCH ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(452, '0456', '$2y$10$OBATkkTwnOpt4XnBgpJHpu.V/TqXqPRWiQYwkwAeWiaAglLcUE2Si', 'Romely Ruth Q. Pajares', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(453, '0457', '$2y$10$tFNqBx4sVvyTJs77VnIaTuMNNYnfRf/E3ur1mMgaFEo3LqV05dDHK', 'Louiebelle A. Vargas', 'ARCHITECT', 7, 0, '2020-08-26 07:54:01', 0),
(454, '0458', '$2y$10$JxkTbj38Ec/SPWUSRFZmd.SlJEgd529f/0plTLaecmQpdWTZ7wnNq', 'Gisselle V. Del Barrio', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(455, '0459', '$2y$10$1qZmk3ne2rrOCciTX.T6c.nH9fNI2dbxlonMCNlqBS0vl8AIST5va', 'Jasmin T. Arabe', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(456, '0460', '$2y$10$alJGE7FV7g.Qz/OOipZbTeVkJkU9heCWLu2R.Be3R9d97p/jxHmWq', 'Zyra D. Chang', 'CLERK', 4, 38, '2020-08-26 07:54:01', 523),
(457, '0461', '$2y$10$JySnLKZ43xMTnU4nThJF0u64aRq2u98fvb1H9Q7DcHzGeribF6Om2', 'Rica D. Macatangay', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(458, '0462', '$2y$10$l9yYNqgMG82oWDsSdhGJJ.FYnRp2A9dc0sjSlKkqhIf/uEpulub6.', 'Rondelle A. Lagumen', 'COMPUTER PROGRAMMER', 7, 0, '2020-08-26 07:54:01', 0),
(459, '0463', '$2y$10$BJnAHdNDyVRQiB8DfSf2Q.MrTIH95vhaULIDjfcEHxofbHTClsBCW', 'Meljohn A. Latiza', 'ELECTRICAL ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(460, '0464', '$2y$10$04bcpcNmyXXrm9l3pl8cLeY.Lf7bY1bxVQ3c5NP16bgZMs7ElzdwC', 'Gemarlyn L. Balada', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(461, '0465', '$2y$10$lYUEluBiPLl/37F4vz5quu6h0vJgcBPgd2D8xyKh1ZIKMwIdTsWsu', 'Maria Agnes N. Auxilio', 'ADMINISTRATIVE AIDE III', 3, 27, '2020-08-26 07:54:01', 523),
(462, '0466', '$2y$10$mRaItudIaKe.RdszEzEzRuh8hzV3QM/ish5S8QDofyMwO9Jpj5e/W', 'Jesus P. Santillan', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(463, '0467', '$2y$10$fHk2yAKoj5GFTWFcPUG2IO4Kcf/Fm3R4rzvhuDBtziVOdTwtaNJX2', 'Julius Fernan A. Vega', 'CIVIL ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(464, '0468', '$2y$10$6VFhRHYmxdiHbwXKVQZUIubzvFaZ/XXoPGB/dBCpFdxalSEgq9ev.', 'Rodulfo C. Ogario, Jr.', 'CANTEEN CREW', 7, 0, '2020-08-26 07:54:01', 0),
(465, '0469', '$2y$10$n1G1vT50jKEKnaTDluPiXe4Do4yOBaDNUZtkiUWV3E/w37JPqQMIu', 'Xierl Red Lynda M. Crescini', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(466, '0470', '$2y$10$TlsTnDyBXo6vpcK0SHYJ0eIOIbw/wy1n7UWoMvpJ9v3xORCIz4vk6', 'Mon Joseph M. Iglesia', 'COMPUTER TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(467, '0471', '$2y$10$felUxsdS5o.KJJ5KnUhhyeZBDOe5X5/Nk61kJG73koQz4DZQFRZpq', 'Paulo C. Payumo', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(468, '0472', '$2y$10$3WGk7lllvDxhwncAjrw/muLBMPrZltCrIodXPwi2YKswUZu.tHKbu', 'Irene B. Pacheco', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(469, '0473', '$2y$10$GxSmE6aYdtf7JCF0umYeZubn0orXG1PSPCybcnx4gh/epM.ZqjThW', 'Jenny Rose G. Ramos', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(470, '0474', '$2y$10$ENSM6RGyaxbmzDY3oFyCfu0YEtaHAC3o.yrVqP4INvs6WJROAcODK', 'Johnna M. Ferrer', 'BOOKKEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(471, '0475', '$2y$10$orWaq4MAHWA/nampfoAa3.Mk.4AabnPM/gaaxOzPJwWgzqiKbJO3O', 'Mary Grace E. Susano', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(472, '0476', '$2y$10$R9UTxEKM7N/pXK7QureoVuEB11/WJjc35VurrQ33XUPWXme46kZXi', 'Diana Mae A. Jardin', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(473, '0477', '$2y$10$gbSfDDNrgRjvt5HWXN52FOyvTQ/VRGdpWvxNM1YA9qN0VzpJSQydq', 'Jestoni R. Umerez', 'AIRCON TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(474, '0478', '$2y$10$K.Vcd.ChGs0CbUC9X671AeyRU/MRLFxjIutxTK0DC2Yv14GZn6oSS', 'Rodolfo Adano Yet Jr.', 'AIRCON TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(475, '0479', '$2y$10$M/6OEeds6dERIf9pI7TZVONq6Vke2mfunn5PRumsd7l7fPrY9rC72', 'Kynnie John R. Ingatan', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(476, '0480', '$2y$10$1I2G3AH.zShQ63w4mLbH2ecYXY2VKFMaoOk4xdv5fQXhPWgB1VM/C', 'Joan B. Segundo', 'ACCOUNTANT I ', 6, 24, '2020-08-26 07:54:01', 523),
(477, '0481', '$2y$10$Lor82h/O1VU75D4wPU7XluhO82EmQdqeRdkRAA4d1SQcH.VHdZwCW', 'Jose M. Sadial', 'CROP PRODUCTION ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(478, '0482', '$2y$10$A8j0SjyWl.fNkv40PoToBeDrTiWSR2WrSwFih7.4VZUjPnBtd5AX2', 'Robert Dacillo', 'PLANT PROPAGATOR', 7, 0, '2020-08-26 07:54:01', 0),
(479, '0483', '$2y$10$SMeEmd1H/eFopUrDj/ttOe6lUZfCg1l4mO0FYK8/./jr3gHf6hvAi', 'Spences S. Saludes', 'GIS APPLICATION DEVELOPER', 7, 0, '2020-08-26 07:54:01', 0),
(480, '0484', '$2y$10$FlYWe8xKChwQ.9FFfY.XcO49nQpI8H4Z979Sjwo6Yiqiz26ymLEia', 'Cherrylou A. Sarte', 'OFFICE ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(481, '0485', '$2y$10$KdXXabyIz1W2DIV05X3wjeeOi1scpTY9G8rDKzzAHFO82QkWUrizC', 'Sherwin A. Balang', 'COLLEGE LIBRARIAN 1', 7, 0, '2020-08-26 07:54:01', 0),
(482, '0486', '$2y$10$Cjqq.4e4ldZiHdEZkxuX9ubN1hpqhr./GBpA.9jJ1p8PXSJYNNBs2', 'Jay Marie D. Asis', 'OFFICE STAFF', 7, 0, '2020-08-26 07:54:01', 0),
(483, '0487', '$2y$10$eShChjhT2FdMX44/zo6E/uyqQLWCZC4SrZk8j0AUXbsWgVNR/EVla', 'Paul Medard P. Anchuelo', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(484, '0488', '$2y$10$KwgHiN9sLoFazCjzSd5P.uh00iWdxEI0SdtSTi3.li1YMTjmVC8u.', 'Jessa B. Dumagsang', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(485, '0489', '$2y$10$FuTyQUaEhs8SYeSz2oEtc.UwE4MTMcoBOMjNM3kVMiKANLv6VQvbe', 'Francis B. David', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(486, '0490', '$2y$10$.Kp1fKiMQTvWRn4EwEHcTeLzUXVmc85tAHnnaTXncw.tBLGo466Se', 'Herbert B. Alsate', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(487, '0491', '$2y$10$clOyY.hjv/65lTxcRfX0...vI1kjI21DWyKXE4ci66crsmhvV2vou', 'Dario O. Caña', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(488, '0492', '$2y$10$Qq8kMZynjpBG4eKyCMCgReQhdeNfoLBRuRTEdx0.jbelVrilC6y6O', 'Rodel M. Cambronero', 'DRIVER I', 7, 0, '2020-08-26 07:54:01', 0),
(489, '0493', '$2y$10$.l90h4lhUemVDmDUXaw42umk4HHvbleMMZMHvbE9NCWTvxDnQf1Ca', 'Yla T. Jarapa', 'OFFICE ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(490, '0495', '$2y$10$sPfX5o9v4Nx6Emcuzczxje7w6W/kGlgTt6ZxvLPoQfY2VOxVm4ttq', 'Kathryn Evidor Lee', 'INFORMATION SYSTEM RESEARCHER / PLANNER', 7, 10, '2020-08-26 07:54:01', 0),
(491, '0496', '$2y$10$OiY.iloFQfjXrV/gxkJ6DuCreUIyFMjbIaPF/TuevcgugZGcvgSFa', 'Vian Jerome Ilao Rayos', 'COMPUTER PROGRAMMER', 7, 10, '2020-08-26 07:54:01', 523),
(492, '0497', '$2y$10$g25Fmwjf9p/BMp7Xpf/i7.dfaRZrrPgHg7t.8Xs3Gwek0EWYICbPC', 'Alvin D. Peña', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(493, '0498', '$2y$10$c5ojuyZDm2bBcpQcVZez/u86phdO.4877lylTMYf9zZEL7P1/nTC.', 'Nercris S. Malaga', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(494, '0499', '$2y$10$rJgRVwWEulTt/2aEdHQ6IO1blL14/hCzDoB91elMyWGhX3To8w87u', 'Melvin P. Ligon', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(495, '0500', '$2y$10$waQy7iwwzYv0M.pYiqK9seBMkPdATfAwd.yLhrsx1iXmtsIYVaBru', 'Ailene C. De Vela', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(496, '0501', '$2y$10$sqF4co0NkFEolIwsjZB..u398LffnCF.RpCpr78GfT49J4luAPU1i', 'Jessica A. Bacall', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(497, '0502', '$2y$10$55HBfZZ2dTwkvIKLFa0ygelGKlU5fvTL006rekdQL6DS0SDBVb8iG', 'Roque D. Mayo', 'DRIVER ', 7, 0, '2020-08-26 07:54:01', 0),
(498, '0503', '$2y$10$JH5EXX7LTEtyS4brWa.zuuXR9vRyxBenaY13mdBDnqmq/v6L.GW9S', 'Cristian Mark B. Balantes', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(499, '0504', '$2y$10$67O5UNiqlQehe.NxB7phhe9A0n2K5AZgH/OUcCd/VXa9uptTx5V52', 'Melvin D. Angeles', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(500, '0505', '$2y$10$jR/6zK6wMMYjzRJuyML.quDAEN2mOntHEYeXUM0N9I9tWSiu2nFWa', 'Roque M. Carillo', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(501, '0506', '$2y$10$2B4LZAqChNuYyRrQMk/wR.JUJ07pC.jcLFfILp91GlV7UUJwcJKiy', 'John Jerick P Bebing', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(502, '0507', '$2y$10$C0bZJDNKQ1.z9//t7h02G.qagJc9pbwQSeKpLGRW2mDokE88fFUaa', 'Ma. Angelica M Ella', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(503, '0508', '$2y$10$vI7Xi4YnDQNGRfhdqlyZwOJBEvJKcUgSRTuFbb29mV2SBH/dLKSAe', 'Kristoffer Jan B. Notario', 'INSTRUCTOR I', 4, 34, '2020-08-26 07:54:01', 523),
(504, '0509', '$2y$10$TWjdBy9T/aBkJVMJyFkuhukK0CLGnB0tzowYXkpAgNq8VYMAzGZ8a', 'Jullie Ann M. Flores', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(505, '0510', '$2y$10$VjyRA2RNPRjMECveyI.tou2lItAcpN5vJhhx9S45ERiyRZfs7H/P2', 'Armand O. Diaz', 'FARM WORKER I', 4, 46, '2020-08-26 07:54:01', 523),
(506, '0511', '$2y$10$LwKLazJc1y1v/JLu10ZwyuWSNLv2ec4rcX3kWw8DdMkOub7q.CvTe', 'Reny A. Ojas', 'FARM WORKER I', 7, 0, '2020-08-26 07:54:01', 0),
(507, '0512', '$2y$10$BoAD2lYPWRgZ6KREC0FABes/oziC.aQgfwf3g.j8irJoWx6oBUt6S', 'Mary Joy Sarion', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(508, '0513', '$2y$10$jlSTpaDs0KLmz6/gZ.U4YOgNG974yVTJE/RNa8f.7Y3yovW9OE60K', 'Eugene O. Balindan', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(509, '0514', '$2y$10$CHU187jFtdX51rHM4B8ifuFbGFo0l/g3h7gxNWvxLO1IYQg8xTJV2', 'Julie Ann B. Parillas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(510, '0515', '$2y$10$saOiaegQrafXN2Ya/k6LVO5qFUL11syyrcnw89IrTHgqqsLxee95G', 'Melva L. Porbolan', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(511, '0516', '$2y$10$wG69T1IA8jt44AM1inDtb.OlBju27PkOnfcGK/0rVwafe1bSX4pE6', 'Melchor M. Amor', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(512, '0517', '$2y$10$1pbyU5EC84uS/yBt8JkyfuemynBELCmwO7fTcqHLTK5LZWkD/IGZO', 'Amiel A. Bracino', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(513, '0518', '$2y$10$do/Oe3RKxmQ2ZWOdDmHidOlLnbyyPrrNVJIrwZxBYJCWl1jbCOSJ2', 'Irvin O. Bequillo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(514, '0519', '$2y$10$dIpqDUULDmMufjmP7ol06umMQrxfUO/4mUSQGKHsNZBXZjutAN2DG', 'Dexter Valencia Calleja Jr.', 'COMPUTER PROGRAMMER', 7, 10, '2020-08-26 07:54:01', 0),
(515, '0520', '$2y$10$xC8TKtp4qKA/0OKal4K61eOWz4FCaL4yxG46nDaYDEIKx41//RFOK', 'Enrico Daryl S. Francisco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(516, '0521', '$2y$10$/b1MxpdcOihJ0lsSM6eGYuRJz5jlaO6xQpnJCT0jR75qmCijKKbs.', 'Alysa Rose A. Artana', 'SOFTWARE PROGRAMMER', 7, 28, '2020-08-26 07:54:01', 0),
(517, '0522', '$2y$10$sKWgA3FAYF8dVq2O9N0.KeJ7RIsNCrUPMR9IeeqKhhay5drP4NZaS', 'Christian A. Picardo', 'SOFTWARE PROGRAMMER', 7, 28, '2020-08-26 07:54:01', 0),
(518, '0524', '$2y$10$BEfs8YGtH0GTcKqihFT7HOC7uRTPAE6gvLtAGNWf18HdzmiWaSpVO', 'Jeanette C. Daniel', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(519, '0528', '$2y$10$hSptTN36dqR1Ky9hWzX8deKfQIsIpZ0lSxP3o9kCULxzcZmJ/CgOm', 'Salvador C. Demiar Jr.', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(520, '0530', '$2y$10$F9b6kikIHqJ6OduXleTo/.fBUl2xlomVejzKm5ohuZPSKLATDFmtm', 'Ma. Claudine M. Lafuerte', 'CIVIL ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(521, '0531', '$2y$10$7dMatH5sVyQadodwxDmDxeKhfIRkh88UeCTgEeW4f/sk0YVn1ThAW', 'Francis Fidel A. Vega', 'ARCHITECT', 7, 0, '2020-08-26 07:54:01', 0),
(522, '0532', '$2y$10$yYoPZT9H6H0UYprnQ4zoieRj6uqk.069bOfuZD2J/jgaaGd.o0t5G', 'Filandro C. Leaño', 'MECHANICAL ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(523, '0537', '$2y$10$jqb9y5vYFARCHnyythYTWe5AFucdiS.A8nIqqtFESS23f8M1By5LG', 'Jaime Pardo', 'Computer Programmer', 1, 10, '2020-08-26 07:54:01', 0),
(524, '0538', '$2y$10$pg3iSX6CXyvvi2b0Tar37OzFJhtkN8zjnkILL85H6J7Ga6ivu7eAu', 'Jerry R. Saenz', '', 7, 0, '2020-08-26 07:54:01', 0),
(525, '0539', '$2y$10$bWh/oXBxy1oqQkRN3G2aN.lANRwQPYpB82NLpJzdUPH7ld8XStLJW', 'Mary Grace B. Zantua', '', 7, 0, '2020-08-26 07:54:01', 0),
(526, '0540', '$2y$10$WTXcFxa0Mb4QoQpCwzparuaAjrnkef/T54q/mE6XOWArB.cVD6H3.', 'Jhonna D. Alcantara', '', 7, 0, '2020-08-26 07:54:01', 0),
(527, '0541', '$2y$10$3ZpMt/8OKQiSrjsFxV4t5eLIHavnjOfq0wQq/jBrxzGtib5VwHCzu', 'Aldrin Jake C. Asis', '', 7, 0, '2020-08-26 07:54:01', 0),
(528, '0542', '$2y$10$s.WhnHIcYQu4vuh2tCe48OJyfeNyHoXKhIWkC1mLXiprQZNmlhZS6', 'Kim Cielo P. Buenaventura', '', 7, 0, '2020-08-26 07:54:01', 0),
(529, '0543', '$2y$10$XnCThF4dybcTN5FcEYobEO3EwlRiCkGALUB0VU4HkRnhIOvG5/52i', 'Maria Victoria D. Parica', '', 7, 0, '2020-08-26 07:54:01', 0),
(530, '0544', '$2y$10$qRymEx8KZ7DnMLghXOX3seRgLVwVl7vEBmOy.xurhUhYeWGwSATFq', 'Charlie Guavez', '', 7, 0, '2020-08-26 07:54:01', 0),
(531, '0545', '$2y$10$3ryKsIxZKsHmuohcUf0qDu.vkoxCX7uT.hB5a13GBO0Qn.5GSA2Gy', 'Benedict Eugene Abiera', '', 7, 0, '2020-08-26 07:54:01', 0),
(532, '0546', '$2y$10$.SUG8iCHYht2bnd7.odTxOyOvgfGMr/ejsYFD1BlkopgKrdRhbIXS', 'Sandy A. Jalimao', '', 7, 0, '2020-08-26 07:54:01', 0),
(533, '0547', '$2y$10$rwErvrw1aEmh7p/LlAPhies2v0nYuqDHpgPVe9cqGw5A2Ri5.hZiK', 'Maria Fe B. Alban', '', 7, 0, '2020-08-26 07:54:01', 0),
(534, '0548', '$2y$10$z.5pXnPFOQ3QK0F.kMkS9.0ao0noo8pmEg8.13AlAI0oX7TD3aCC6', 'Nemia S. Fulgencio', '', 7, 0, '2020-08-26 07:54:01', 0),
(535, '0549', '$2y$10$4vDX.25X8g3A/RVQfjWq0uwpCQMGgxmdWJO88k.79cTkcIt8vFlI.', 'Sharmaine A. Aquino', '', 7, 0, '2020-08-26 07:54:01', 0),
(536, '0550', '$2y$10$dtMpDDFoOJ6.kG5xDk.tTuKF1skL8DjUU.zC61xajPEvt/slMQIPe', 'Rey-Ann F. Villanueva', '', 7, 0, '2020-08-26 07:54:01', 0),
(537, '0551', '$2y$10$69vPQNt/pVx2Yg3.arEvbe9vJxz96Gme5V52lJvn3HIZbY5CAk3pm', 'Viah Nicole R. Mulato', '', 7, 0, '2020-08-26 07:54:01', 0),
(538, '0552', '$2y$10$DRV1Vp1NLaBs/gbxObR9/e/52Are2h3yANz8Vzpd3t3KvIKeIqyWy', 'Jhean Nicole H. Damian', '', 7, 0, '2020-08-26 07:54:01', 0),
(539, '0553', '$2y$10$4YKB0Y.hGYveAYT/EONOu.X.K5sJhUj.1OZcdqosAOzasUwy6knOy', 'Roland G. Camandero', '', 7, 0, '2020-08-26 07:54:01', 0),
(540, '0554', '$2y$10$Wov6cnZqJDykcyh6XzjAUerYdcrFnPQX0cfbEoyCrsG.uX/SliIWS', 'Jennylyn C. Casabar', '', 7, 0, '2020-08-26 07:54:01', 0),
(541, '0555', '$2y$10$9hq43JvvOadPvucurg4oMu8tE5BtVJP/4N4I2ef8KWzLkZtztuigq', 'Aireen V. Ablao', '', 7, 0, '2020-08-26 07:54:01', 0),
(542, '0556', '$2y$10$ngxBJa.qVGMTJfwqU.r/zuE9uMPbOS03tqF5Om2ssgsFjhsOvWUKC', 'Ryan Daves F. Quiñones', '', 7, 0, '2020-08-26 07:54:01', 0),
(543, '0557', '$2y$10$JI6nEEqGTf6ZKhIWWflIAu3N3oZAm9KbjuFs0wf/xeKyr0USDJYc.', 'Pete A. Gomez', '', 7, 0, '2020-08-26 07:54:01', 0),
(544, '0558', '$2y$10$zvORL.IeUkZgbCrjXaWv9.Ruv7zKF6xQWVv9dQPjyAZ7l3oaKeqRO', 'Manilyn V. Dasco', '', 7, 0, '2020-08-26 07:54:01', 0),
(545, '0559', '$2y$10$gkcF1oInqtILkwr9lSjSjuVuT92W43envLkLHVzTTft2wFaQZ61.q', 'Marinnyl Aguilar', '', 7, 0, '2020-08-26 07:54:01', 0),
(546, '0560', '$2y$10$1rNrTZfLRvA9kWnvki/kFe98O9JKTmYgRIqmr8QZ1y6JZez.d0Nve', 'Loreimay B. Andaya', '', 7, 0, '2020-08-26 07:54:01', 0),
(547, '0561', '$2y$10$hEhnmbaMkaSUHMSKHhK36eyE1S7yd595vg2ogZzRZONQX3NPtpOJe', 'Kurt Juden A. Pardo', '', 7, 0, '2020-08-26 07:54:01', 0),
(548, '0562', '$2y$10$U.JBBqMPGDci4zBKpKuRgeOhi1YHt2hrIa4dODUz7ubYoFqJRmRoi', 'Frances Ubana', '', 7, 0, '2020-08-26 07:54:01', 0),
(549, '0563', '$2y$10$1mclErFwWcxK/mca4J691O5JzZf/9hPgsL4EfHd1lTe71jtoVb9xK', 'Fernando H. Coratchea', '', 7, 0, '2020-08-26 07:54:01', 0),
(550, '0564', '$2y$10$j4tlGckTkUGCHlbquLxUg.QAKJcbG5NtdULjYaU7lsP5t3zl0YEu.', 'Lara Andrea D. Villasanta', '', 7, 0, '2020-08-26 07:54:01', 0),
(551, '0565', '$2y$10$GL9aGmK9mt9uBV7FXVq2vu5D1FVntedgaM5pz9edC4IlpGZntA3YW', 'April B. Pelonio', '', 7, 0, '2020-08-26 07:54:01', 0),
(552, '0566', '$2y$10$EpinsM9Q.ocSosuPRYLY/.GhlI7O6UYq3b/rmxFat9ebC50loOTVS', 'Jherico P. Evia', '', 7, 0, '2020-08-26 07:54:01', 0),
(553, '0567', '$2y$10$mMQES0.QyzgKJIsOY.IloORu.p/0YRvZDoTP7Z1htPneQo7zl.Rou', 'Ronald O. De Lemios', '', 7, 0, '2020-08-26 07:54:01', 0),
(554, '0568', '$2y$10$3kuwT75PQU6SldlKn60kuupooDiPCjU9srsBUOJQzLinHgO9iPBDm', 'Alj Manolo S. Bares', '', 7, 0, '2020-08-26 07:54:01', 0),
(555, '0569', '$2y$10$kSEhTSqJ5jC1pf7a5FqgNuVhhnJe6gPwrOrguCzlZ9xVQmSVXfJry', 'Vina Joy P. Bola', '', 7, 0, '2020-08-26 07:54:01', 0),
(556, '0570', '$2y$10$pTXLAbQaepNiT/fWqN8ZjeAmkH0QIPsg.SDqelYNzXXTJIaJcqzyu', 'Reymark V. Occiano', '', 7, 0, '2020-08-26 07:54:01', 0),
(557, '0571', '$2y$10$KDrYTxIb4foPYCMVPZTic./M/qs2OLgggSReURX4lmpZxlPXMU/Bi', 'Ryan John Berdin', '', 7, 0, '2020-08-26 07:54:01', 0),
(558, '0572', '$2y$10$ox1ZZj0QgxxXBzH6wATnZu2cQUzjUXX.BDjByYoDJSKBfmcn1Sbxm', 'Cedric Anthony C. Morales', '', 7, 10, '2020-08-26 07:54:01', 0),
(559, '0573', '$2y$10$AuXWcMvlEchnV21Mp4rNH.bxqyuM3hA8KZyTXxFzoji2It2qqp8rK', 'Carl John M. Saromiaes', '', 7, 0, '2020-08-26 07:54:01', 0),
(560, 'COA3', '$2y$10$umOUKmXSskDyn//4c3i0WuMOOjRW6SYt5ye9VQmewCFYfp/IaD0dy', 'Glenn N. Marcaida', '', 7, 0, '2020-08-27 10:39:54', 0),
(561, 'COA1', '$2y$10$bQhYH0MV2YxlddT.PSyjn.i/hm.GyaDjmxpJXRF.Oo2Y64bVIpoXG', 'Leticia J. Perez', '', 7, 0, '2020-08-27 10:40:41', 0),
(562, 'COA2', '$2y$10$nrk9DgIAbqlhBFN7gSagWu9o2gpGN9RWVZ6mlZJAP207lLOledIJy', 'Mary Grace B. Ramirez', '', 7, 0, '2020-08-27 10:43:36', 0),
(565, '18-0959', '$2y$10$XQE.k63yTaEsAUFeM/UkBO0iBUwEBDx4dXO80pThyL7UL9AgVpsJm', 'Ella Mae C. Espinola', 'Student Assistant', 0, 27, '2021-03-16 05:36:58', 523),
(566, '0637', '$2y$10$nPIagu8MmI6zrvqJTwetm.DcwSr/etXGuhCZkNGab0IYMhyOrxb4m', 'Freddie T. Bernal', 'CHED Regional Director', 2, 1, '2021-06-30 06:28:38', 523),
(567, '0620', '$2y$10$8rXwRS0OJewgs8chwF6ALuf/3QRcWrlnUnaOgd4OXxojmBm99/vkS', 'Jhann Larry Arevalo', 'Office Assistant', 4, 48, '2021-07-30 01:26:18', 523);

-- --------------------------------------------------------

--
-- Table structure for table `tblaccountlevel`
--

CREATE TABLE `tblaccountlevel` (
  `userID` int(11) NOT NULL,
  `userType` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblaccountlevel`
--

INSERT INTO `tblaccountlevel` (`userID`, `userType`) VALUES
(0, 'Student Assistant'),
(1, 'MIS Programmer'),
(2, 'President'),
(3, 'Supply Officer in SPMO'),
(4, 'Supply Coordinator'),
(5, 'Supply Officer in Stock Room'),
(6, 'Accounting Officer'),
(7, 'Employee'),
(8, 'Head of Office'),
(9, 'Employee (Admin)'),
(10, 'Head of Office (Admin)');

-- --------------------------------------------------------

--
-- Table structure for table `tblbarcode`
--

CREATE TABLE `tblbarcode` (
  `barID` int(11) NOT NULL,
  `barCode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblbuildingrepair`
--

CREATE TABLE `tblbuildingrepair` (
  `majorID` int(11) NOT NULL,
  `buildingID` int(11) NOT NULL DEFAULT 0,
  `majorDesc` varchar(250) DEFAULT NULL,
  `repairStart` varchar(20) DEFAULT NULL,
  `repairEnd` varchar(20) DEFAULT NULL,
  `repairNature` varchar(150) DEFAULT NULL,
  `repairAmount` decimal(15,3) NOT NULL DEFAULT 0.000,
  `poID` int(11) NOT NULL DEFAULT 0,
  `chartID_SPMO` int(11) NOT NULL DEFAULT 0,
  `chartID_Acc` int(11) NOT NULL DEFAULT 0,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `no` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblcampus`
--

CREATE TABLE `tblcampus` (
  `campusID` int(11) NOT NULL,
  `campusCode` varchar(20) DEFAULT NULL,
  `campusName` varchar(150) DEFAULT NULL,
  `warehouseID` int(11) DEFAULT NULL,
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcampus`
--

INSERT INTO `tblcampus` (`campusID`, `campusCode`, `campusName`, `warehouseID`, `no`) VALUES
(1, 'Main', 'MAIN CAMPUS', 1, 0),
(2, 'CoEd', 'ABAÑO CAMPUS', 2, 0),
(3, 'CoTT', 'JOSE PANGANIBAN CAMPUS', 3, 0),
(4, 'CANR', 'LABO CAMPUS', 4, 0),
(5, 'Entienza', 'ENTIENZA CAMPUS', 5, 0),
(6, 'IFMS', 'MERCEDES CAMPUS', 6, 0),
(7, 'CAS', 'College of Arts and Sciences', 1, 0),
(8, 'CoEng', 'College of Engineering', 1, 0),
(9, 'CBPA', 'College of Business and Public Administration', 1, 0),
(10, 'ICS', 'Institute of Computer Studies', 1, 0),
(11, 'GS', 'Graduate School', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblchartaccount`
--

CREATE TABLE `tblchartaccount` (
  `chartID` int(11) NOT NULL,
  `chartCode` varchar(20) DEFAULT NULL,
  `chartName` varchar(150) DEFAULT NULL,
  `chartLegend` varchar(10) DEFAULT NULL,
  `chartLife` varchar(50) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblchartaccount`
--

INSERT INTO `tblchartaccount` (`chartID`, `chartCode`, `chartName`, `chartLegend`, `chartLife`, `DateCreated`, `no`) VALUES
(1, '1-01-01-010', 'Cash - Collecting Officer', 'CCO', '', '2020-08-26 02:26:45', 0),
(2, '1-01-01-020', 'Petty Cash', 'PETTY', '', '2020-08-26 02:26:45', 0),
(3, '1-01-02-020', 'Cash in Bank - Local Currency, Current Account', 'CIB', '', '2020-08-26 02:26:45', 0),
(4, '1-01-02-030', 'Cash in Bank - Local Currency, Savings Account', 'CIB2', '', '2020-08-26 02:26:45', 0),
(5, '1-01-04-010', 'Cash - Treasury/Agency Deposit, Regular', 'CTDR', '', '2020-08-26 02:26:45', 0),
(6, '1-01-04-040', 'Cash - Modified Disbursement System (MDS), Regular', 'CMDSR', '', '2020-08-26 02:26:45', 0),
(7, '1-01-04-050', 'Cash - Modified Disbursement System (MDS), Special Account', 'CMDSS', '', '2020-08-26 02:26:45', 0),
(8, '1-01-04-060', 'Cash - Modified Disbursement System (MDS), Trust', 'CMDST', '', '2020-08-26 02:26:45', 0),
(9, '1-03-01-010', 'Accounts Receivable', 'AR', '', '2020-08-26 02:26:45', 0),
(10, '1-03-01-011', 'Allowance for Impairment - Accounts Receivable', 'AIAR', '1 Year', '2020-08-26 02:26:45', 0),
(11, '1-03-04-010', 'Due from Central Office', 'DFCO', '', '2020-08-26 02:26:45', 0),
(12, '1-03-04-040', 'Due form Operating Units', 'DFOU', '', '2020-08-26 02:26:45', 0),
(13, '1-03-05-010', 'Receivables - Disallowances/Charges', 'RD', '', '2020-08-26 02:26:45', 0),
(14, '1-03-05-020', 'Due form Officers and Employees', 'DFOE', '', '2020-08-26 02:26:45', 0),
(15, '1-03-05-990', 'Other Receivables', 'OR', '', '2020-08-26 02:26:45', 0),
(16, '1-03-05-991', 'Allowance for Impairment - Operating Lease Receivables', 'AIOLR', '', '2020-08-26 02:26:45', 0),
(17, '1-04-01-010', 'Merchandise Inventory', 'MI', '', '2020-08-26 02:26:45', 0),
(18, '1-04-04-010', 'Office Supplies Inventory', 'SUPPLY', '1 Year', '2020-08-26 02:26:45', 0),
(19, '1-04-04-020', 'Accountable Forms, Plates and Stickers Inventory', 'AFPLSI', '', '2020-08-26 02:26:45', 0),
(20, '1-04-04-030', 'Non-Accountable Forms Inventory', 'NAFI', '', '2020-08-26 02:26:45', 0),
(21, '1-04-04-040', 'Animal/Zoological Supplies Inventory', 'ZSI', '', '2020-08-26 02:26:45', 0),
(22, '1-04-04-050', 'Food Supplies Inventory', 'FSI', '', '2020-08-26 02:26:45', 0),
(23, '1-04-04-990', 'Other Supplies and Materials Inventory', 'OSMI', '', '2020-08-26 02:26:45', 0),
(24, '1-06-01-010', 'Land', 'LAND', '', '2020-08-26 02:26:45', 0),
(25, '1-06-02-990', 'Other Land Improvements', 'OLI', '', '2020-08-26 02:26:45', 0),
(26, '1-06-02-991', 'Accumulated Depreciation - Other Land Improvements', 'ADOLAND', '', '2020-08-26 02:26:45', 0),
(27, '1-06-03-050', 'Power Supply Systems', 'PSS', '', '2020-08-26 02:26:45', 0),
(28, '1-06-03-051', 'Accumulated Depreciation - Power Supply Systems', 'ADPSS', '', '2020-08-26 02:26:45', 0),
(29, '1-06-04-010', 'Buildings', 'BUILD', '10 Year', '2020-08-26 02:26:45', 0),
(30, '1-06-04-011', 'Accumulated Depreciation - Buildings', 'ADBUILD', '', '2020-08-26 02:26:45', 0),
(31, '1-06-04-012', 'Accumulated Impairment Losses - Buildings', 'AILBUILD', '', '2020-08-26 02:26:45', 0),
(32, '1-06-04-020', 'School Buildings', 'SCBUILD', '', '2020-08-26 02:26:45', 0),
(33, '1-06-04-021', 'Accumulated Depreciation - School Buildings', 'ADSCBUILD', '', '2020-08-26 02:26:45', 0),
(34, '1-06-04-022', 'Accumulated Impairment Losses - School Buildings', 'AILSCBUILD', '', '2020-08-26 02:26:45', 0),
(35, '1-06-04-990', 'Other Structures', 'OS', '', '2020-08-26 02:26:45', 0),
(36, '1-06-04-991', 'Accumulated Impairment Losses - Other Structures', 'CILOS', '', '2020-08-26 02:26:45', 0),
(37, '1-06-05-010', 'Machinery', 'M', '', '2020-08-26 02:26:45', 0),
(38, '1-06-05-011', 'Accumulated Depreciation - Machinery', 'ADM', '', '2020-08-26 02:26:45', 0),
(39, '1-06-05-020', 'Office Equipment', 'OE', '5 Year', '2020-08-26 02:26:45', 0),
(40, '1-06-05-021', 'Accumulated Impairment Losses - Office Equipment', 'AILOE', '', '2020-08-26 02:26:45', 0),
(41, '1-06-05-030', 'Information and Communication Technology Equipment', 'ICT', '5 Year', '2020-08-26 02:26:45', 0),
(42, '1-06-05-031', 'Accumulated Depreciation - Information and Communication Technology Equipment', 'ADICT', '', '2020-08-26 02:26:45', 0),
(43, '1-06-05-040', 'Agricultural and Forestry Equipment', 'AFE', '', '2020-08-26 02:26:45', 0),
(44, '1-06-05-070', 'Communication Equipment', 'CE', '', '2020-08-26 02:26:45', 0),
(45, '1-06-05-071', 'Accumulated Depreciation - Communication Equipment', 'ADCE', '', '2020-08-26 02:26:45', 0),
(46, '1-06-05-090', 'Disaster Response and Rescue Equipment', 'DRRE', '', '2020-08-26 02:26:45', 0),
(47, '1-06-05-091', 'Accumulated Depreciation - Other Machinery and Equipment', 'ADOME', '', '2020-08-26 02:26:45', 0),
(48, '1-06-05-130', 'Sports Equipment', 'SE', '', '2020-08-26 02:26:45', 0),
(49, '1-06-05-140', 'Technical and Scientific Equipment', 'TSE', '', '2020-08-26 02:26:45', 0),
(50, '1-06-05-990', 'Other Machinery and Equipment', 'OME', '', '2020-08-26 02:26:45', 0),
(51, '1-06-06-010', 'Motor Vehicles', 'MV', '', '2020-08-26 02:26:45', 0),
(52, '1-06-06-011', 'Accumulated Depreciation - Motor Vehicles', 'ADVECH', '', '2020-08-26 02:26:45', 0),
(53, '1-06-06-990', 'Other Transportation Equipment', 'TRANS', '', '2020-08-26 02:26:45', 0),
(54, '1-06-06-991', 'Accumulated Depreciation - Other Transportation Equipment', 'ADOTRANS', '', '2020-08-26 02:26:45', 0),
(55, '1-06-07-010', 'Furniture and Fixtures', 'FF', '', '2020-08-26 02:26:45', 0),
(56, '1-06-07-011', 'Accumulated Depreciation - Furniture and Fixtures', 'ADFF', '', '2020-08-26 02:26:45', 0),
(57, '1-06-07-020', 'Books', 'BOOK', '', '2020-08-26 02:26:45', 0),
(58, '1-06-07-022', 'Accumulated Impairment Losses - Books', 'AILB', '', '2020-08-26 02:26:45', 0),
(59, '1-06-10-010', 'Construction in Progress - Land Improvements', 'CPLAND', '', '2020-08-26 02:26:45', 0),
(60, '1-06-10-020', 'Construction in Progress - Infrastructure Assets', 'CPINFRA', '', '2020-08-26 02:26:45', 0),
(61, '1-06-10-030', 'Construction in Progress - Buildings and Other Structures', 'CPBUILD', '10 Year', '2020-08-26 02:26:45', 0),
(62, '1-06-99-990', 'Other Property, Plant and Equipment', 'OPPE', '', '2020-08-26 02:26:45', 0),
(63, '1-06-99-991', 'Accumulated Depreciation - Other Property, Plant and Equipment', 'ADOPPE', '', '2020-08-26 02:26:45', 0),
(64, '1-07-01-010', 'Breeding Stocks', 'BREED', '', '2020-08-26 02:26:45', 0),
(65, '1-07-01-011', 'Accumulated Impairment Losses - Breeding Stocks', 'AILBREED', '', '2020-08-26 02:26:45', 0),
(66, '1-07-01-020', 'Livestock', 'L', '', '2020-08-26 02:26:45', 0),
(67, '1-07-01-021', 'Accumulated Impairment Losses - Livestock', 'AILL', '', '2020-08-26 02:26:45', 0),
(68, '1-07-01-030', 'Trees, Plants and Crops', 'TPC', '', '2020-08-26 02:26:45', 0),
(69, '1-07-01-040', 'Aquaculture', 'AQUA', '', '2020-08-26 02:26:45', 0),
(70, '1-07-02-010', 'Livestock Held for Consumption/Sale/Distribution', 'LCSD', '', '2020-08-26 02:26:45', 0),
(71, '1-08-01-020', 'Computer Software', 'CS', '', '2020-08-26 02:26:45', 0),
(72, '1-08-01-990', 'Other Intangible Assets', 'OIA', '', '2020-08-26 02:26:45', 0),
(73, '1-99-01-040', 'Advances to Officers and Employees', 'AOE', '', '2020-08-26 02:26:45', 0),
(74, '1-99-02-010', 'Advances to Contractors', 'AC', '', '2020-08-26 02:26:45', 0),
(75, '1-99-02-050', 'Prepaid Insurance', 'PI', '', '2020-08-26 02:26:45', 0),
(76, '2-01-01-010', 'Accounts Payable', 'AP', '', '2020-08-26 02:26:45', 0),
(77, '2-01-01-020', 'Due to Officers and Employees', 'DOE', '', '2020-08-26 02:26:45', 0),
(78, '2-02-01-010', 'Due to BIR', 'BIR', '', '2020-08-26 02:26:45', 0),
(79, '2-02-01-020', 'Due to GSIS', 'GSIS', '', '2020-08-26 02:26:45', 0),
(80, '2-02-01-040', 'Due to Phil-Health', 'PHEALTH', '', '2020-08-26 02:26:45', 0),
(81, '2-02-01-050', 'Due to NGAs', 'NGA', '', '2020-08-26 02:26:45', 0),
(82, '2-03-01-010', 'Due to Central Office', 'DCO', '', '2020-08-26 02:26:45', 0),
(83, '2-03-01-040', 'Due to Operating Units', 'DOU', '', '2020-08-26 02:26:45', 0),
(84, '2-04-01-040', 'Guarranty/Security Deposits Payable', 'SDP', '', '2020-08-26 02:26:45', 0),
(85, '2-05-01-990', 'Other Deferred Credits', 'ODC', '', '2020-08-26 02:26:45', 0),
(86, '2-05-02-990', 'Other Unearned Revenue', 'OUR', '', '2020-08-26 02:26:45', 0),
(87, '2-99-99-990', 'Other Payables', 'OP', '', '2020-08-26 02:26:45', 0),
(88, '3-01-01-010', 'Accumulated Surplis (Deficit)', 'SURPLIS', '', '2020-08-26 02:26:45', 0),
(89, '3-01-01-030', 'Contributed Capital', 'CONCAP', '', '2020-08-26 02:26:45', 0),
(90, '3-02-01-010', 'Revaluation Surplus', 'SUPLUS', '', '2020-08-26 02:26:45', 0),
(91, '3-03-01-010', 'Revenue and Expense Summary', 'RES', '', '2020-08-26 02:26:45', 0),
(92, '4-01-04-010', 'Documentary Stamp Tax', 'STAMP', '', '2020-08-26 02:26:45', 0),
(93, '4-02-01-040', 'Clearance and Certification Fees', 'CCFEE', '', '2020-08-26 02:26:45', 0),
(94, '4-02-01-140', 'Fines and Penalties - Service Income', 'FINE', '', '2020-08-26 02:26:45', 0),
(95, '4-02-01-990', 'Other Service Income', 'OSI', '', '2020-08-26 02:26:45', 0),
(96, '4-02-02-010', 'School Fees', 'SCHOOL', '', '2020-08-26 02:26:45', 0),
(97, '4-02-02-020', 'Affiliation Fees', 'AF', '', '2020-08-26 02:26:45', 0),
(98, '4-02-02-030', 'Examination Fees', 'EF', '', '2020-08-26 02:26:45', 0),
(99, '4-02-02-050', 'Rent/Lease Income', 'RENT', '', '2020-08-26 02:26:45', 0),
(100, '4-02-02-150', 'Income from Printing and Publication', 'PUB', '', '2020-08-26 02:26:45', 0),
(101, '4-02-02-160', 'Sales Revenue', 'SREV', '', '2020-08-26 02:26:45', 0),
(102, '4-02-02-161', 'Sales Discounts', 'SDIC', '', '2020-08-26 02:26:45', 0),
(103, '4-02-02-210', 'Interest Income', 'INTINC', '', '2020-08-26 02:26:45', 0),
(104, '4-02-02-990', 'Other Business Income', 'OBI', '', '2020-08-26 02:26:45', 0),
(105, '4-03-01-010', 'Subsidy from National Government', 'SNG', '', '2020-08-26 02:26:45', 0),
(106, '4-05-01-040', 'Gain on Sale of Property, Plant and Equipment', 'GSPPE', '', '2020-08-26 02:26:45', 0),
(107, '5-04-02-010', 'Cost of Sales', 'COST', '', '2020-08-26 02:26:45', 0),
(108, '5-04-03-011', 'School funds', 'SF', '', '2020-08-26 02:26:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomponent`
--

CREATE TABLE `tblcomponent` (
  `componentID` int(11) NOT NULL,
  `mainSupply` int(11) DEFAULT NULL,
  `componentSupply` int(11) DEFAULT NULL,
  `descID` int(11) DEFAULT 0,
  `componentStock` int(11) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbldispose`
--

CREATE TABLE `tbldispose` (
  `disposeID` int(11) NOT NULL,
  `reissueID` int(11) DEFAULT NULL,
  `disposeDate` varchar(20) DEFAULT NULL,
  `disposeReceipt` varchar(100) DEFAULT NULL,
  `disposeCost` decimal(11,3) DEFAULT NULL,
  `disposeType` varchar(20) DEFAULT NULL,
  `disposeRemark` varchar(255) DEFAULT NULL,
  `officerID` int(11) DEFAULT NULL,
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldisposeparts`
--

CREATE TABLE `tbldisposeparts` (
  `disposepartsID` int(11) NOT NULL,
  `reissueID` int(11) DEFAULT 0,
  `descID` int(11) NOT NULL DEFAULT 0,
  `disposepartsDate` varchar(20) DEFAULT NULL,
  `disposepartsDesc` varchar(255) DEFAULT NULL,
  `disposepartsCost` decimal(11,3) DEFAULT NULL,
  `disposepartsType` varchar(20) DEFAULT NULL,
  `disposepartsReceipt` varchar(150) DEFAULT NULL,
  `disposepartsRDate` varchar(20) DEFAULT NULL,
  `disposepartsAgency` varchar(200) DEFAULT NULL,
  `disposepartsRemark` varchar(255) DEFAULT NULL,
  `officerID` int(11) DEFAULT NULL,
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblfundcluster`
--

CREATE TABLE `tblfundcluster` (
  `fundID` int(11) NOT NULL,
  `fundCode` varchar(10) DEFAULT NULL,
  `fundName` varchar(100) DEFAULT NULL,
  `fundLegend` varchar(10) NOT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfundcluster`
--

INSERT INTO `tblfundcluster` (`fundID`, `fundCode`, `fundName`, `fundLegend`, `DateCreated`, `no`) VALUES
(1, '05A', 'Internally Generated Fund (Fiduciary)', 'IGFF', '2020-08-26 05:39:14', 0),
(2, '01', 'Regular Agency Fund', 'RAF', '2020-08-26 05:39:14', 0),
(3, '04', 'Business Related Fund', 'BRF', '2020-08-26 05:39:14', 0),
(7, '05B', 'Internally Generated Fund (Non-Fiduciary)', 'IGFNF', '2020-08-26 13:45:24', 0),
(8, '07', 'Trust Receipts', 'TR', '2020-08-26 05:39:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblics`
--

CREATE TABLE `tblics` (
  `icsID` int(11) NOT NULL,
  `icsCode` varchar(30) DEFAULT NULL,
  `icsPO` int(11) DEFAULT 0,
  `officerIDFrom` int(11) DEFAULT NULL,
  `officerIDTo` int(11) DEFAULT NULL,
  `icsDate` varchar(20) DEFAULT NULL,
  `supplierID` int(11) DEFAULT NULL,
  `fundID` int(11) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblicsdet`
--

CREATE TABLE `tblicsdet` (
  `icsdetID` int(11) NOT NULL,
  `icsID` int(11) DEFAULT NULL,
  `supplyID` int(11) DEFAULT NULL,
  `descID` int(11) DEFAULT 0,
  `risppedetID` int(11) DEFAULT 0,
  `icsSerial` varchar(150) DEFAULT NULL,
  `icsNew` int(11) NOT NULL DEFAULT 1,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `logID` int(11) NOT NULL,
  `logRemarks` varchar(250) DEFAULT NULL,
  `officerID` int(11) DEFAULT 0,
  `employeeID` int(11) DEFAULT 0,
  `logType` int(11) DEFAULT -1,
  `logNotif` int(11) DEFAULT 0,
  `logView` varchar(50) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`logID`, `logRemarks`, `officerID`, `employeeID`, `logType`, `logNotif`, `logView`, `DateCreated`, `no`) VALUES
(1, 'JAIME PARDO has been login', 523, 0, 1, 0, '1,2,', '2021-08-03 07:33:52', 523);

-- --------------------------------------------------------

--
-- Table structure for table `tblmenu`
--

CREATE TABLE `tblmenu` (
  `menuID` int(11) NOT NULL,
  `menuDesc` varchar(100) DEFAULT NULL,
  `menuAccess` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmenu`
--

INSERT INTO `tblmenu` (`menuID`, `menuDesc`, `menuAccess`) VALUES
(1, 'homepage', '0,1,2,3,4,5,6,7,8,9,10,'),
(2, 'List of Item', '0,1,2,3,4,5,6,7,8,9,10,'),
(3, 'Available Stock', '0,1,2,3,4,5,6,7,8,9,10,'),
(4, 'Adding New Item', '1,3,5,6,'),
(5, 'My Equipment', '7,8,9,10,'),
(6, 'Requesting Supply', '8,9,10,'),
(7, 'List of Requested Supply', '8,9,10,'),
(8, 'List of RIS', '1,2,5,'),
(9, 'Issuance of ICS/PARE', '1,3,'),
(10, 'Reissuance of Supply/Equipment', '1,3,4,'),
(11, 'List of Issued Supply/Equipment', '1,2,3,4,5,6,'),
(12, 'Return Item', '1,2,3,4,'),
(13, 'List of Returned Item', '1,2,3,4,'),
(14, 'List for Disposal Item', '1,2,3,'),
(15, 'List of Disposed Item', '1,2,3,'),
(16, 'List of Item Category', '0,1,2,3,4,5,6,7,8,9,10,'),
(17, 'List of Fund Cluster', '0,1,2,3,4,5,6,7,8,9,10,'),
(18, 'List of Supplier', '0,1,2,3,4,5,6,7,8,9,10,'),
(19, 'List of Supply Officer', '0,1,2,3,4,5,6,7,8,9,10,'),
(20, 'List of Chart of Accounts', '0,1,2,3,4,5,6,7,8,9,10,'),
(21, 'Bar Code Generator', '1,3,'),
(22, 'Fund Report', '1,2,3,6,'),
(23, 'My Profile', '0,1,2,3,4,5,6,7,8,9,10,'),
(24, 'For Approval of RIS', '1,2,3,'),
(25, 'Change Password', '0,1,2,3,4,5,6,7,8,9,10,'),
(26, 'Encoding of RIS', '1,3,4,'),
(27, 'Encoding of ICS', '1,3,4,'),
(28, 'Encoding of PARE', '1,3,4,'),
(29, 'List of Offices', '0,1,2,3,4,5,6,7,8,9,10,'),
(30, 'List of Employees', '0,1,2,3,4,5,6,7,8,9,10,'),
(31, 'Reset Password', '1,3,'),
(32, 'List of Warehouse', '0,1,2,3,4,5,6,7,8,9,10,'),
(33, 'List of Stock Equipments', '1,2,3,4,'),
(34, 'List of Repair Item', '1,2,3,4,'),
(35, 'Supply Officer Records', '1,3,'),
(36, 'Encoding of RIS (SA)', '0,1,'),
(37, 'Encoding of ICS (SA)', '0,1,'),
(38, 'Encoding of PARE (SA)', '0,1,'),
(39, 'List of PAP', '0,1,2,3,4,5,6,7,8,9,10,'),
(40, 'List of Supply Type', '0,1,2,3,4,5,6,7,8,9,10,'),
(41, 'View Payment Details', '1,6,'),
(42, 'Add Payment Details', '1,6,'),
(43, 'List of Repaired Equipment', '1,2,3,4,'),
(44, 'PPE Ledger Card', '1,6,'),
(45, 'List of PO Details', '1,6,'),
(46, 'List of Supply Components', '1,2,3,6,'),
(47, 'Updated Fund Cluster By Accounting', '1,2,3,6,'),
(48, 'Updated Chart of Account By Accounting', '1,2,3,6,'),
(49, 'Major Repair of Building', '1,2,3,6,'),
(50, 'Property Card', '1,3,'),
(51, 'RSMI', '1,3,5,'),
(52, 'Requesting for Purchase', '8,9,10,'),
(53, 'List of My Purchase Request', '8,10,'),
(54, 'List of PR For Records', '1,2,3,'),
(55, 'List of PR For Approval', '1,2,3,'),
(56, 'Stock Card', '1,3,5,'),
(57, 'RPCI', '1,3,5,'),
(58, 'List for Disposal Parts', '1,2,3,'),
(59, 'Waste Material Reports', '1,3,'),
(60, 'Inventory and Inspection Report of Unserviceable Property', '1,3,5,'),
(61, 'History of Returned Item', '1,3,4,'),
(62, 'Dormant Inventories', '1,2,3,5,'),
(63, 'Equipment exceeding Useful Life', '1,2,3,'),
(64, 'List of Equipment under PO Number', '1,2,3,4,'),
(65, 'Requesting Equipment', '8,10,');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficerrecord`
--

CREATE TABLE `tblofficerrecord` (
  `officerID` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `fromLevel` int(11) NOT NULL,
  `toLevel` int(11) NOT NULL,
  `DateTimeCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblofficerrecord`
--

INSERT INTO `tblofficerrecord` (`officerID`, `accountID`, `fromLevel`, `toLevel`, `DateTimeCreated`, `No`) VALUES
(1, 1, 2, 7, '2021-06-30 03:54:39', 523),
(2, 566, 7, 2, '2021-06-30 06:28:53', 523),
(3, 116, 7, 8, '2021-06-30 06:29:49', 523),
(4, 134, 7, 8, '2021-06-30 06:38:26', 523),
(5, 125, 7, 8, '2021-06-30 06:43:06', 523),
(6, 7, 7, 8, '2021-06-30 06:44:30', 523),
(7, 127, 7, 8, '2021-06-30 06:45:19', 523),
(8, 154, 7, 8, '2021-06-30 06:47:14', 523),
(9, 301, 7, 8, '2021-06-30 06:47:27', 523),
(10, 55, 7, 8, '2021-06-30 06:48:28', 523),
(11, 183, 7, 8, '2021-06-30 06:48:41', 523),
(12, 159, 7, 8, '2021-06-30 06:48:55', 523),
(13, 138, 7, 8, '2021-06-30 06:49:12', 523),
(14, 187, 7, 8, '2021-06-30 06:49:24', 523),
(15, 118, 7, 8, '2021-06-30 06:49:49', 523),
(16, 214, 7, 8, '2021-06-30 06:50:05', 523),
(17, 198, 7, 8, '2021-06-30 06:50:30', 523),
(18, 192, 7, 8, '2021-06-30 06:50:39', 523),
(19, 181, 7, 8, '2021-06-30 06:50:47', 523),
(20, 140, 7, 8, '2021-06-30 06:51:20', 523),
(21, 180, 7, 8, '2021-06-30 06:51:33', 523),
(22, 119, 7, 8, '2021-06-30 06:51:44', 523),
(23, 120, 7, 8, '2021-06-30 06:51:53', 523),
(24, 143, 7, 8, '2021-06-30 06:52:58', 523),
(25, 208, 7, 8, '2021-06-30 06:53:10', 523),
(26, 258, 7, 8, '2021-06-30 06:53:29', 523),
(27, 209, 7, 8, '2021-06-30 06:53:46', 523),
(28, 322, 7, 8, '2021-06-30 06:54:09', 523),
(29, 15, 7, 8, '2021-06-30 06:54:35', 523),
(30, 244, 7, 8, '2021-06-30 06:54:53', 523),
(31, 298, 7, 8, '2021-06-30 06:55:03', 523),
(32, 218, 7, 8, '2021-06-30 06:55:13', 523),
(33, 12, 7, 8, '2021-06-30 06:55:39', 523),
(34, 4, 7, 8, '2021-06-30 06:55:58', 523),
(35, 9, 7, 8, '2021-06-30 06:56:08', 523),
(36, 13, 7, 8, '2021-06-30 06:56:32', 523),
(37, 18, 7, 8, '2021-06-30 06:58:39', 523),
(38, 24, 7, 8, '2021-06-30 06:58:49', 523),
(39, 17, 7, 8, '2021-06-30 06:59:06', 523),
(40, 19, 7, 8, '2021-06-30 06:59:17', 523),
(41, 379, 7, 4, '2021-07-07 02:56:35', 523),
(42, 505, 7, 4, '2021-07-07 02:58:33', 523),
(43, 96, 7, 4, '2021-07-07 02:59:03', 523),
(44, 277, 7, 4, '2021-07-07 02:59:32', 523),
(45, 456, 7, 4, '2021-07-07 03:00:05', 523),
(46, 338, 7, 4, '2021-07-07 03:00:22', 523),
(47, 397, 7, 4, '2021-07-07 03:00:43', 523),
(48, 503, 7, 4, '2021-07-07 03:01:02', 523),
(49, 383, 7, 4, '2021-07-07 03:01:23', 523),
(50, 4, 7, 6, '2021-07-07 03:01:47', 523),
(51, 476, 7, 6, '2021-07-07 03:02:40', 523),
(52, 43, 7, 6, '2021-07-07 03:03:10', 523),
(53, 16, 7, 6, '2021-07-07 03:03:33', 523),
(54, 22, 7, 3, '2021-07-07 03:03:50', 523),
(55, 361, 7, 3, '2021-07-07 03:04:09', 523),
(56, 75, 7, 3, '2021-07-07 03:04:17', 523),
(57, 461, 7, 3, '2021-07-07 03:04:28', 523),
(58, 420, 4, 7, '2021-07-07 03:06:02', 523),
(59, 44, 4, 7, '2021-07-07 03:07:39', 523),
(60, 314, 4, 7, '2021-07-07 03:07:53', 523),
(61, 63, 4, 7, '2021-07-07 03:08:17', 523),
(62, 216, 4, 7, '2021-07-07 03:08:28', 523),
(63, 346, 4, 7, '2021-07-07 03:08:38', 523),
(64, 567, 7, 4, '2021-07-30 01:26:38', 523),
(65, 216, 7, 4, '2021-07-30 01:53:26', 523),
(66, 92, 7, 4, '2021-07-30 03:36:48', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbloffices`
--

CREATE TABLE `tbloffices` (
  `officeID` int(11) NOT NULL,
  `officeCode` varchar(20) DEFAULT NULL,
  `officeName` varchar(150) DEFAULT NULL,
  `campusID` int(11) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbloffices`
--

INSERT INTO `tbloffices` (`officeID`, `officeCode`, `officeName`, `campusID`, `DateCreated`, `no`) VALUES
(0, '', 'Undesignated Office', 1, '2021-02-16 03:33:40', 0),
(1, 'OP', 'Office of the President', 1, '2021-02-16 03:33:40', 0),
(2, 'OBS', 'Office of the Board Secretary', 1, '2021-02-16 03:33:40', 0),
(3, 'OVPAF', 'Office of the Vice President for Administration and Finance', 1, '2021-02-16 03:33:40', 0),
(4, 'OVPAA', 'Office of the Vice President for Academic Affairs', 1, '2021-02-16 03:33:40', 0),
(5, 'OVPRE', 'Office of the Vice President for Research and Extension', 1, '2021-02-16 03:33:40', 0),
(6, 'CAO', 'Office of the Chief Administrative Officer', 1, '2021-02-16 03:33:40', 0),
(7, 'IPDO', 'Institutional Planning and Development Office', 1, '2021-02-16 03:33:40', 0),
(8, 'PICRO', 'Public Information and Community Relations Office', 1, '2021-02-16 03:33:40', 0),
(9, 'ICO', 'Internal Control Office', 1, '2021-02-16 03:33:40', 0),
(10, 'MIS', 'Management Information System', 1, '2021-02-16 03:33:40', 0),
(11, 'AAO', 'Alumni Affairs Office', 1, '2021-02-16 03:33:40', 0),
(12, 'NSTP', 'National Service Training Program Office', 1, '2021-02-16 03:33:40', 0),
(13, 'Registrar', 'Registrars Office', 1, '2021-02-16 03:33:40', 0),
(14, 'SWF', 'Sentro ng Wika at Filipino', 1, '2021-02-16 03:33:40', 0),
(15, 'Library', 'College Library', 1, '2021-02-16 03:33:40', 0),
(16, 'GTAO', 'Guidance, Testing and Admissions Office', 1, '2021-02-16 03:33:40', 0),
(17, 'QAO', 'Quality Assurance Office', 1, '2021-02-16 03:33:40', 0),
(18, 'OSSD', 'Office of the Students Services and Development', 1, '2021-02-16 03:33:40', 0),
(19, 'SDO', 'Sports Development Office', 1, '2021-02-16 03:33:40', 0),
(20, 'CPAU', 'Curlture and Performing Arts Unit', 1, '2021-02-16 03:33:40', 0),
(21, 'IRLO', 'International Relations and Linkages Office', 1, '2021-02-16 03:33:40', 0),
(22, 'Clinic', 'Medical and Dental Clinic', 1, '2021-02-16 03:33:40', 0),
(23, 'Printing Press', 'Printing and Publication Office', 1, '2021-02-16 03:33:40', 0),
(24, 'Accounting', 'Accounting Office', 1, '2021-02-16 03:33:40', 0),
(25, 'Cashier', 'Cashiers Office', 1, '2021-02-16 03:33:40', 0),
(26, 'HRDO', 'Human Resource Development Office', 1, '2021-02-16 03:33:40', 0),
(27, 'SPMO', 'Supply and Property Management Office', 1, '2021-02-16 03:33:40', 0),
(28, 'Budget', 'Budget Office', 1, '2021-02-16 03:33:40', 0),
(29, 'RMO', 'Records Management Office', 1, '2021-02-16 03:33:40', 0),
(30, 'SSMO', 'Security and Safety Management Office', 1, '2021-02-16 03:33:40', 0),
(31, 'Motorpool', 'Motorpool', 1, '2021-02-16 03:33:40', 0),
(32, 'FMU', 'Facilities Management Unit', 1, '2021-02-16 03:33:40', 0),
(33, 'CAS', 'College of Arts and Sciences', 7, '2021-02-16 03:33:40', 0),
(34, 'CoEng', 'College of Engineering', 8, '2021-02-16 03:33:40', 0),
(36, 'CBPA', 'College of Business & Public Administration', 9, '2021-02-16 03:33:40', 0),
(38, 'ICS', 'Institute of Computer Studies', 10, '2021-02-16 03:33:40', 0),
(41, 'GS', 'Graduate School', 11, '2021-02-16 03:33:40', 0),
(42, 'GDO', 'Gender and Development Office', 1, '2021-02-16 03:33:40', 0),
(43, 'SFAU', 'Students Financial Assistance Unit', 1, '2021-02-16 03:33:40', 0),
(44, 'CoEd', 'ABAÑO CAMPUS', 2, '2021-02-16 03:33:40', 0),
(45, 'CoTT', 'JOSE PANGANIBAN CAMPUS', 3, '2021-02-16 03:33:40', 0),
(46, 'CANR', 'LABO CAMPUS', 4, '2021-02-16 03:33:40', 0),
(47, 'IABD', 'ENTIENZA CAMPUS', 5, '2021-02-16 03:33:40', 0),
(48, 'IFMS', 'MERCEDES CAMPUS', 6, '2021-02-16 03:33:40', 0),
(51, 'Stock', 'Stock Room', 1, '2021-02-16 03:33:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpap`
--

CREATE TABLE `tblpap` (
  `papID` int(11) NOT NULL,
  `papCode` varchar(50) DEFAULT NULL,
  `papName` varchar(150) DEFAULT NULL,
  `DateTimeCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpap`
--

INSERT INTO `tblpap` (`papID`, `papCode`, `papName`, `DateTimeCreated`, `no`) VALUES
(1, 'GASS', 'General Administration and Support Services', '2021-03-19 03:52:05', NULL),
(2, 'STO', 'Support to Operations', '2021-03-19 03:52:05', NULL),
(3, 'Higher', 'Higher Education', '2021-03-19 03:52:05', NULL),
(4, 'Advance', 'Advance Education', '2021-03-19 03:52:05', NULL),
(5, 'Research', 'Research', '2021-03-19 03:52:05', NULL),
(6, 'Extension', 'Extension', '2021-03-19 03:52:05', NULL),
(7, 'Purpose', 'Purpose', '2021-03-19 03:52:38', 523);

-- --------------------------------------------------------

--
-- Table structure for table `tblpare`
--

CREATE TABLE `tblpare` (
  `pareID` int(11) NOT NULL,
  `pareCode` varchar(40) DEFAULT NULL,
  `parePO` int(11) DEFAULT 0,
  `pareDateRequest` varchar(20) DEFAULT NULL,
  `officerIDFrom` int(11) DEFAULT NULL,
  `officerIDTo` int(11) DEFAULT NULL,
  `supplierID` int(11) DEFAULT NULL,
  `fundID` int(11) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblparedet`
--

CREATE TABLE `tblparedet` (
  `paredetID` int(11) NOT NULL,
  `pareID` int(11) DEFAULT NULL,
  `supplyID` int(11) DEFAULT NULL,
  `descID` int(11) DEFAULT 0,
  `risppedetID` int(11) DEFAULT 0,
  `pareSerial` varchar(150) DEFAULT NULL,
  `pareNew` int(11) NOT NULL DEFAULT 1,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `paymentID` int(11) NOT NULL,
  `paymentReceipt` varchar(100) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `paymentType` varchar(10) DEFAULT NULL,
  `poID` int(11) DEFAULT 0,
  `paymentAmount` decimal(11,3) DEFAULT 0.000,
  `paymentTax` decimal(11,3) DEFAULT 0.000,
  `paymentLiquidate` decimal(11,3) DEFAULT 0.000,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `No` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpo`
--

CREATE TABLE `tblpo` (
  `poID` int(11) NOT NULL,
  `poCode` varchar(150) DEFAULT NULL,
  `poDateReceipt` varchar(20) DEFAULT NULL,
  `fundID_SPMO` int(11) DEFAULT 0,
  `fundID` int(11) DEFAULT NULL,
  `supplierID` int(11) DEFAULT NULL,
  `papID` int(11) DEFAULT 0,
  `DateTimeCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpo`
--

INSERT INTO `tblpo` (`poID`, `poCode`, `poDateReceipt`, `fundID_SPMO`, `fundID`, `supplierID`, `papID`, `DateTimeCreated`, `no`) VALUES
(4, '07-2021-030', '2021-07-09', 1, 1, 106, 5, '2021-07-30 06:10:38', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchase`
--

CREATE TABLE `tblpurchase` (
  `purchaseID` int(11) NOT NULL,
  `supplyID` int(11) DEFAULT 0,
  `purchaseDesc` varchar(250) DEFAULT NULL,
  `purchasePurpose` varchar(200) DEFAULT NULL,
  `purchaseUnit` varchar(50) DEFAULT NULL,
  `isReplacement` tinyint(1) NOT NULL DEFAULT 0,
  `reissueID` int(11) DEFAULT 0,
  `purchaseQuantity` int(11) DEFAULT 0,
  `purchaseBudget` int(11) DEFAULT 0,
  `employeeID` int(11) DEFAULT 0,
  `IsApproved` int(11) DEFAULT 0,
  `officerID` int(11) DEFAULT 0,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblreissue`
--

CREATE TABLE `tblreissue` (
  `reissueID` int(11) NOT NULL,
  `officerID` int(11) DEFAULT NULL,
  `reissueDate` varchar(50) DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL,
  `icsdetID` int(11) DEFAULT 0,
  `paredetID` int(11) DEFAULT 0,
  `supplyID` int(11) DEFAULT NULL,
  `reissueProperty` varchar(50) DEFAULT NULL,
  `reissueSerial` varchar(150) DEFAULT NULL,
  `reissueStatus` int(11) NOT NULL DEFAULT 0,
  `parentID` int(11) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblreissuedet`
--

CREATE TABLE `tblreissuedet` (
  `reissuedetID` int(11) NOT NULL,
  `reissueID` int(11) DEFAULT NULL,
  `descID` int(11) DEFAULT 0,
  `DateTimeCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblreturn`
--

CREATE TABLE `tblreturn` (
  `returnID` int(11) NOT NULL,
  `reissueID` int(11) DEFAULT NULL,
  `isReturn` tinyint(1) DEFAULT NULL,
  `returnDate` varchar(20) DEFAULT NULL,
  `returnIsWork` tinyint(1) DEFAULT NULL,
  `repairCost` int(11) NOT NULL DEFAULT 0,
  `repairType` varchar(150) DEFAULT NULL,
  `returnRemarks` varchar(255) DEFAULT NULL,
  `officerID` int(11) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblris`
--

CREATE TABLE `tblris` (
  `risID` int(11) NOT NULL,
  `risCode` varchar(40) DEFAULT NULL,
  `officerID` int(11) DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL,
  `risDate` varchar(20) DEFAULT NULL,
  `risPurpose` varchar(150) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrisdet`
--

CREATE TABLE `tblrisdet` (
  `risdetID` int(11) NOT NULL,
  `risID` int(11) DEFAULT NULL,
  `risNew` tinyint(1) DEFAULT 1,
  `supplyID` int(11) DEFAULT NULL,
  `stockID` int(11) NOT NULL DEFAULT 0,
  `risQuantity` int(11) DEFAULT NULL,
  `risAvailable` int(11) DEFAULT 0,
  `risStatus` int(11) DEFAULT NULL,
  `risRemarks` varchar(150) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrisppe`
--

CREATE TABLE `tblrisppe` (
  `risppeID` int(11) NOT NULL,
  `risppePONo` int(11) NOT NULL DEFAULT 0,
  `risppeCode` varchar(40) DEFAULT NULL,
  `risppeDate` varchar(20) DEFAULT NULL,
  `employeeID` int(11) NOT NULL DEFAULT 0,
  `officerID` int(11) NOT NULL DEFAULT 0,
  `risppeStatus` int(11) NOT NULL DEFAULT 0,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `no` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrisppe`
--

INSERT INTO `tblrisppe` (`risppeID`, `risppePONo`, `risppeCode`, `risppeDate`, `employeeID`, `officerID`, `risppeStatus`, `DateCreated`, `no`) VALUES
(27, 4, 'RIS-PPE-202108-00001', '2021-08-02', 523, 523, 1, '2021-08-02 07:24:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblrisppedet`
--

CREATE TABLE `tblrisppedet` (
  `risppedetID` int(11) NOT NULL,
  `risppeID` int(11) NOT NULL DEFAULT 0,
  `stockID` int(11) NOT NULL DEFAULT 0,
  `risppedetQuantity` int(11) NOT NULL DEFAULT 0,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `no` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrisppedet`
--

INSERT INTO `tblrisppedet` (`risppedetID`, `risppeID`, `stockID`, `risppedetQuantity`, `DateCreated`, `no`) VALUES
(33, 27, 18, 2, '2021-08-02 07:24:15', 523);

-- --------------------------------------------------------

--
-- Table structure for table `tblstatus`
--

CREATE TABLE `tblstatus` (
  `statusID` int(11) NOT NULL,
  `statusNo` int(11) DEFAULT NULL,
  `statusDesc` varchar(150) DEFAULT NULL,
  `statusTable` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstatus`
--

INSERT INTO `tblstatus` (`statusID`, `statusNo`, `statusDesc`, `statusTable`) VALUES
(1, 0, 'Requesting', 'RIS'),
(2, 1, 'Supply Available', 'RIS'),
(3, 2, 'Supply Not Available', 'RIS'),
(4, 3, 'Supply Returned', 'RIS'),
(5, 4, 'Supply Approved', 'RIS'),
(6, 5, 'Supply Disapproved', 'RIS'),
(7, 0, '-', 'Supply'),
(8, 1, 'Available', 'Supply'),
(9, 2, 'Not Available', 'Supply'),
(10, 0, 'Employee', 'Return'),
(11, 1, 'Supply Officer in Department', 'Return'),
(12, 2, 'Supply Officer in SPMO', 'Return'),
(13, 3, 'For Disposal Item', 'Return'),
(14, 4, 'Disposed Item', 'Return'),
(15, 5, 'Warehouse', 'Return'),
(16, 6, 'Reissue to Other Employee', 'Return'),
(17, 1, 'Working', 'Return Work'),
(18, 2, 'Not Working', 'Return Work'),
(19, 1, 'Active', 'Supplier'),
(20, 2, 'Suspended', 'Supplier'),
(21, 3, 'Blacklist', 'Supplier'),
(22, 0, 'Active', 'Reissue'),
(23, 1, 'Returned', 'Reissue'),
(24, 2, 'Returned in SPMO', 'Reissue'),
(25, 3, 'Warehouse', 'Reissue'),
(26, 4, 'Disposed', 'Reissue'),
(27, 5, 'Reissued to Other Employee', 'Reissue'),
(28, 7, 'For Repair', 'Return'),
(29, 1, 'Stored', 'WarehouseDet'),
(30, 0, 'Forwarded', 'WarehouseDet'),
(31, 2, 'Disposed', 'WarehouseDet'),
(32, 0, 'Old', 'risNew, icsNew, pareNew'),
(33, 1, 'New', 'risNew, icsNew, pareNew'),
(34, -1, 'Temporary', 'risNew, icsNew, pareNew'),
(35, 0, 'Requesting', 'RISPPE'),
(36, 1, 'Issued', 'RISPPE'),
(39, 0, 'New Set of Equipment', 'tblpurchase (isReplacement)'),
(40, 1, 'For Replacement Part', 'tblpurchase (isReplacement)'),
(41, 0, 'Requesting', 'tblpurchase (IsApproved)'),
(42, 1, 'Approved', 'tblpurchase (IsApproved)'),
(43, 2, 'Disapproved', 'tblpurchase (IsApproved)'),
(44, 1, 'Login', 'Logs'),
(45, 2, 'Add New Item', 'Logs'),
(46, 3, 'Add Stocks', 'Logs'),
(47, 4, 'Request', 'Logs'),
(48, 5, 'Issuance', 'Logs'),
(49, 6, 'Reissuance', 'Logs'),
(50, 7, 'Return', 'Logs'),
(51, 8, 'Dispose', 'Logs'),
(52, 9, 'Update Information', 'Logs'),
(53, 10, 'Generate Barcode', 'Logs'),
(54, 0, 'Add New Component of Buildings', 'Logs'),
(55, 11, 'Repair', 'Logs');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock`
--

CREATE TABLE `tblstock` (
  `stockID` int(11) NOT NULL,
  `supplyID` int(11) DEFAULT NULL,
  `stockAvailable` int(11) DEFAULT NULL,
  `stockBalance` int(11) DEFAULT 0,
  `descID` int(11) DEFAULT 0,
  `poID` int(11) DEFAULT 0,
  `DRCode` varchar(150) DEFAULT NULL,
  `DRDate` varchar(20) DEFAULT NULL,
  `DateTimeCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstock`
--

INSERT INTO `tblstock` (`stockID`, `supplyID`, `stockAvailable`, `stockBalance`, `descID`, `poID`, `DRCode`, `DRDate`, `DateTimeCreated`, `no`) VALUES
(9, 1048, 12, 12, 10, 4, '4938', '2021-07-19', '2021-07-30 06:10:38', 10),
(10, 993, 2, 2, 11, 4, '4938', '2021-07-19', '2021-07-30 06:21:53', 10),
(11, 1023, 1, 1, 12, 4, '4938', '2021-07-19', '2021-07-30 06:24:04', 10),
(12, 1011, 6, 6, 13, 4, '4938', '2021-07-19', '2021-07-30 06:26:12', 10),
(13, 906, 1, 1, 14, 4, '4938', '2021-07-19', '2021-07-30 06:28:42', 10),
(14, 993, 3, 3, 15, 4, '4938', '2021-07-19', '2021-07-30 06:29:54', 10),
(15, 1051, 1, 1, 16, 4, '4938', '2021-07-19', '2021-07-30 06:33:33', 10),
(16, 890, 1, 1, 17, 4, '4938', '2021-07-19', '2021-07-30 06:34:55', 10),
(17, 1016, 1, 1, 18, 4, '4938', '2021-07-19', '2021-07-30 06:36:56', 10),
(18, 1052, 10, 10, 19, 4, '4938', '2021-07-19', '2021-07-30 06:43:53', 10),
(19, 1016, 1, 1, 20, 4, '4938', '2021-07-19', '2021-07-30 06:43:53', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE `tblsupplier` (
  `supplierID` int(11) NOT NULL,
  `supplierCode` varchar(20) DEFAULT NULL,
  `supplierName` varchar(100) DEFAULT NULL,
  `supplierAddress` varchar(255) DEFAULT NULL,
  `supplierGEPS` varchar(50) NOT NULL,
  `supplierDBP` int(11) NOT NULL,
  `supplierEmail` varchar(100) DEFAULT NULL,
  `supplierCPerson` varchar(100) DEFAULT NULL,
  `supplierPosition` varchar(50) DEFAULT NULL,
  `supplierTelNo` varchar(30) DEFAULT NULL,
  `supplierCpNo` varchar(20) DEFAULT NULL,
  `supplierTIN` varchar(30) DEFAULT NULL,
  `supplierStatus` int(11) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`supplierID`, `supplierCode`, `supplierName`, `supplierAddress`, `supplierGEPS`, `supplierDBP`, `supplierEmail`, `supplierCPerson`, `supplierPosition`, `supplierTelNo`, `supplierCpNo`, `supplierTIN`, `supplierStatus`, `DateCreated`, `no`) VALUES
(1, 'S0001', 'Auto Save Corporation', 'San Jose, Pili, Camarines Sur', 'N/A', 1, 'na@email.com', 'Adonis Jamir B. Bellen', 'N/A', '1', '1', '1', 1, '2020-08-26 03:58:02', 0),
(2, 'S0002', 'AVZ Construction and Supply', 'Purok Atis, Brgt. Gubay, Daet, Camarines Norte', '', 0, 'avzconstructionandsupply@yahoo.com', 'Arnol V. Zamora', 'N/A', '440-1225', '09285029085', '128-067-089-000', 1, '2020-08-26 03:58:02', 0),
(3, 'S0003', 'Baesa Piggery Farm', 'Purok 3, Brgy. Dogongan, Daet, Camarines Norte', '', 0, 'N/A', 'Crismars Baesa', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(4, 'S0004', 'Bagasbas Lighthouse Resort, Hotel & Restaurant', 'Bagasbas, Daet, Camarines Norte', '', 0, 'bagasbas-lighthouse@yahoo.com', 'Rina Abanto', 'N/A', 'N/A', '09175101856', '007-527-734-000', 1, '2020-08-26 03:58:02', 0),
(5, 'S0005', 'Bicol Garments', 'J. Lukban Extension, Daet, Camarines Norte', '', 0, 'biccolgarment-2017@yahoo.com', 'Emanuel Revez', 'N/A', 'N/A', '09504037677', '923-145-974', 1, '2020-08-26 03:58:02', 0),
(6, 'S0006', 'Big Normans Garden, Supplies and Services', 'Brgy. Cobangbang, Daet, Camarines Norte', '', 0, 'cntb-18@yahoo.com', 'Cristopher Norman T. Bertillo', 'N/A', 'N/A', '09298176699', '926-316-151-001', 1, '2020-08-26 03:58:02', 0),
(7, 'S0007', 'Black Beauty Tailoring', 'Jose Panganiban, Camarines Norte', '', 0, 'N/A', 'Regie Barela Tailoring', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(8, 'S0008', 'Bonitas Lechon House', 'F. Pimentel Avenue, Daet, Camarines Norte', '', 0, 'amoravecilla@yahoo.com', 'Alea Amor A. De Jesus', 'N/A', '721-0553', '09301964732', '139-404-795', 1, '2020-08-26 03:58:02', 0),
(9, 'S0009', 'Bonings Trading', '36-38 General Luna Street, Naga City', '', 0, 'bontrad@hotmail.com', 'N/A', 'N/A', '(053) 473-6550', 'N/A', '106-089-021-000', 1, '2020-08-26 03:58:02', 0),
(10, 'S0010', 'Bookquick Marketing', '2528 La Consolacion St.,Guadalupe Nuevo, Makati City', '', 0, 'thessmauilar@yahoo.com', 'Marites Aguilar', 'N/A', '(02)998-1381', '0917-844-4756', '107-751-977-000', 1, '2020-08-26 03:58:02', 0),
(11, 'S0011', 'Box Office General Merchandise', 'Moreno Street, Daet, Camarines Norte', '', 0, 'N/A', 'Jasper C. Tiu', 'N/A', 'N/A', '09271498066', '315-627-337-000', 1, '2020-08-26 03:58:02', 0),
(12, 'S0012', 'Bulakeña Garden', 'Purok 1, Brgy. Itomang, Talisay, Camarines Norte', '', 0, 'N/A', 'Mariefe C. Toribio', 'N/A', 'N/A', '09487611360', '615-227-000', 1, '2020-08-26 03:58:02', 0),
(13, 'S0013', 'Bytezone Sales and Services', 'Purok 2, Brgy. Parang, Jose Panganiban, Camarines Norte', '', 0, 'N/A', 'Junalyn Leona', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(14, 'S0014', 'Ceboom Enterprises', '13-B, Anonas Street, Project 3, Quezon City, Metro Manila', '', 0, 'ceboom-enterprises@yahoo.com', 'Earl Vincent B. Castañeda', 'N/A', '(02) 879-1058', '09178683382', '224-131-685', 1, '2020-08-26 03:58:02', 0),
(15, 'S0015', 'Ce-logic Inc.', '#839, EDSA, South Triangle, Quezon City, Metro Manila', '', 0, 'N/A', 'Daria Rose Manlayaon', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(16, 'S0016', 'Chemline Scientific Corporation', '28 Law St., Victoria Subd., Tandang Sora, Quezon City, Metro Manila', '', 0, 'N/A', 'Evangeline C. Magtoto', 'N/A', 'N/A', 'N/A', '007-556-435-000', 1, '2020-08-26 03:58:02', 0),
(17, 'S0017', 'Commerce Asia, Inc.', '2F Vazquez-Madrigal Plaza, 51 Annapolis St., Greenhills, San Juan City', '', 0, 'N/A', 'Raymund F. Miguel', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(18, 'S0018', 'Compadre Glass Supply and Hardware', 'Vinzons Avenue, Daet, Camarines Norte', '', 0, 'dantedvarin@yahoo.com', 'Dante Varin', 'N/A', 'N/A', '09175442822', '102-704-367-000', 1, '2020-08-26 03:58:02', 0),
(19, 'S0019', 'Congrande Furniture', 'Maharlika Highway, Concepcion Grande, Naga City', '', 0, 'N/A', 'Maricon D. Deres', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(20, 'S0020', 'Copylandia Office', 'Naga City', '', 0, 'naga@copylandia.com', 'Hanna Llaguno', 'N/A', '(053) 473-4937', 'N/A', '002-332-000-008', 1, '2020-08-26 03:58:02', 0),
(21, 'S0021', 'Daet Concrete Products & Construction Supply', 'Vinzons Avenue, Daet, Camarines Norte', '', 0, 'N/A', 'Nena Ong', 'N/A', '(053)440-1999', 'N/A', '102-703-777', 1, '2020-08-26 03:58:02', 0),
(22, 'S0022', 'Daet Curtain Master and Merchandise', 'Colon Street, Brgy. III, Daet, Camarines Norte', '', 0, 'N/A', 'Ernesto M. Abuyo', 'N/A', 'N/A', '09465138920', 'N/A', 1, '2020-08-26 03:58:02', 0),
(23, 'S0023', 'Daet New Era Trading', 'Vinzons Avenue, Daet Camarines Norte', '', 0, 'veronicaong@yahoo.com', 'Romeo C. Ong', 'N/A', '721-2465', '09209618174', '102-703-124-000', 1, '2020-08-26 03:58:02', 0),
(24, 'S0024', 'Davao Citi Hardware', 'Brgyy. Binanuaan, Talisay, Camarines Norte', '', 0, 'N/A', 'Jessica Tolento', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(25, 'S0025', 'D Golden Touch Advertising', '#65, Sto.Tomas, Magarao, Camarines Sur', '', 0, 'N/A', 'Domingo B. Orcine', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(26, 'S0026', 'Diegos Grill', 'Diego Liñan Street, Daet, Camarines Norte', '', 0, 'N/A', 'Lief Roger C. Tolentino', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(27, 'S0027', 'Digitrend Sales and Services', 'Door 1, Villamonte Bld., Brgy. Lag-on, Daet, Camarines Norte', '', 0, 'N/A', 'Benigno R. Elevado', 'N/A', 'N/A', 'N/A', '184-546-324-000', 1, '2020-08-26 03:58:02', 0),
(28, 'S0028', 'Digitrend Sales and Services', 'Door 1, Villamonte Bld., Brgy. Lag-on, Daet, Camarines Norte', '', 0, 'N/A', 'Benigno R. Elevado', 'N/A', 'N/A', 'N/A', '184-546-324-000', 1, '2020-08-26 03:58:02', 0),
(29, 'S0029', 'DVS Dolor Marketing Inc.', 'Vinzons Avenue, Daet, Camarines Norte', '', 0, 'N/A', 'Ruth C. Trapane', 'N/A', '571-2354 / 571-2355 / 721-2459', 'N/A', '000-269-522', 1, '2020-08-26 03:58:02', 0),
(30, 'S0030', 'E.B. Belmes Engineering Services', '83 Velasco Street, Tagas, Daraga, Albay', '', 0, 'N/A', 'Emmanuel B. Belmes', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(31, 'S0031', 'Edellie Medical Supply Trading', '#25 Panganiban Drive, Naga City', '', 0, 'N/A', 'Lissa Arimado Azares', 'N/A', 'N/A', 'N/A', '947-581-744-000', 1, '2020-08-26 03:58:02', 0),
(32, 'S0032', 'EESM Bookstore', '113-B Stanford Street, Cubao, E. Rodriguez 3, Quezon City', '', 0, 'N/A', 'Eduardo E. Sta. maria', 'N/A', 'N/A', 'N/A', '212-737-515-000', 1, '2020-08-26 03:58:02', 0),
(33, 'S0033', 'Ejcad Enterprises', 'Lot 1, Block 7, Bautista Prop. Sampaloc IV, Dasmariñas, Cavite', '', 0, 'N/A', 'Elpidio T. Bohol, Jr.', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(34, 'S0034', 'Electronic Information Soultions, Inc.', '1695 Auro-Vir Plaza, Evangelista St., Brgy. Bangkal, Makati City', '', 0, 'eisi@eisi.com.ph', 'Zenaida Abragan', 'N/A', 'N/A', '09228829759', '002-857-352-000', 1, '2020-08-26 03:58:02', 0),
(35, 'S0035', 'England Textiles', '596 Claro M. Recto Avenue, Manila', '', 0, 'N/A', 'Alexander Tee', 'N/A', '(02)244-1436', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(36, 'S0036', 'Equilast, Inc.', 'Unit 1235 City & Land Mega Plaza, ADB Ave. cor Garnet Road, Ortigas Center, Pasig City', '', 0, 'N/A', 'Robert G. Dy', 'N/A', 'N/A', 'N/A', '009-005-416-000', 1, '2020-08-26 03:58:02', 0),
(37, 'S0037', 'Ever Industries', '50 General Luna Street, Ginaga, Naga City, Camarines Sur / 2739 Rizal Avenue, Sta. Cruz, Manila', '', 0, 'everindustries.merchandising@yahoo.com.ph', 'David T. Lee / Salvadora T. Lee', 'N/A', '(053)473-9259 / (054)811-1284 ', 'N/A', '114-091-187-000', 1, '2020-08-26 03:58:02', 0),
(38, 'S0038', 'Farmster Agrivet and General Merchandise', 'Poblacion 2, Mangcamagong Road, Basud, Camarines Norte', '', 0, 'N/A', 'Kristine S. Sarmiento', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(39, 'S0039', 'Fotograce Digital Express', 'Vinzons Avenue, Daet, Camarines Norte', '', 0, 'N/A', 'Grace Cotauco', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(40, 'S0040', 'Gakken Philippines, Inc.', 'Camelo Bldg. Imelda Roces Avenue, Tahao Road, Legazpi City', '', 0, 'N/A', 'Romnick Q. Fulay', 'N/A', 'N/A', 'N/A', '004-475-204-000', 1, '2020-08-26 03:58:02', 0),
(41, 'S0041', 'Gazcape', 'P-1, San Vicente Road, Lag-on, Daet, Camarines Norte', '', 0, 'N/A', 'Chiradee D. Ramos', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(42, 'S0042', 'Global Digital Printing, Advertising and General Merchandise', 'Unit 5, Gache Plaza Bldg. F. Pimentel Avenue, Daet, Camarines Norte', '', 0, 'N/A', 'Maria Jessa Mabeza', 'N/A', 'N/A', 'N/A', '211-439-377-000', 1, '2020-08-26 03:58:02', 0),
(43, 'S0043', 'Golden Egg Builder', 'P-5, Brgy. Magang, Daet, Camarines Norte', '', 0, 'goldenbuilder@yahoo.com.ph', 'Rey A. Lagarteja', 'N/A', 'N/A', '0947-991-7710', '923-157-636-000', 1, '2020-08-26 03:58:02', 0),
(44, 'S0044', 'Greenfield Agricultural Supply and General Merchandise', 'Maharlika Highway, Basud, Camarines Norte', '', 0, 'N/A', 'Liezel Sarmiento', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(45, 'S0045', 'Happy 2gether Commercial', 'Brgy. 293, Binondo, Manila', '', 0, 'N/A', 'Samuel M. Yap', 'N/A', '(02)253-1763', 'N/A', '156-922-884-000', 1, '2020-08-26 03:58:02', 0),
(46, 'S0046', 'Hazel Villafuerte Mangiga Surverying and Engineering Services', 'Maharlika Highway, Brgy. Gumamela, Labo, Camarines Norte', '', 0, 'N/A', 'Hazel V. Mangiga', 'N/A', 'N/A', 'N/A', '933-759-086-000', 1, '2020-08-26 03:58:02', 0),
(47, 'S0047', 'Houseware Plaza Superstore', 'Central Plaza Complex, Brgy. Lag-on, Daet, Camarines Norte', '', 0, 'houseware-plaza@yahoo.com', 'Me-ann Naing', 'N/A', '(054)721-2552', '0949-463-9930', '004-180-231-000', 1, '2020-08-26 03:58:02', 0),
(48, 'S0048', 'Humil International Corporation', '419 Alegria Street, Sampaloc, Metro Manila', '', 0, 'N/A', 'Arthur E. Dean', 'N/A', 'N/A', 'N/A', '007-050-230-000', 1, '2020-08-26 03:58:02', 0),
(49, 'S0049', 'Hyundai Alabang, Inc.', 'KM-44-2, Maharlika Highway, Del Rosario, Naga City', '', 0, 'N/A', 'Marlon S. Mercado', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(50, 'S0050', 'Infofix Computer', 'Daet, Camarines Norte', '', 0, 'N/A', 'Ederlyn D. San Jose', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(51, 'S0051', 'J & M General Merchandise', 'Gov. Panotes Avenue, Brgy. VIII, Daet, Camarines Norte', '', 0, 'cachoj1959@gmail.com', 'Jose O. Cacho', 'N/A', 'N/A', '0916-559-8893', '141-757-654-000', 1, '2020-08-26 03:58:02', 0),
(52, 'S0052', 'Jack Trading Inc.', 'Central Plaza Complex, Lag-on, Daet, Camarines Norte', '', 0, 'N/A', 'Ramil V. Abante', 'N/A', 'N/A', 'N/A', '004-180-231-000', 1, '2020-08-26 03:58:02', 0),
(53, 'S0053', 'Jeah Pauline Advertising', 'Nabua, Camarines Sur', '', 0, '472-5178', 'Jeah Pauline Jane', 'N/A', 'jpadvertising16@gmail.com', '0939-340-5113', '433-270-496-000', 1, '2020-08-26 03:58:02', 0),
(54, 'S0054', 'JM Shop', 'Veronica St., Brgy. I, Vinzons, Camarines Norte', '', 0, 'N/A', 'Joanna Maries C. Iglesia', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(55, 'S0055', 'Joycom Internet Cafe', 'Gache Bldg. F. Pimentel Avenue, Daet, Camarines Norte', '', 0, 'ledasid-25@yahoo.com', 'Dizabel M. Zara', 'N/A', '(054)605-0155', '0918-964-9070', '271-981-559-000', 1, '2020-08-26 03:58:02', 0),
(56, 'S0056', 'JYL Auto Supply & General Merchandise', 'Vinzons Avenue, Camarines Norte', '', 0, 'N/A', 'Maila D. Ngo', 'N/A', 'N/A', '0920-961-8203', '153-598-618-000', 1, '2020-08-26 03:58:02', 0),
(57, 'S0057', 'Kagayunan Beauty Parlor', 'P-3, Brgy. IV, Mantagbac, Daet, Camarines Norte', '', 0, 'tolentinogilbert@yahoo.com', 'Gilbert S. Tolentino', 'N/A', 'N/A', '0907-095-3549', '900-651-603-000', 1, '2020-08-26 03:58:02', 0),
(58, 'S0058', 'KV Construction & Supply', 'San Vicente Road, Lag-on, Daet, Camarines Norte', '', 0, 'N/A', 'Efren L. Villamonte', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(59, 'S0059', 'La Consumidores Corporation', 'J. Lukban Street, Daet, Camarines Norte', '', 0, 'N/A', 'Noel T. Gago', 'N/A', 'N/A', 'N/A', '007-530-466-003', 1, '2020-08-26 03:58:02', 0),
(60, 'S0060', 'Labo Progressive Multi-Purpose Cooperative', 'Malasugui, Labo, Camarines Norte', '', 0, 'N/A', 'Ramil Q. Villaflores', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(61, 'S0061', 'Leecare Distributions', 'Blk. 1 Lot 3, La Plaza Subd., Bonot, Legazpi City', '', 0, 'N/A', 'Rachel M. Malto', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(62, 'S0062', 'Libertad Consumers Corporation', 'Ziga Avenue, Tabaco City, Albay', '', 0, 'N/A', 'Mabel V. Agravante', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(63, 'S0063', 'LM Auto Supply and General Merchandise', 'Vinzons Ave., Brgy. V, Daet, Camarines Norte', '', 0, 'N/A', 'Levy A. Ngo', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(64, 'S0064', 'Lopez Marketing', 'F. Pimentel Ave., Daet, Camarines Norte', '', 0, 'danlopservicecenter@gmail.com', 'Lolita O. Gapoy', 'N/A', '(054)721-1638', 'N/A', '174-106-314', 1, '2020-08-26 03:58:02', 0),
(65, 'S0065', 'Lunachem Trading', '1732 G. Tuazon St., Brgy. 423, Sampaloc, NCR, Manila, First District', '', 0, 'N/A', 'Noemilyn A. Reginaldo', 'N/A', 'N/A', 'N/A', '200-827-919-000', 1, '2020-08-26 03:58:02', 0),
(66, 'S0066', 'Mars Laboratories Instrument Center', 'Unit 610 Prestige Tower F. Ortigas Jr. Road, Ortigas, Pasig', '', 0, 'gsd.marslaboratory@yahoo.com', 'Brenda Rioja', 'N/A', '613-8799', 'N/A', '115-735-805-000', 1, '2020-08-26 03:58:02', 0),
(67, 'S0067', 'Maryed Musicsports Zone', 'Emily Arcade, San Francisco, Naga City', '', 0, 'maryedmusicsportszone@gmail.com', 'Edgar P. Esplana', 'N/A', '881-3056', '0921-292-6688', '901-792-996-000', 1, '2020-08-26 03:58:02', 0),
(68, 'S0068', 'Methrophysika Inc.', 'Unit 2C Macrima Bldg No. 1666 Escuela St. cor EDSA Guadalupe Nuevo, Makati City, Metro Manila', '', 0, 'methrophysika@gmail.com', 'Joanna Marie T. Gaddi', 'N/A', 'N/A', '0935-766-6484', '009-211-623-000', 1, '2020-08-26 03:58:02', 0),
(69, 'S0069', 'MJAS Zenith Trading', 'Rm. 402 4th Floor Elysium Bldg. 168 D. Tuazon St., Brgy. Maharlika, Quezon City', '', 0, 'mjas_zenith@yahoo.com', 'Samson A. Lato', 'N/A', '(02)241-5397 / 711-0369', '0917-796-4052', '240-913-419-000', 1, '2020-08-26 03:58:02', 0),
(70, 'S0070', 'MMJ Trading System', 'Lag-on, Daet, Camarines Norte', '', 0, 'N/A', 'Rose Ann Hernandez', 'N/A', 'N/A', '0909-757-5625', 'N/A', 1, '2020-08-26 03:58:02', 0),
(71, 'S0071', 'My Print Center and General Merchandise', 'Vinzons Avenue, Daet, Camarines Norte', '', 0, 'daetmyprintcenter@gmail.com', 'Maila De Luna Ngo', 'N/A', 'N/A', '0908-888-2178', 'N/A', 1, '2020-08-26 03:58:02', 0),
(72, 'S0072', 'Narzi T-Shirt Printing Services', 'Francisco Tagaytay City, Cavite', '', 0, 'N/A', 'Edwin Narzabal', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(73, 'S0073', 'Nathaniel Hotel', 'Maharlika Highway, Brgy. Pamorangon, Daet, Camarines Norte', '', 0, 'N/A', 'Abegail P. Panong', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(74, 'S0074', 'Nfez, Inc.', 'Vinzons Ave. Brgy 5, Daet, Camarines Norte', '', 0, 'nfezone@gmail.com', 'Maidy Cabezudo', 'N/A', 'N/A', '0917-544-1688', '459-207-288-002', 1, '2020-08-26 03:58:02', 0),
(75, 'S0075', 'Jannah\'s Pasalubong', 'Vinzons Avenue, Daet, Camarines Norte', '', 0, 'N/A', 'Teresa E. Buenavista', 'N/A', 'N/A', '(054)875-5665', '931-117-833-001', 1, '2020-08-26 03:58:02', 0),
(76, 'S0076', 'Nicole\'s Marketing and Car Care Center', 'F. Pimentel Avenue, Magang, Daet, Camarines Norte', '', 0, 'nicolesmktgccc@gmail.com', 'Arnel D. Cu', 'N/A', 'N/A', '0932-245-3689', '115-104-634', 1, '2020-08-26 03:58:02', 0),
(77, 'S0077', 'NMR - San Miguel Bottlers Distributor', 'P-6, Lag-on, Daet, Camarines Norte', '', 0, 'N/A', 'Jeffrey Factor', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(78, 'S0078', 'Northlink Events and Travel Services', 'Metropark Village, Daet, Camarines Norte', '', 0, 'dariusnorthlink@gmail.com', 'Darius E. Mirasol', 'N/A', 'N/A', '0906-356-7077', '920-901-473-000', 1, '2020-08-26 03:58:02', 0),
(79, 'S0079', 'Pacifica Agrivet Supplies Inc.', 'J. Pimentel, Daet, Camarines Norte', '', 0, 'N/A', 'Irene Grageda', 'N/A', 'N/A', 'N/A', '000-258-476-226', 1, '2020-08-26 03:58:02', 0),
(80, 'S0080', 'Padres Food House', 'Pamplona, Camarines Sur', '', 0, 'N/A', 'Kris Gerald A. Martinez', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(81, 'S0081', 'Pansol Catering Restaurant', 'Sto. Intiero St., Vinzons, Camarines Norte', '', 0, 'kennethmaligatcoh@gmail.com', 'Kenneth Maligat', 'N/A', 'N/A', '0920-259-4204 / 0966', '284-548-112-000', 1, '2020-08-26 03:58:02', 0),
(82, 'S0082', 'PC Micron Enterprises', 'Alegre Bldg. J. Lukban St., Daet, Camarines Norte', '', 0, 'pcmicronenterprises.ph@gmail.com', 'Eric V. Rubio', 'N/A', 'N/A', '0919-914-7263', '155-498-142-002', 1, '2020-08-26 03:58:02', 0),
(83, 'S0083', 'Philcopy Corporation', 'Unit 102 Abonal Soria Bldg., Mayflower St., Concepcion Pequeña, Naga City', '', 0, 'info@philcopy.net', 'Marilyn Celestial', 'N/A', '473-7273', '0918-665-9378', 'N/A', 1, '2020-08-26 03:58:02', 0),
(84, 'S0084', 'Philians Engineering and Construction Supply', 'Matnog, Basud, Camarines Norte', '', 0, 'agnagera@yahoo.com', 'Armin Jesus Nagera', 'N/A', 'N/A', 'N/A', '134-850-695-000', 1, '2020-08-26 03:58:02', 0),
(85, 'S0085', 'Philinstruments Corporation', 'Unit 504 EU State Tower No.30 Quezon Ave., Brgy. Doña Josefa, Quezon City', '', 0, 'N/A', 'Jayralyn H. Villareal', 'N/A', 'N/A', 'N/A', '495-981-022-000', 1, '2020-08-26 03:58:02', 0),
(86, 'S0086', 'Philippine Psychological Corporation', 'Unit 905, Prestige Tower, F. Ortigas Jr. Road, Ortigas Center, Pasig City', '', 0, 'philpsycor@gmail.com', 'Ruby A. Benitez', 'N/A', 'N/A', '0927-562-2082', '008-284-590-000', 1, '2020-08-26 03:58:02', 0),
(87, 'S0087', 'Pratesi Cafe', 'Taft Ilaod, Daet, Camarines Norte', '', 0, 'bicoflores@yahoo.com.ph', 'Sally C. Flores', 'N/A', 'N/A', '0998-558-2265', '168-203-563-000', 1, '2020-08-26 03:58:02', 0),
(88, 'S0088', 'R Safety Builders and General Merchandise', 'Brgy. Mancruz, Daet, Camarines Norte', '', 0, 'N/A', 'Richard D. Saman', 'N/A', 'N/A', 'N/A', '290-410-459-000', 1, '2020-08-26 03:58:02', 0),
(89, 'S0089', 'Ranelex Enterprises', 'P-5, Peñafrancia, Daraga, Albay', '', 0, 'N/A', 'Nelson Maulo', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(90, 'S0090', 'Red Leaf Kitchenette', 'J. Lukban St., Brgy. 3, Daet, Camarines Norte', '', 0, 'lief112004@yahoo.com', 'Lief Roger Tolentino', 'N/A', 'N/A', '0908-615-8845', '294-469-495-000', 1, '2020-08-26 03:58:02', 0),
(91, 'S0091', 'Roan Agrivet Supply', 'Bautista St., Labo, Camarines Norte', '', 0, 'N/A', 'Anabelle Ocol', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(92, 'S0092', 'Rueby Phoenix Builder', 'Concepcion Grande, Naga City', '', 0, 'N/A', 'Christopher A. Ilo', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(93, 'S0093', 'Saman Wood Works', 'P-1, Mancruz, Daet, Camarines Norte', '', 0, 'N/A', 'Richard D. Saman', 'N/A', 'N/A', '0949-447-4737 / 0998', '290-410-459-000', 1, '2020-08-26 03:58:02', 0),
(94, 'S0094', 'Sampaguita Dept. Store & Conv. Store', 'Vinzons Ave., Daet, Camarines Norte', '', 0, 'mharjo_rence@yahoo.com', 'Jose G. Dacudao IV', 'N/A', '211-0017', 'N/A', '124-198-772-000', 1, '2020-08-26 03:58:02', 0),
(95, 'S0095', 'Savannahs Flowershop', 'Moreno St., Karilagan Bldg., Daet, Camarines Norte', '', 0, 'N/A', 'Jenalyn A. Baylon', 'N/A', 'N/A', '0908-652-0104', '227-733-000-000', 1, '2020-08-26 03:58:02', 0),
(96, 'S0096', 'SBR Native Products', 'Brgy. 6, Felipe II St., Daet, Camarines Norte', '', 0, 'N/A', 'Gemma Regalado', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(97, 'S0097', 'SJ Computer', 'Daet, Camarines Norte', '', 0, 'sjcomputer2018@gmail.com', 'Vernie O. San Jose', 'N/A', 'N/A', '0918-315-6722', '167-553-026-000', 1, '2020-08-26 03:58:02', 0),
(98, 'S0098', 'SJF General Merchandise', 'F. Pimentel Ave., Daet, Camarines Norte', '', 0, 'N/A', 'Wilfredo N. Dayaon', 'N/A', '721-2363 / 721-2393', 'N/A', '183-736-048-000', 1, '2020-08-26 03:58:02', 0),
(99, 'S0099', 'Solid Business Machines Center, Inc.', 'Suite 303, Singson Building, Plaza Moraga, Binondo, Manila', '', 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(100, 'S0100', 'Steven Trading and Auto Supply', NULL, '', 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '196-820-994-000', 1, '2020-08-26 03:58:02', 0),
(101, 'S0101', 'Synergized Macro Solutions, Inc.', 'Unit 306 Valencia Bldg. Vista de Lago Villas, J.P. Rizal St., Tuktukan, Taguig City', '', 0, 'N/A', 'Jan Venus F. Garcia', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(102, 'S0102', 'Thesson\'s Marketing', 'N/A', '', 0, 'N/A', 'N/A', 'N/A', '(02)473-2803', 'N/A', '192-868-465-000', 1, '2020-08-26 03:58:02', 0),
(103, 'S0103', 'The Carmen Hotel', 'Peñafrancia Avenue, Naga City', '', 0, 'N/A', 'Ashley D. Bañares', 'N/A', 'N/A', 'N/A', '000-182-324-001', 1, '2020-08-26 03:58:02', 0),
(104, 'S0104', 'Tinandayagan Falls & Resort', 'Palong, Libmanan, Camarines Sur', '', 0, 'N/A', 'Alex P. Brioso', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(105, 'S0105', 'Tropics Agro  Industries Inc.', '25 Panganiban St., Naga City, Camarines Sur', '', 0, 'N/A', 'N/A', 'N/A', '(054)473-8505', 'N/A', '000-269-468-000', 1, '2020-08-26 03:58:02', 0),
(106, 'S0106', 'Vedula Enterprises Inc.', '109 Manga St., Brgy. 179, Zone 16, Amparo Subd., Caloocan City', '', 0, 'N/A', 'Narciso S. Dula', 'N/A', 'N/A', 'N/A', '000-292-196-000', 1, '2020-08-26 03:58:02', 0),
(107, 'S0107', 'Villa Mila Resort', 'Vinzons Ave. Daet, Camarines Norte', '', 0, 'N/A', 'Medardo V. Torres', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(108, 'S0108', 'Villafuerte Eng\'g & Surveying Office', 'P-1, Brgy. Binanuaan, Talisay, Camarines Norte', '', 0, 'N/A', 'Adelfo Z. Villafuerte', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(109, 'S0109', 'Villon Canteen', 'P-1, Brgy. San Antonio, Mercedes, Camarines Norte', '', 0, 'N/A', 'Nelly V. Villon', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(110, 'S0110', 'Wide Wide World Express Corporation', 'F. Pimentel Avenue, Daet, Camarines Norte', '', 0, 'N/A', 'Anton S. David', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(111, 'S0111', 'Zane Hotel', 'P-Ubas, Brgy. Gubat, Daet, Camarines Norte', '', 0, 'N/A', 'Daisy Teope', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(112, 'S0112', 'Aspen Multi-System Corp.', '191 Averilla Street San Juan, Metro Manila', '', 0, 'aspenmultisystem@gmail.com', 'Rhodora Pagilagan', 'BID Coordinator', '(632) 724-9737 / 726-5324 / 72', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(113, 'S0113', '3C Hardware and General Merchandise', 'Brgy. Fundado, Labo, Camarines Norte', '', 0, 'N/A', 'Dante D. Estacion', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(114, 'S0114', '3GX Computer and I.T. Solutions Technoshop', 'Elias Angeles Street, Naga City\r\nPimentel Avenue, Brgy. II, Daet, Camarines Norte', '', 0, 'xdaet-admin@3gxsolutions.com', 'Maria Ester Malate', 'N/A', 'N/A', '0998-272-76677', '196-648-486-000', 1, '2020-08-26 03:58:02', 0),
(115, 'S0115', '4S & E Enterprises', 'Legazpi City', '', 0, 'salvadoramba@yahoo.com', 'Salvador S. Amba', 'N/A', 'N/A', 'N/A', '400-917-429-000', 1, '2020-08-26 03:58:02', 0),
(116, 'S0116', 'A.M. Sison Press Inc.', 'Peñafrancia Avenue, Naga City', '', 0, 'amspress-naga@yahoo.com.ph', 'Gerante B. Flor', 'N/A', '(054)473-9213', '0999-354-1579', '269-823-000', 1, '2020-08-26 03:58:02', 0),
(117, 'S0117', 'Act Care Pharmacy', 'Moreno Street, Daet, Camarines Norte', '', 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(118, 'S0118', 'Adraw Graphics Studio', 'Gov. Panotes Avenue, Daet, Camarines Norte', '', 0, 'N/A', 'Vanessa Naranjo', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(119, 'S0119', 'AJ Auto Aircon Shop', 'Diversion Road, Camambugan, Daet, Camarines Norte', '', 0, 'N/A', 'George Aquino', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(120, 'S0120', 'Al-Electro Aircon Services', 'Pasig, Brgy. II, Daet, Camarines Norte', '', 0, 'N/A', 'Carlos F. Rile', 'N/A', '(054)440-1383', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(121, 'S0121', 'Alsons Trading', 'J. Lukban Street, Daet, Camarines Norte', '', 0, 'N/A', 'Gene Paul Ledesma', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(122, 'S0122', 'AMT Catering', '621 E. Ferrer Street, Daet, Camarines Norte', '', 0, 'N/A', 'Michelena P. Teves', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(123, 'S0123', 'Aquamundo Sports Inc.', 'Vernida Bldg., 120 Amorsolo St., Daet, Camarines Norte', '', 0, 'N/A', 'Adelaide Espino', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(124, 'S0124', 'Ardens Collections by Arlane', 'Talobatib, Labo, Camarines Norte', '', 0, 'loarden@yahoo.com', 'Arlane Lo', 'N/A', 'N/A', '0999-995-1998', '142-502-127-000', 1, '2020-08-26 03:58:02', 0),
(125, 'S0125', 'Arik Merchandising', 'Honesto DJ Bldg., F. Pimentel Avenue, Daet, Camarines Norte', '', 0, 'Arikgeneralmerchandising@gmail.com', 'Arvin Arik B. Carranceja', 'N/A', 'N/A', '0908-889-0357', '271-256-937-000', 1, '2020-08-26 03:58:02', 0),
(126, 'S0126', 'Arsens Farmville Resort', 'Laniton, Basud, Camarines Norte', '', 0, 'N/A', 'George Andrew T. Bertillo', 'N/A', 'N/A', 'N/A', 'N/A', 1, '2020-08-26 03:58:02', 0),
(127, 'S0127', 'A.S.H. Enterprises', 'Bagasbas Road, Daet, Camarines Norte', '', 0, 'ashenterprisesdaet@gmail.com', 'Emily Augusto Herico', 'N/A', '(052)481-7528', '0939-916-2889', '110-442-446-002', 1, '2020-08-26 03:58:02', 0),
(128, 'S0128', 'Nazakiah Trading', '777 San Benito Street, Goa, Camarines Sur', '', 0, 'jeremiahzz.jem@yahoo.com', 'Jeremy N. Pinto', 'N/A', 'N/A', '0930-501-0864', '206-509-319-000', 1, '2020-08-26 03:58:02', 0),
(129, 'S0129', 'Prime Digital Print Center', 'Panganiban Drive, Tinago, Naga City', '', 0, 'primeprintingpress.naga@gmail.com', 'Deoemel E. Francia', 'N/A', '(054)205-8931', '0933-527-1222', '192-763-918-005', 1, '2020-08-26 03:58:02', 0),
(130, 'S0130', 'RTC Laboratory Services and Supply House', 'No. 11 Rimas Street, Project 2, Quezon City', '', 0, 'N/A', 'Roberto T. Casauay', 'N/A', '(02)281-1092', 'N/A', '110-437-665-000', 1, '2020-08-26 03:58:02', 0),
(131, 'S0131', 'Shercon Resort and Ecology Park', 'San Sebastian, Mataas na kahoy, Batangas City', '', 0, 'ecologyparksherconresort@gmail.com', 'Jellen C. Amata', 'N/A', '(022)838-5293', 'N/A', '938-457-303-000', 1, '2020-08-26 03:58:02', 0),
(132, 'S0132', 'BODEGA GLASSWARE', '#75 Prieto and Abella Sts., Naga City', '', 0, 'bodega_glassware@yahoo.com', 'Joseph D. Cabral', 'Owner/Propreitor', '09104270971', '09104270971', '102708057000', 1, '2020-08-26 03:58:02', 0),
(133, 'S0133', 'RNM AGRO/INDUSTRIAL SUPPLY AND GENERAL MERCHANDISE', 'Zabala Street, Barangay V, Daet, Camarines Norte', '', 0, 'N/A', 'Rafel Moraleda', 'Sole Proprietor', '09175502290', '09175502290', '136-922-755-001', 1, '2020-08-26 03:58:02', 0),
(134, 'S0134', 'AT HOME FURNITURE CENTER', 'Daet, Camarines Norte', '', 0, 'Athomefurniturecenter@gmil.com', 'Tersslove Angoluan', 'Owner', '0998727995', '0998727995', 'n/a', 1, '2020-08-26 03:58:02', 0),
(135, 'S0135', 'ABA GRASSCUTTER SHOP', 'F. PIMEMTEL AVENUE, MAGANG, DAET, CAMARINES NORTE', '', 0, 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '948-593-784-000', 1, '2020-08-26 03:58:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupply`
--

CREATE TABLE `tblsupply` (
  `supplyID` int(11) NOT NULL,
  `supplyCode` varchar(50) DEFAULT NULL,
  `supplyName` varchar(150) DEFAULT NULL,
  `supplyProperty` varchar(50) DEFAULT NULL,
  `supTypeID` int(11) NOT NULL DEFAULT 0,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupply`
--

INSERT INTO `tblsupply` (`supplyID`, `supplyCode`, `supplyName`, `supplyProperty`, `supTypeID`, `DateCreated`, `no`) VALUES
(186, NULL, 'Accession book (long)', '155-001-0001-0001', 0, '2020-11-23 05:32:31', 0),
(187, '', 'Arch file (A4)', NULL, 5, '2020-11-23 05:32:31', 0),
(188, NULL, 'Arch file (Long)', '', 0, '2020-11-23 05:32:31', 0),
(189, NULL, 'Ballpen', '155-001-0007-0001', 0, '2020-11-23 05:32:31', 0),
(190, NULL, 'Battery (AA)', '155-001-0008-0001', 0, '2020-11-23 05:32:32', 0),
(191, NULL, 'Battery (AAA)', '155-001-0008-0002', 0, '2020-11-23 05:32:32', 0),
(192, NULL, 'Battery (Wireless micro.)', '155-001-0008-0003', 0, '2020-11-23 05:32:32', 0),
(193, NULL, 'Binder clip (1 5/8”)', '', 0, '2020-11-23 05:32:32', 0),
(194, NULL, 'Binder clip (3/4\")', NULL, 0, '2020-11-23 05:32:32', 0),
(195, NULL, 'Binder clip (1 1/4\")', NULL, 0, '2020-11-23 05:32:32', 0),
(196, NULL, 'Binder clip (1”)', NULL, 0, '2020-11-23 05:32:32', 0),
(197, NULL, 'Binder clip (2”)', NULL, 0, '2020-11-23 05:32:32', 0),
(198, NULL, 'Binding machine (heavy duty)', NULL, 0, '2020-11-23 05:32:32', 0),
(199, NULL, 'Bond paper (A4)', '155-001-0041-0005', 0, '2020-11-23 05:32:32', 0),
(200, NULL, 'Bond paper (long)', '155-001-0041-0001', 0, '2020-11-23 05:32:32', 0),
(201, NULL, 'Bond paper (short)', '155-001-0041-0002', 0, '2020-11-23 05:32:32', 0),
(202, NULL, 'Bond paper (long S-16)', '155-001-0041-0003', 0, '2020-11-23 05:32:32', 0),
(203, NULL, 'Calculator (12, digits-ARITE)', NULL, 0, '2020-11-23 05:32:32', 0),
(204, NULL, 'Calculator (12, digits-CANON)', NULL, 0, '2020-11-23 05:32:32', 0),
(205, NULL, 'Calculator (12, digits-CASIO)', NULL, 0, '2020-11-23 05:32:32', 0),
(206, NULL, 'Carbon paper (long)', '155-001-0011-0002', 0, '2020-11-23 05:32:32', 0),
(207, NULL, 'Cartolina (asstd color)', '155-001-0012-0001', 0, '2020-11-23 05:32:32', 0),
(208, NULL, 'Certificate Holder (cardboard)', '', 0, '2020-11-23 05:32:32', 0),
(209, NULL, 'Chalk (dustless)', '155-001-0013-0002', 0, '2020-11-23 05:32:32', 0),
(210, NULL, 'Clearbook (A4)', '155-001-0015-0003', 0, '2020-11-23 05:32:32', 0),
(211, NULL, 'Clearbook (long)', '155-001-0015-0001', 0, '2020-11-23 05:32:32', 0),
(212, NULL, 'Clearbook refillable (long)', '155-001-0015-0002', 0, '2020-11-23 05:32:32', 0),
(213, NULL, 'Colored paper (A4)', '155-001-0041-0009', 0, '2020-11-23 05:32:32', 0),
(214, NULL, 'Colored paper (long)', '155-001-0041-0009', 0, '2020-11-23 05:32:33', 0),
(215, NULL, 'Colored paper (asstd color, long)', '155-001-0041-0009', 0, '2020-11-23 05:32:33', 0),
(216, NULL, 'Computer chair', '', 0, '2020-11-23 05:32:33', 0),
(217, NULL, 'Computer table', '', 0, '2020-11-23 05:32:33', 0),
(218, NULL, 'Correction tape', '', 0, '2020-11-23 05:32:33', 0),
(219, NULL, 'Cutter (big size)', '155-001-0020-0002', 0, '2020-11-23 05:32:33', 0),
(220, NULL, 'Cutter (small size)', '155-001-0020-0001', 0, '2020-11-23 05:32:33', 0),
(221, NULL, 'Cutter blade (big size, tube)', '155-001-0009-0001', 0, '2020-11-23 05:32:33', 0),
(222, NULL, 'Cutter blade (small size, tube)', '155-001-0009-0002', 0, '2020-11-23 05:32:33', 0),
(223, NULL, 'Dater', '155-001-0021-0001', 0, '2020-11-23 05:32:33', 0),
(224, NULL, 'Desk organizer (Metal-2 layers)', '155-001-0022-0004', 0, '2020-11-23 05:32:33', 0),
(225, NULL, 'Desk organizer (Metal-3 layers)', '155-001-0022-0005', 0, '2020-11-23 05:32:33', 0),
(226, NULL, 'Document file (paper made)', '155-001-0022-0003', 0, '2020-11-23 05:32:33', 0),
(227, NULL, 'Document file (plastic)', '155-001-0022-0002', 0, '2020-11-23 05:32:33', 0),
(228, NULL, 'Double sided tape (1/2\")', '155-001-0064-0006', 0, '2020-11-23 05:32:33', 0),
(229, NULL, 'Double sided tape (1”)', '155-001-0064-0007', 0, '2020-11-23 05:32:33', 0),
(230, NULL, 'Envelope (brown, long)', '155-001-0023-0001', 0, '2020-11-23 05:32:33', 0),
(231, NULL, 'Envelope (brown, short)', '155-001-0023-0002', 0, '2020-11-23 05:32:33', 0),
(232, NULL, 'Envelope (plastic, long)', '155-001-0023-0003', 0, '2020-11-23 05:32:33', 0),
(233, NULL, 'Eraser (for blackboard)', '155-001-0024-0001', 0, '2020-11-23 05:32:33', 0),
(234, NULL, 'Eraser (staedtler)', '155-001-0024-0002', 0, '2020-11-23 05:32:33', 0),
(235, NULL, 'Expanded envelope (long)', '155-001-0029-0006', 0, '2020-11-23 05:32:33', 0),
(236, NULL, 'Expanded envelope (short)', '155-001-0029-0007', 0, '2020-11-23 05:32:33', 0),
(237, NULL, 'Expanded envelope (Kraft, Long)', '155-001-0029-0010', 0, '2020-11-23 05:32:33', 0),
(238, NULL, 'Expanded envelope (short)', '155-001-0029-0011', 0, '2020-11-23 05:32:33', 0),
(239, NULL, 'Expanded folder (long w/ string)', '155-001-0023-0004', 0, '2020-11-23 05:32:33', 0),
(240, NULL, 'Expanded folder (short w/ string)', '155-001-0023-0005', 0, '2020-11-23 05:32:33', 0),
(241, NULL, 'Fan - exhaust (Dura Star brand)', '', 0, '2020-11-23 05:32:33', 0),
(242, NULL, 'Fan - industrial (Union brand)', '', 0, '2020-11-23 05:32:33', 0),
(243, NULL, 'Fan - orbit (KDK brand)', '', 0, '2020-11-23 05:32:33', 0),
(244, NULL, 'Fan - orbit (Union brand)', '', 0, '2020-11-23 05:32:34', 0),
(245, NULL, 'Fan - stand (Union brand)', '', 0, '2020-11-23 05:32:34', 0),
(246, NULL, 'Fan - wall (Union brand)', '', 0, '2020-11-23 05:32:34', 0),
(247, NULL, 'Fastener (metal)', '155-001-0025-0003', 0, '2020-11-23 05:32:34', 0),
(248, NULL, 'Fastener (plastic)', '155-001-0025-0002', 0, '2020-11-23 05:32:34', 0),
(249, NULL, 'Fax paper (roll)', '155-001-0026-0002', 0, '2020-11-23 05:32:34', 0),
(250, NULL, 'File tab divider (A4 set)', '155-001-0029-0016', 0, '2020-11-23 05:32:34', 0),
(251, NULL, 'File tab divider (long, set)', '155-001-0029-0017', 0, '2020-11-23 05:32:34', 0),
(252, NULL, 'Folder (white, long)', '155-001-0029-0001', 0, '2020-11-23 05:32:34', 0),
(253, NULL, 'Folder (white, short)', '155-001-0029-0002', 0, '2020-11-23 05:32:34', 0),
(254, NULL, 'Folder with tab (A4)', '155-001-0029-0015', 0, '2020-11-23 05:32:34', 0),
(255, NULL, 'Folder, fancy (A4)', '155-001-0029-0009', 0, '2020-11-23 05:32:34', 0),
(256, NULL, 'Folder, fancy (long size)', '155-0010029-0008', 0, '2020-11-23 05:32:34', 0),
(257, NULL, 'Folder, pressboard (A4)', '155-001-0029-0012', 0, '2020-11-23 05:32:34', 0),
(258, NULL, 'Folder, pressboard (long size)', '155-001-0029-0013', 0, '2020-11-23 05:32:34', 0),
(259, NULL, 'Folder, L-type (Iong size)', '155-001-0029-0014', 0, '2020-11-23 05:32:34', 0),
(260, NULL, 'Folder, L-type (A4)', '', 0, '2020-11-23 05:32:34', 0),
(261, NULL, 'Glue (Elmer’s, bot)', '155-001-0030-0002', 0, '2020-11-23 05:32:34', 0),
(262, NULL, 'Glue (jar)', '155-001-0030-0001', 0, '2020-11-23 05:32:34', 0),
(263, NULL, 'Glue gun (big)', '155-001-0030-0003', 0, '2020-11-23 05:32:34', 0),
(264, NULL, 'Glue gun (big)', '155-001-0030-0004', 0, '2020-11-23 05:32:34', 0),
(265, NULL, 'Glue stick (big)', '155-001-0030-0005', 0, '2020-11-23 05:32:34', 0),
(266, NULL, 'Gun Tucker staple wire (box)', '155-001-0030-0006', 0, '2020-11-23 05:32:34', 0),
(267, NULL, 'Highlighter (asstd color)', '155-001-0031-0001', 0, '2020-11-23 05:32:34', 0),
(268, NULL, 'ID holder (asstd color)', '', 0, '2020-11-23 05:32:34', 0),
(269, NULL, 'ID permanent marker', '', 0, '2020-11-23 05:32:34', 0),
(270, NULL, 'Index tab (box)', '155-001-0033-0001', 0, '2020-11-23 05:32:34', 0),
(271, NULL, 'Ink for stamp pad (bot)', '155-001-0035-0001', 0, '2020-11-23 05:32:34', 0),
(272, NULL, 'Ink for permanent marker (bot)', '155-001-0035-0002', 0, '2020-11-23 05:32:34', 0),
(273, NULL, 'Ink for whiteboard marker (bot)', '155-001-0035-0003', 0, '2020-11-23 05:32:34', 0),
(274, NULL, 'Intermediate paper (pad)', '', 0, '2020-11-23 05:32:34', 0),
(275, NULL, 'Laser pointer', '', 0, '2020-11-23 05:32:34', 0),
(276, NULL, 'Mailing envelope (ordinary long)', '155-001-0023-0007', 0, '2020-11-23 05:32:34', 0),
(277, NULL, 'Mailing envelope (window, long)', '155-001-0023-0009', 0, '2020-11-23 05:32:34', 0),
(278, NULL, 'Magic tape (roll)', '155-001-0064-0006', 0, '2020-11-23 05:32:35', 0),
(279, NULL, 'Marking pen, permanent (pc)', '155-001-0039-0001', 0, '2020-11-23 05:32:35', 0),
(280, NULL, 'Marking pen, whiteboard (pc)', '155-001-0039-0002', 0, '2020-11-23 05:32:35', 0),
(281, NULL, 'Masking tape (1”)', '155-001-0064-0002', 0, '2020-11-23 05:32:35', 0),
(282, NULL, 'Masking tape (2”)', '155-001-0064-0003', 0, '2020-11-23 05:32:35', 0),
(283, NULL, 'Metallic paper (asstd color)', '155-001-0041-0016', 0, '2020-11-23 05:32:35', 0),
(284, NULL, 'Morocco folder (long size)', '155-001-0039-0003', 0, '2020-11-23 05:32:35', 0),
(285, NULL, 'Morocco folder (short size)', '155-001-0039-0004', 0, '2020-11-23 05:32:35', 0),
(286, NULL, 'Notebook (stenographer)', '', 0, '2020-11-23 05:32:35', 0),
(287, NULL, 'Packing tape (2”)', '155-001-0064-0006', 0, '2020-11-23 05:32:35', 0),
(288, NULL, 'Paper clip (big)', '155-001-0016-0002', 0, '2020-11-23 05:32:35', 0),
(289, NULL, 'Paper clip (small)', '155-001-0016-0001', 0, '2020-11-23 05:32:35', 0),
(290, NULL, 'Paper cutter, HD (12” x 18”)', '155-001-0016-0003', 0, '2020-11-23 05:32:35', 0),
(291, NULL, 'Paper trimmer (15” x 18”)', '', 0, '2020-11-23 05:32:35', 0),
(292, NULL, 'Parchment paper', '155-001-0016-0004', 0, '2020-11-23 05:32:35', 0),
(293, NULL, 'Pencil (#2)', '155-001-0043-0001', 0, '2020-11-23 05:32:35', 0),
(294, NULL, 'Photopaper (pack/long)', '155-001-0041-0012', 0, '2020-11-23 05:32:35', 0),
(295, NULL, 'Photopaper (glass, short  11 x 14)', '155-001-0041-0013', 0, '2020-11-23 05:32:35', 0),
(296, NULL, 'Picture frame (roll)', '155-001-0044-0001', 0, '2020-11-23 05:32:35', 0),
(297, NULL, 'Plastic cover (big)', '155-001-0045-0001', 0, '2020-11-23 05:32:35', 0),
(298, NULL, 'Post it/sticky note (small)', '', 0, '2020-11-23 05:32:35', 0),
(299, NULL, 'Post it/sticky note (HD)', '', 0, '2020-11-23 05:32:35', 0),
(300, NULL, 'Puncher (box)', '155-001-0046-0001', 0, '2020-11-23 05:32:35', 0),
(301, NULL, 'Push pin (ream)', '155-001-0047-0001', 0, '2020-11-23 05:32:35', 0),
(302, NULL, 'PVC cover (150 pages)', '', 0, '2020-11-23 05:32:35', 0),
(303, NULL, 'Record book (200 pages)', '155-001-0048-0001', 0, '2020-11-23 05:32:35', 0),
(304, NULL, 'Record book (300 pages)', '155-001-0048-0002', 0, '2020-11-23 05:32:35', 0),
(305, NULL, 'Record book (500 pages)', '155-001-0048-0003', 0, '2020-11-23 05:32:35', 0),
(306, NULL, 'Record book (long size)', '155-001-0048-0004', 0, '2020-11-23 05:32:35', 0),
(307, NULL, 'Report cover folder (short size)', '', 0, '2020-11-23 05:32:35', 0),
(308, NULL, 'Report cover folder (for typewriter)', '', 0, '2020-11-23 05:32:35', 0),
(309, NULL, 'Ribbon (big)', '155-001-0049-0001', 0, '2020-11-23 05:32:35', 0),
(310, NULL, 'Ring binder (medium)', '155-001-0050-0001', 0, '2020-11-23 05:32:35', 0),
(311, NULL, 'Ring binder (small)', '155-001-0050-0002', 0, '2020-11-23 05:32:35', 0),
(312, NULL, 'Ring binder (big)', '155-001-0050-0003', 0, '2020-11-23 05:32:35', 0),
(313, NULL, 'Rubber band (small)', '155-001-0051-0002', 0, '2020-11-23 05:32:35', 0),
(314, NULL, 'Rubber band (big)', '155-001-0051-0001', 0, '2020-11-23 05:32:35', 0),
(315, NULL, 'Ruler (12”)', '155-001-0053-0001', 0, '2020-11-23 05:32:35', 0),
(316, NULL, 'Ruler (18”)', '155-001-0053-0002', 0, '2020-11-23 05:32:35', 0),
(317, NULL, 'Scissors (Big)', '155-001-0054-0001', 0, '2020-11-23 05:32:35', 0),
(318, NULL, 'Scissors (small)', '155-001-0054-0002', 0, '2020-11-23 05:32:35', 0),
(319, NULL, 'Sharpener (for pencil)', '155-001-0043-0002', 0, '2020-11-23 05:32:36', 0),
(320, NULL, 'Sign pen (piece)', '155-001-0056-0001', 0, '2020-11-23 05:32:36', 0),
(321, NULL, 'Special paper (long size)', '155-001-0041-0015', 0, '2020-11-23 05:32:36', 0),
(322, NULL, 'Special paper (short size)', '155-001-0041-0014', 0, '2020-11-23 05:32:36', 0),
(323, NULL, 'Stamp pad (felt, big size)', '155-001-0057-0001', 0, '2020-11-23 05:32:36', 0),
(324, NULL, 'Stamp pad (felt, small)', '155-001-0057-0002', 0, '2020-11-23 05:32:36', 0),
(325, NULL, 'Staple wire (#35)', '155-001-0059-002', 0, '2020-11-23 05:32:36', 0),
(326, NULL, 'Staple wire (#0013, HD)', '155-001-0059-003', 0, '2020-11-23 05:32:36', 0),
(327, NULL, 'Stapler (ordinary)', '155-001-0058-0001', 0, '2020-11-23 05:32:36', 0),
(328, NULL, 'Stapler (long reach)', '155-001-0058-0002', 0, '2020-11-23 05:32:36', 0),
(329, NULL, 'Stapler (High volume stamping)', '155-001-0058-0003', 0, '2020-11-23 05:32:36', 0),
(330, NULL, 'Staple wire remover (piece)', '155-001-0058-0004', 0, '2020-11-23 05:32:36', 0),
(331, NULL, 'Sticker paper (A4 size)', '155-001-0041-0017', 0, '2020-11-23 05:32:36', 0),
(332, NULL, 'Styrofore (big size 1”)', '155-001-0063-0001', 0, '2020-11-23 05:32:36', 0),
(333, NULL, 'Styrofore (small size 1/2\")', '155-001-0063-0002', 0, '2020-11-23 05:32:36', 0),
(334, NULL, 'Table (Piece, Oval)', '', 0, '2020-11-23 05:32:36', 0),
(335, NULL, 'Tape dispenser (piece)', '155-001-0064-0007', 0, '2020-11-23 05:32:36', 0),
(336, NULL, 'Thumbtacks (box)', '155-001-0065-0001', 0, '2020-11-23 05:32:36', 0),
(337, NULL, 'Transparent tape (1\")', '155-001-0064-0004', 0, '2020-11-23 05:32:36', 0),
(338, NULL, 'Transparent tape (2”)', '155-001-0064-0005', 0, '2020-11-23 05:32:36', 0),
(339, NULL, 'Twine (roll, plastic)', '', 0, '2020-11-23 05:32:36', 0),
(340, NULL, 'Yellow paper (pad)', '155-001-0068-0001', 0, '2020-11-23 05:32:36', 0),
(341, NULL, 'AVR', '', 0, '2020-11-23 05:32:36', 0),
(342, NULL, 'CANON Ink (#810)', '', 0, '2020-11-23 05:32:36', 0),
(343, NULL, 'CANON Ink (#811)', '', 0, '2020-11-23 05:32:36', 0),
(344, NULL, 'CD-R (pc)', '155-004-0004-0001', 0, '2020-11-23 05:32:36', 0),
(345, NULL, 'CD-RW (pc)', '155-004-0004-0002', 0, '2020-11-23 05:32:36', 0),
(346, NULL, 'Computer form (continous)', '155-004-0001-0002', 0, '2020-11-23 05:32:36', 0),
(347, NULL, 'Computer ribbon (LX-300)', '155-004-0012-0017', 0, '2020-11-23 05:32:36', 0),
(348, NULL, 'DVD-R (pc)', '155-004-0004-0003', 0, '2020-11-23 05:32:36', 0),
(349, NULL, 'DVD-RW (pc)', '155-004-0004-0004', 0, '2020-11-23 05:32:36', 0),
(350, NULL, 'EPSON Ink (black)', '', 0, '2020-11-23 05:32:36', 0),
(351, NULL, 'EPSON Ink (cyan)', '', 0, '2020-11-23 05:32:36', 0),
(352, NULL, 'EPSON Ink (magenta)', '', 0, '2020-11-23 05:32:37', 0),
(353, NULL, 'EPSON Ink (yellow)', '', 0, '2020-11-23 05:32:37', 0),
(354, NULL, 'External drive (1TB)', '', 0, '2020-11-23 05:32:37', 0),
(355, NULL, 'Flash drive (18Gb)', '155-004-0010-0001', 0, '2020-11-23 05:32:37', 0),
(356, NULL, 'Flash drive (32GB)', '155-004-0010-0002', 0, '2020-11-23 05:32:37', 0),
(357, NULL, 'HP Ink #27 (black)', '', 0, '2020-11-23 05:32:37', 0),
(358, NULL, 'HP Ink #60 (black)', '155-004-0020-0020', 0, '2020-11-23 05:32:37', 0),
(359, NULL, 'HP Ink #60 (tricolor)', '155-004-0020-0021', 0, '2020-11-23 05:32:37', 0),
(360, NULL, 'HP Ink #704 (black)', '155-004-0012-0028', 0, '2020-11-23 05:32:37', 0),
(361, NULL, 'HP Ink #704 (tricolor)', '155-004-0012-0029', 0, '2020-11-23 05:32:37', 0),
(362, NULL, 'Ink develope drum', '', 0, '2020-11-23 05:32:37', 0),
(363, NULL, 'Memory (DDR 3)', '155-004-0013-0004', 0, '2020-11-23 05:32:37', 0),
(364, NULL, 'Memory (transcend)', '155-004-0013-0005', 0, '2020-11-23 05:32:37', 0),
(365, NULL, 'Mouse (optical)', '155-004-0014-0001', 0, '2020-11-23 05:32:37', 0),
(366, NULL, 'Portable storage (piece)', '', 0, '2020-11-23 05:32:37', 0),
(367, NULL, 'Toner Laser Jet per set (MFP 477 Jet Pro)', '', 0, '2020-11-23 05:32:37', 0),
(368, NULL, 'Toner Laser Jet per set (M1549 Jet Pro)', '', 0, '2020-11-23 05:32:37', 0),
(369, NULL, 'TN, INEO 164', '', 0, '2020-11-23 05:32:37', 0),
(370, NULL, 'Wireless Presenter', '', 0, '2020-11-23 05:32:37', 0),
(371, NULL, 'Air freshener', '155-001-0003-0001', 0, '2020-11-23 05:32:37', 0),
(372, NULL, 'Alcohol', '155-001-0004-0001', 0, '2020-11-23 05:32:37', 0),
(373, NULL, 'Cleanser powder (Zim, canister)', '155-003-0013-0005', 0, '2020-11-23 05:32:37', 0),
(374, NULL, 'Dipper', '155-003-0004-0001', 0, '2020-11-23 05:32:37', 0),
(375, NULL, 'Disinfectant spray (SOLBAC, 400gms)', '155-003-0009-0001', 0, '2020-11-23 05:32:37', 0),
(376, NULL, 'Dishwashing liquid', '', 0, '2020-11-23 05:32:37', 0),
(377, NULL, 'Doormat (cloth)', '155-003-0005-0002', 0, '2020-11-23 05:32:37', 0),
(378, NULL, 'Doormat (rubberized)', '155-003-0005-0001', 0, '2020-11-23 05:32:38', 0),
(379, NULL, 'Dust pan (plastic)', '155-003-0006-0001', 0, '2020-11-23 05:32:38', 0),
(380, NULL, 'Fabric conditioner', '', 0, '2020-11-23 05:32:38', 0),
(381, NULL, 'Feather duster', '155-003-0007-0001', 0, '2020-11-23 05:32:38', 0),
(382, NULL, 'Floorwax (can)', '155-003-0008-0001', 0, '2020-11-23 05:32:38', 0),
(383, NULL, 'Furniture cleaner (SPLENDA)', '', 0, '2020-11-23 05:32:38', 0),
(384, NULL, 'Garbage bag (black)', '', 0, '2020-11-23 05:32:38', 0),
(385, NULL, 'Hand sanitizer (bot)', '', 0, '2020-11-23 05:32:38', 0),
(386, NULL, 'Hand soap (small)', '155-003-0013-0004', 0, '2020-11-23 05:32:38', 0),
(387, NULL, 'Hardbroom (stick)', '155-003-0002-0001', 0, '2020-11-23 05:32:38', 0),
(388, NULL, 'Insect spray (baygon)', '155-003-0009-0002', 0, '2020-11-23 05:32:38', 0),
(389, NULL, 'Insecticide (KWIK, 600ml)', '155-003-0009-0003', 0, '2020-11-23 05:32:38', 0),
(390, NULL, 'Metal polish', '', 0, '2020-11-23 05:32:38', 0),
(391, NULL, 'Mop bucket (penguin)', '155-001-0010-0004', 0, '2020-11-23 05:32:38', 0),
(392, NULL, 'Mop handle (stainless)', '155-001-0010-0003', 0, '2020-11-23 05:32:38', 0),
(393, NULL, 'Mop head (made in rayon)', '155-003-0010-0001', 0, '2020-11-23 05:32:38', 0),
(394, NULL, 'Muriatic acid (gal)', '', 0, '2020-11-23 05:32:38', 0),
(395, NULL, 'pail (medium)', '155-003-0011-0002', 0, '2020-11-23 05:32:38', 0),
(396, NULL, 'pail (small)', '155-003-0011-0003', 0, '2020-11-23 05:32:38', 0),
(397, NULL, 'pail (big with cover)', '155-003-0011-0001', 0, '2020-11-23 05:32:38', 0),
(398, NULL, 'Plastic bag (piece)', '', 0, '2020-11-23 05:32:38', 0),
(399, NULL, 'Powder soap (500gms)', '155-003-0013-0002', 0, '2020-11-23 05:32:38', 0),
(400, NULL, 'Powder soap (1000gms)', '155-003-0013-0003', 0, '2020-11-23 05:32:38', 0),
(401, NULL, 'Rags (made of cloth)', '', 0, '2020-11-23 05:32:38', 0),
(402, NULL, 'Scourging pad (foam)', '155-003-0012-0001', 0, '2020-11-23 05:32:38', 0),
(403, NULL, 'Scourging pad (scotch brite)', '155-003-0012-0002', 0, '2020-11-23 05:32:38', 0),
(404, NULL, 'Softbroom (piece)', '155-003-0002-0002', 0, '2020-11-23 05:32:38', 0),
(405, NULL, 'Spin mop (tornado)', '155-003-0011-0004', 0, '2020-11-23 05:32:38', 0),
(406, NULL, 'Tissue paper (2ply)', '155-001-0066-0001', 0, '2020-11-23 05:32:38', 0),
(407, NULL, 'Toilet bowl pump (rubberized)', '155-003-0014-0004', 0, '2020-11-23 05:32:38', 0),
(408, NULL, 'Toilet bowl brush', '155-003-0003-0001', 0, '2020-11-23 05:32:38', 0),
(409, NULL, 'Toilet bowl cleaner (Zonrox, gal)', '155-003-0014-0001', 0, '2020-11-23 05:32:38', 0),
(410, NULL, 'Toilet deodorant cake (albatross)', '155-003-0015-0001', 0, '2020-11-23 05:32:38', 0),
(411, NULL, 'Waste basket/trash can (with cover)', '155-003-0016-0001', 0, '2020-11-23 05:32:38', 0),
(412, NULL, 'Waste basket/trash can (without cover)', '155-003-0016-0002', 0, '2020-11-23 05:32:38', 0),
(868, NULL, 'COMPUTER UNITS', 'E-01', 0, '2021-08-03 07:11:11', NULL),
(869, NULL, 'COMPUTER PRINTER', 'E-01(A)', 0, '2021-08-03 07:11:11', NULL),
(870, NULL, 'SWITCH HUB', 'E-01(B)', 0, '2021-08-03 07:11:11', NULL),
(871, NULL, 'Scanner (Old)', 'E-01(C)', 0, '2021-08-03 07:11:11', NULL),
(872, NULL, 'UNINTERRUPTED POWER SUPPLY (UPS)', 'E-01(D)', 0, '2021-08-03 07:11:11', NULL),
(873, NULL, 'DDR - Computer Memory', 'E-01(E)', 0, '2021-08-03 07:11:11', NULL),
(874, NULL, 'MOTHERBOARD - ASUS P5QDL -AM', 'E-01(F)', 0, '2021-08-03 07:11:11', NULL),
(875, NULL, 'ROUTER', 'E-01(G)', 0, '2021-08-03 07:11:11', NULL),
(876, NULL, 'SPEAKER', 'E-01(H)', 0, '2021-08-03 07:11:11', NULL),
(877, NULL, 'VIDEO CARD', 'E-01(I)', 0, '2021-08-03 07:11:11', NULL),
(878, NULL, 'POWER SUPPLY ATX', 'E-01(J)', 0, '2021-08-03 07:11:11', NULL),
(879, NULL, 'HARD DISK', 'E-01(K)', 0, '2021-08-03 07:11:11', NULL),
(880, NULL, 'EXTERNAL DVD RECORDER', 'E-01(L)', 0, '2021-08-03 07:11:12', NULL),
(881, NULL, 'XEROX MACHINE', 'E-02', 0, '2021-08-03 07:11:12', NULL),
(882, NULL, 'ROSTRUM', 'E-03', 0, '2021-08-03 07:11:12', NULL),
(883, NULL, 'OVERHEAD PROJECTOR', 'E-04', 0, '2021-08-03 07:11:12', NULL),
(884, NULL, 'SCREEN PROJECTOR', 'E-04(A)', 0, '2021-08-03 07:11:12', NULL),
(885, NULL, 'LCD PROJECTOR', 'E-04(B)', 0, '2021-08-03 07:11:12', NULL),
(886, NULL, 'TYPEWRITER', 'E-05', 0, '2021-08-03 07:11:12', NULL),
(887, NULL, 'BRUSH CUTTER', 'E-06', 0, '2021-08-03 07:11:12', NULL),
(888, NULL, 'KNAPSACK SPRAYER', 'E-07', 0, '2021-08-03 07:11:12', NULL),
(889, NULL, 'SCANNER', 'E-08', 0, '2021-08-03 07:11:12', NULL),
(890, NULL, 'REFRIGERATOR', 'E-09', 0, '2021-08-03 07:11:12', NULL),
(891, NULL, 'FREEZER', 'E-09(A)', 0, '2021-08-03 07:11:12', NULL),
(892, NULL, 'TELEVISION', 'E-10', 0, '2021-08-03 07:11:12', NULL),
(893, NULL, 'HOME THEATER', 'E-10 (A)', 0, '2021-08-03 07:11:12', NULL),
(894, NULL, 'GYM EQUIPMENT ', 'E-101', 0, '2021-08-03 07:11:12', NULL),
(895, NULL, 'Electronic Total Station', 'E-104', 0, '2021-08-03 07:11:12', NULL),
(896, NULL, 'Automatic Level', 'E-105', 0, '2021-08-03 07:11:12', NULL),
(897, NULL, 'WATER DISPENSER', 'E-11', 0, '2021-08-03 07:11:12', NULL),
(898, NULL, 'AIRCON / COOLER', 'E-12', 0, '2021-08-03 07:11:12', NULL),
(899, NULL, 'GENERATOR', 'E-13', 0, '2021-08-03 07:11:12', NULL),
(900, NULL, 'BINDING MACHINE', 'E-14', 0, '2021-08-03 07:11:12', NULL),
(901, NULL, 'FAX MACHINE', 'E-15', 0, '2021-08-03 07:11:12', NULL),
(902, NULL, 'MICROWAVE', 'E-16', 0, '2021-08-03 07:11:12', NULL),
(903, NULL, 'GAS RANGE', 'E-16(A)', 0, '2021-08-03 07:11:12', NULL),
(904, NULL, 'LAMINATING MACHINE', 'E-17', 0, '2021-08-03 07:11:12', NULL),
(905, NULL, 'ID PRINTER', 'E-17(A)', 0, '2021-08-03 07:11:12', NULL),
(906, NULL, 'CONFERENCE TABLE FOLDING', 'E-18', 0, '2021-08-03 07:11:12', NULL),
(907, NULL, 'WEIGHING SCALE W/ HEIGHT', 'E-19', 0, '2021-08-03 07:11:12', NULL),
(908, NULL, 'GUIDE SLOT PUNCH', 'E-20', 0, '2021-08-03 07:11:12', NULL),
(909, NULL, 'MULTI-MEDIA PROJECTOR (LCD)', 'E-21', 0, '2021-08-03 07:11:13', NULL),
(910, NULL, 'MEDIAFLEX - (RMF 300)', 'E-22', 0, '2021-08-03 07:11:13', NULL),
(911, NULL, 'BILLS COUNTER', 'E-23', 0, '2021-08-03 07:11:13', NULL),
(912, NULL, 'CHECKWRITER', 'E-23(A)', 0, '2021-08-03 07:11:13', NULL),
(913, NULL, 'CASSETTE RECORDER', 'E-24', 0, '2021-08-03 07:11:13', NULL),
(914, NULL, 'FLOOR POLISHER', 'E-25', 0, '2021-08-03 07:11:13', NULL),
(915, NULL, 'DVD Player (Old)', 'E-26', 0, '2021-08-03 07:11:13', NULL),
(916, NULL, 'VHS PLAYER', 'E-27', 0, '2021-08-03 07:11:13', NULL),
(917, NULL, 'GUITAR', 'E-28', 0, '2021-08-03 07:11:13', NULL),
(918, NULL, 'Video Camera - Sony Digi Cam', 'E-29', 0, '2021-08-03 07:11:13', NULL),
(919, NULL, 'OFFICE STATION', 'E-30', 0, '2021-08-03 07:11:13', NULL),
(920, NULL, 'SAFETY VAULT', 'E-31', 0, '2021-08-03 07:11:13', NULL),
(921, NULL, 'DIGITAL CAMERA', 'E-32', 0, '2021-08-03 07:11:13', NULL),
(922, NULL, 'HANDY CAMERA', 'E-33', 0, '2021-08-03 07:11:13', NULL),
(923, NULL, 'MEDICINE CABINET', 'E-34', 0, '2021-08-03 07:11:13', NULL),
(924, NULL, 'PUBLIC ADDRESS SYSTEM', 'E-35', 0, '2021-08-03 07:11:13', NULL),
(925, NULL, 'LAPEL MICROPHONE', 'E-35(A)', 0, '2021-08-03 07:11:13', NULL),
(926, NULL, 'Microphone', 'E-35(B)', 0, '2021-08-03 07:11:13', NULL),
(927, NULL, 'KARAOKE', 'E-36', 0, '2021-08-03 07:11:13', NULL),
(928, NULL, 'DVD PLAYER', 'E-36(A)', 0, '2021-08-03 07:11:13', NULL),
(929, NULL, 'IC Recorder', 'E-36(B)', 0, '2021-08-03 07:11:13', NULL),
(930, NULL, 'Megaphone ', 'E-37', 0, '2021-08-03 07:11:13', NULL),
(931, NULL, 'LAPTOP', 'E-38', 0, '2021-08-03 07:11:13', NULL),
(932, NULL, 'NETBOOK', 'E-38(A)', 0, '2021-08-03 07:11:13', NULL),
(933, NULL, 'TABLET', 'E-38(B)', 0, '2021-08-03 07:11:13', NULL),
(934, NULL, 'POWER SPRAY', 'E-39', 0, '2021-08-03 07:11:13', NULL),
(935, NULL, 'CORN MILL GRINDER', 'E-40', 0, '2021-08-03 07:11:13', NULL),
(936, NULL, 'SOUND SYSTEM SET', 'E-41', 0, '2021-08-03 07:11:13', NULL),
(937, NULL, 'SOUND SYSTEM HEADSET', 'E-41(A)', 0, '2021-08-03 07:11:13', NULL),
(938, NULL, 'WOODEN RIFFLE', 'E-42', 0, '2021-08-03 07:11:13', NULL),
(939, NULL, 'BASS DRUM', 'E-42(A)', 0, '2021-08-03 07:11:13', NULL),
(940, NULL, 'ARM RACK', 'E-42(B)', 0, '2021-08-03 07:11:14', NULL),
(941, NULL, 'MUSICAL STAND', 'E-42(C)', 0, '2021-08-03 07:11:14', NULL),
(942, NULL, 'RISO MACHINE', 'E-43', 0, '2021-08-03 07:11:14', NULL),
(943, NULL, 'HOT AIR STATION', 'E-44', 0, '2021-08-03 07:11:14', NULL),
(944, NULL, 'PORTABLE DIRECT SHEAR APPARATUS', 'E-44 (A)', 0, '2021-08-03 07:11:14', NULL),
(945, NULL, 'CUT OFF MACHINE', 'E-45', 0, '2021-08-03 07:11:14', NULL),
(946, NULL, 'ENGINEERING EQUIPMENTS', 'E-45 (A)', 0, '2021-08-03 07:11:14', NULL),
(947, NULL, 'HAMMER DRILL', 'E-46', 0, '2021-08-03 07:11:14', NULL),
(948, NULL, 'BUFFLES', 'E-46 (A)', 0, '2021-08-03 07:11:14', NULL),
(949, NULL, 'BENCH GRINDER 6 RUBICON', 'E-47', 0, '2021-08-03 07:11:14', NULL),
(950, NULL, 'GRINDER 4 MAKITA', 'E-48', 0, '2021-08-03 07:11:14', NULL),
(951, NULL, 'PLAINER', 'E-49', 0, '2021-08-03 07:11:14', NULL),
(952, NULL, 'BUGGY CART', 'E-50', 0, '2021-08-03 07:11:14', NULL),
(953, NULL, 'MICROPHONE - conference', 'E-52', 0, '2021-08-03 07:11:14', NULL),
(954, NULL, 'WATER PUMP', 'E-55', 0, '2021-08-03 07:11:14', NULL),
(955, NULL, 'Electric Motor', 'E-56', 0, '2021-08-03 07:11:14', NULL),
(956, NULL, 'Electro Pneumatics Training Set', 'E-57', 0, '2021-08-03 07:11:14', NULL),
(957, NULL, 'Wireless Router', 'E-58(A)', 0, '2021-08-03 07:11:14', NULL),
(958, NULL, 'Wireless Adapter', 'E-58(B)', 0, '2021-08-03 07:11:14', NULL),
(959, NULL, 'HIGH CAST ALUMINUM PRESSURE COOKER', 'E-59', 0, '2021-08-03 07:11:14', NULL),
(960, NULL, 'VACUUM PLASTIC SEALER', 'E-60', 0, '2021-08-03 07:11:14', NULL),
(961, NULL, 'GLASS CONTAINER', 'E-61', 0, '2021-08-03 07:11:14', NULL),
(962, NULL, 'FOOD PROCESSOR', 'E-62', 0, '2021-08-03 07:11:14', NULL),
(963, NULL, 'NOODLE MAKER', 'E-63', 0, '2021-08-03 07:11:15', NULL),
(964, NULL, 'PAIR OF MASK & SNORKEL', 'E-65', 0, '2021-08-03 07:11:15', NULL),
(965, NULL, 'PAIR OF FLIPPERS', 'E-66', 0, '2021-08-03 07:11:15', NULL),
(966, NULL, 'Heavy Duty (Osterizer / Super Blender)', 'E-67', 0, '2021-08-03 07:11:15', NULL),
(967, NULL, 'BP APPARATUS - ALPK2 JAPAN', 'E-68', 0, '2021-08-03 07:11:15', NULL),
(968, NULL, 'RING BLOWER 2 dia small', 'E-69', 0, '2021-08-03 07:11:15', NULL),
(969, NULL, 'HAND MIXER', 'E-70', 0, '2021-08-03 07:11:15', NULL),
(970, NULL, 'Electronic Sphygmomanometer', 'E-71', 0, '2021-08-03 07:11:15', NULL),
(971, NULL, 'THEODOLITE, DIGITAL KOLIDA', 'E-72', 0, '2021-08-03 07:11:15', NULL),
(972, NULL, 'Wardrobe Cabinet', 'E-73', 0, '2021-08-03 07:11:15', NULL),
(973, NULL, 'Soil Test Kit', 'E-74', 0, '2021-08-03 07:11:15', NULL),
(974, NULL, 'Air Compressor', 'E-75', 0, '2021-08-03 07:11:15', NULL),
(975, NULL, 'Paper Shredder', 'E-76', 0, '2021-08-03 07:11:15', NULL),
(976, NULL, 'Engineering Equipment', 'E-77', 0, '2021-08-03 07:11:15', NULL),
(977, NULL, 'Fire Extinguisher', 'E-78', 0, '2021-08-03 07:11:15', NULL),
(978, NULL, 'Paper Cutter', 'E-79', 0, '2021-08-03 07:11:15', NULL),
(979, NULL, 'Offset Printing Machine', 'E-80', 0, '2021-08-03 07:11:15', NULL),
(980, NULL, 'Ice Crusher', 'E-81', 0, '2021-08-03 07:11:15', NULL),
(981, NULL, 'Science Laboratory Equipment', 'E-82', 0, '2021-08-03 07:11:15', NULL),
(982, NULL, 'Oven Dryer', 'E-83', 0, '2021-08-03 07:11:15', NULL),
(983, NULL, 'Magnetic Compass', 'E-84', 0, '2021-08-03 07:11:15', NULL),
(984, NULL, 'Dental Chair', 'E-85', 0, '2021-08-03 07:11:15', NULL),
(985, NULL, 'Massage Chair', 'E-86', 0, '2021-08-03 07:11:16', NULL),
(986, NULL, 'Steam Boiler', 'E-87', 0, '2021-08-03 07:11:16', NULL),
(987, NULL, 'Salinity Refractometer', 'E-89', 0, '2021-08-03 07:11:16', NULL),
(988, NULL, 'Wildco (Kemmerer Water Sampler)', 'E-90', 0, '2021-08-03 07:11:16', NULL),
(989, NULL, 'Insulation Tester (Analog)', 'E-91', 0, '2021-08-03 07:11:16', NULL),
(990, NULL, 'Hana Platform / Trolley', 'E-92', 0, '2021-08-03 07:11:16', NULL),
(991, NULL, 'Weighing Scale 300Kg', 'E-93', 0, '2021-08-03 07:11:16', NULL),
(992, NULL, 'EXECUTIVE TABLE', 'F-01', 0, '2021-08-03 07:11:16', NULL),
(993, NULL, 'CLERICAL TABLE', 'F-02', 0, '2021-08-03 07:11:16', NULL),
(994, NULL, 'COMPUTER TABLE', 'F-03', 0, '2021-08-03 07:11:16', NULL),
(995, NULL, 'WOODEN TABLE (Ordinary)', 'F-04', 0, '2021-08-03 07:11:16', NULL),
(996, NULL, 'STEEL CABINET', 'F-05', 0, '2021-08-03 07:11:16', NULL),
(997, NULL, 'PLASTIC CABINET', 'F-05(A)', 0, '2021-08-03 07:11:16', NULL),
(998, NULL, 'MOBILE DRAWER', 'F-05(B)', 0, '2021-08-03 07:11:16', NULL),
(999, NULL, 'WOODEN CABINET', 'F-06', 0, '2021-08-03 07:11:16', NULL),
(1000, NULL, 'DIVIDERS (Fabric)', 'F-07(A)', 0, '2021-08-03 07:11:16', NULL),
(1001, NULL, 'DIVIDERS', 'F-07(B)', 0, '2021-08-03 07:11:16', NULL),
(1002, NULL, 'MODULAR PARTITION', 'F-07(C)', 0, '2021-08-03 07:11:16', NULL),
(1003, NULL, 'TYPING TABLE', 'F-08', 0, '2021-08-03 07:11:16', NULL),
(1004, NULL, 'SIDE TABLE W/ GLASS', 'F-08(A)', 0, '2021-08-03 07:11:16', NULL),
(1005, NULL, 'EXECUTIVE CHAIR', 'F-09(A)', 0, '2021-08-03 07:11:16', NULL),
(1006, NULL, 'CHAIRS W/ METAL', 'F-09(B)', 0, '2021-08-03 07:11:16', NULL),
(1007, NULL, 'Ordinary Chairs (Wooden)', 'F-09(C)', 0, '2021-08-03 07:11:16', NULL),
(1008, NULL, 'STOCKING CHAIRS', 'F-09(D)', 0, '2021-08-03 07:11:16', NULL),
(1009, NULL, 'COPTA CHAIRS - MONOBLOCK', 'F-09(E)', 0, '2021-08-03 07:11:16', NULL),
(1010, NULL, 'ALUMINUM CHAIR', 'F-09(F)', 0, '2021-08-03 07:11:16', NULL),
(1011, NULL, 'CONFERENCE CHAIR', 'F-09(G)', 0, '2021-08-03 07:11:16', NULL),
(1012, NULL, 'WHEEL CHAIR', 'F-09(H)', 0, '2021-08-03 07:11:16', NULL),
(1013, NULL, 'VISITORS CHAIR', 'F-09(I)', 0, '2021-08-03 07:11:16', NULL),
(1014, NULL, 'SWIVEL CHAIR', 'F-09(J)', 0, '2021-08-03 07:11:16', NULL),
(1015, NULL, 'Gang Chair', 'F-09(K)', 0, '2021-08-03 07:11:17', NULL),
(1016, NULL, 'SALA SET', 'F-10', 0, '2021-08-03 07:11:17', NULL),
(1017, NULL, 'LABORATORY TABLE', 'F-11(A)', 0, '2021-08-03 07:11:17', NULL),
(1018, NULL, 'STAND FAN / DESK FAN', 'F-12', 0, '2021-08-03 07:11:17', NULL),
(1019, NULL, 'CEILING / ORBIT FAN', 'F-12(A)', 0, '2021-08-03 07:11:17', NULL),
(1020, NULL, 'INDUSTRIAL FAN', 'F-12(B)', 0, '2021-08-03 07:11:17', NULL),
(1021, NULL, 'EXHAUST FAN', 'F-12(C)', 0, '2021-08-03 07:11:17', NULL),
(1022, NULL, 'FOLDING TABLE', 'F-14', 0, '2021-08-03 07:11:17', NULL),
(1023, NULL, 'WORKING / CONFERENCE TABLE', 'F-14(A)', 0, '2021-08-03 07:11:17', NULL),
(1024, NULL, 'PLASTIC STOOL', 'F-15', 0, '2021-08-03 07:11:17', NULL),
(1025, NULL, 'RING BINDER MACHINE', 'F-16', 0, '2021-08-03 07:11:17', NULL),
(1026, NULL, 'DURABOX / PLASTIC CABINET', 'F-18', 0, '2021-08-03 07:11:17', NULL),
(1027, NULL, 'RECHARGEABLE LIGHT', 'F-19', 0, '2021-08-03 07:11:17', NULL),
(1028, NULL, 'MATTRESS', 'F-20', 0, '2021-08-03 07:11:17', NULL),
(1029, NULL, 'BLANKET & PILLOW CASE', 'F-20(A)', 0, '2021-08-03 07:11:17', NULL),
(1030, NULL, 'PILLOW', 'F-20(B)', 0, '2021-08-03 07:11:17', NULL),
(1031, NULL, 'RICE COOKER', 'F-21', 0, '2021-08-03 07:11:17', NULL),
(1032, NULL, 'PLASTIC TABLE, 4 SEATERS', 'F-22', 0, '2021-08-03 07:11:17', NULL),
(1033, NULL, 'DINING TABLE', 'F-22(A)', 0, '2021-08-03 07:11:17', NULL),
(1034, NULL, 'DOUBLE DECK', 'F-23', 0, '2021-08-03 07:11:17', NULL),
(1035, NULL, 'STEEL BED', 'F-24', 0, '2021-08-03 07:11:17', NULL),
(1036, NULL, 'FOLDING BED W/ FOAM', 'F-24(A)', 0, '2021-08-03 07:11:17', NULL),
(1037, NULL, 'BOOKSHELVE (WOODEN)', 'F-25', 0, '2021-08-03 07:11:17', NULL),
(1038, NULL, 'WHITEBOARD', 'F-26', 0, '2021-08-03 07:11:17', NULL),
(1039, NULL, 'BULLETIN BOARD', 'F-27', 0, '2021-08-03 07:11:17', NULL),
(1040, NULL, 'DISPLAY CABINET', 'F-28', 0, '2021-08-03 07:11:17', NULL),
(1041, NULL, 'STEEL BOOKShelves', 'F-29', 0, '2021-08-03 07:11:17', NULL),
(1042, NULL, 'WOODEN BED', 'F-30 (A)', 0, '2021-08-03 07:11:17', NULL),
(1043, NULL, 'Small Trolley (Wooden)', 'F-31', 0, '2021-08-03 07:11:17', NULL),
(1044, NULL, 'BED FOAM', 'F-32', 0, '2021-08-03 07:11:17', NULL),
(1045, NULL, 'LADDER', 'F-33', 0, '2021-08-03 07:11:18', NULL),
(1046, NULL, 'Stand Aluminum Ladder', 'F-33 (A)', 0, '2021-08-03 07:11:18', NULL),
(1047, NULL, 'Stainles Steel Podium', 'F-33 (B)', 0, '2021-08-03 07:11:18', NULL),
(1048, NULL, 'Chair with Armrest', 'F-34', 0, '2021-08-03 07:11:18', NULL),
(1049, NULL, 'Uratex arm chair w/ writing pad', 'F-34 (A)', 0, '2021-08-03 07:11:18', NULL),
(1050, NULL, 'Monoblocks Chair', 'F-34(A)', 0, '2021-08-03 07:11:18', NULL),
(1051, NULL, 'Table with chair', 'F-34(B)', 0, '2021-08-03 07:11:18', NULL),
(1052, NULL, 'Study table with chairs', 'F-34(C)', 0, '2021-08-03 07:11:18', NULL),
(1053, NULL, 'Bed (Single Frame)', 'F-35', 0, '2021-08-03 07:11:18', NULL),
(1054, NULL, 'Classic Chairs', 'F-35(A)', 0, '2021-08-03 07:11:18', NULL),
(1055, NULL, 'Magazine Stand', 'F-36', 0, '2021-08-03 07:11:18', NULL),
(1056, NULL, 'OPAC Stand', 'F-37', 0, '2021-08-03 07:11:18', NULL),
(1057, NULL, 'Library Couch', 'F-38', 0, '2021-08-03 07:11:18', NULL),
(1058, NULL, 'Emergency Station', 'F-39', 0, '2021-08-03 07:11:18', NULL),
(1059, NULL, 'Laboratory Chemistry Table', 'F-40', 0, '2021-08-03 07:11:18', NULL),
(1060, NULL, 'PVC MAT', 'F-41', 0, '2021-08-03 07:11:18', NULL),
(1061, NULL, 'Speech Cubicle', 'F-42', 0, '2021-08-03 07:11:18', NULL),
(1062, NULL, 'Counter Table', 'F-52', 0, '2021-08-03 07:11:18', NULL),
(1063, NULL, 'Baggage Counter', 'F-53', 0, '2021-08-03 07:11:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplydesc`
--

CREATE TABLE `tblsupplydesc` (
  `descID` int(11) NOT NULL,
  `supplyID` int(11) DEFAULT NULL,
  `supplyUnit` varchar(50) DEFAULT NULL,
  `supplyDesc` varchar(200) DEFAULT NULL,
  `supplyPurpose` varchar(150) DEFAULT NULL,
  `supplyPrice` decimal(15,3) DEFAULT NULL,
  `IsReplace` int(11) DEFAULT 0,
  `replaceParts` varchar(255) DEFAULT NULL,
  `Consumable` varchar(25) DEFAULT NULL,
  `Warranty` int(11) DEFAULT 0,
  `chartID_SPMO` int(11) DEFAULT NULL,
  `chartID_Acc` int(11) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT current_timestamp(),
  `no` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsupplydesc`
--

INSERT INTO `tblsupplydesc` (`descID`, `supplyID`, `supplyUnit`, `supplyDesc`, `supplyPurpose`, `supplyPrice`, `IsReplace`, `replaceParts`, `Consumable`, `Warranty`, `chartID_SPMO`, `chartID_Acc`, `DateCreated`, `no`) VALUES
(10, 173, 'piece', 'Black', 'for office use', '5880.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:10:38', 10),
(11, 120, 'piece', 'Metal (Office table)', 'office use', '14700.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:21:53', 10),
(12, 148, 'piece', '6 seaters, color - black, wooden', 'for office use', '14700.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:24:04', 10),
(13, 137, 'piece', 'Metal with leatherette cover, color - black', 'for office use', '4900.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:26:12', 10),
(14, 36, 'piece', '12 seaters conference table, color - light brown', 'for office use', '29400.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:28:42', 10),
(15, 120, 'piece', 'wooden table', 'for office use', '24500.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:29:54', 10),
(16, 423, 'piece', 'office table with chair', 'for office use', '58800.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:33:33', 10),
(17, 23, 'unit', '12 cu ft top mount inverter', 'for office use', '29400.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:34:55', 10),
(18, 141, 'set', 'sofa set with center table, color - red', 'for office use', '29400.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:36:56', 10),
(19, 424, 'set', 'metal, color - white', 'for office use', '24500.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:43:53', 10),
(20, 141, 'set', 'sofa with center table , color - gray', 'for office use', '34300.000', 0, '', 'Non-Consumable', 12, 55, 55, '2021-07-30 06:43:53', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplytype`
--

CREATE TABLE `tblsupplytype` (
  `supTypeID` int(11) NOT NULL,
  `supTypeCode` varchar(50) DEFAULT NULL,
  `supTypeName` varchar(150) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `No` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsupplytype`
--

INSERT INTO `tblsupplytype` (`supTypeID`, `supTypeCode`, `supTypeName`, `DateCreated`, `No`) VALUES
(0, '-', '-', '2021-03-23 03:25:47', 0),
(1, 'Computer', 'Computer Supplies', '2021-03-23 03:17:50', 0),
(2, 'Electrical', 'Electrical Supplies', '2021-03-23 03:17:50', 0),
(3, 'Janitorial', 'Janitorial Supplies', '2021-03-23 03:17:50', 0),
(4, 'OEquipment', 'Office Equipment', '2021-03-23 03:17:50', 0),
(5, 'OSupplies', 'Office Supplies', '2021-03-23 03:17:50', 0),
(6, 'Paper', 'Paper Products', '2021-03-23 03:17:50', 0),
(7, 'Writing', 'Writing Supplies', '2021-03-23 03:17:50', 0),
(8, 'Building', 'Building', '2021-03-23 03:41:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplyused`
--

CREATE TABLE `tblsupplyused` (
  `usedID` int(11) NOT NULL,
  `poID` int(11) NOT NULL DEFAULT 0,
  `supplyID` int(11) NOT NULL DEFAULT 0,
  `descID` int(11) DEFAULT 0,
  `usedQuantity` int(11) NOT NULL DEFAULT 0,
  `risID` int(11) NOT NULL DEFAULT 0,
  `risppeID` int(11) NOT NULL DEFAULT 0,
  `icsID` int(11) NOT NULL DEFAULT 0,
  `pareID` int(11) NOT NULL DEFAULT 0,
  `issuanceNew` int(11) NOT NULL DEFAULT 1,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `usedCancelled` int(11) NOT NULL DEFAULT 0,
  `no` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblwarehouse`
--

CREATE TABLE `tblwarehouse` (
  `warehouseID` int(11) NOT NULL,
  `warehouseCode` varchar(20) DEFAULT NULL,
  `warehouseName` varchar(150) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblwarehouse`
--

INSERT INTO `tblwarehouse` (`warehouseID`, `warehouseCode`, `warehouseName`, `no`) VALUES
(1, 'MAIN', 'Main Warehouse', 0),
(2, 'COED', 'Abaño Warehouse', 0),
(3, 'COTT', 'COTT Warehouse', 0),
(4, 'CANR', 'CANR Warehouse', 0),
(5, 'ENTIENZA', 'Entienza Warehouse', 0),
(6, 'IFMS', 'IFMS Warehouse', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblwarehousedet`
--

CREATE TABLE `tblwarehousedet` (
  `warehousedetID` int(11) NOT NULL,
  `warehouseID` int(11) NOT NULL,
  `reissueID` int(11) NOT NULL,
  `officerID` int(11) DEFAULT NULL,
  `returnID` int(11) DEFAULT NULL,
  `warehouseStatus` int(11) DEFAULT 1,
  `DateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccount`
--
ALTER TABLE `tblaccount`
  ADD PRIMARY KEY (`accountID`),
  ADD UNIQUE KEY `accountUsername` (`accountUsername`),
  ADD KEY `officeID` (`officeID`),
  ADD KEY `levelID` (`levelID`);

--
-- Indexes for table `tblaccountlevel`
--
ALTER TABLE `tblaccountlevel`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `tblbarcode`
--
ALTER TABLE `tblbarcode`
  ADD PRIMARY KEY (`barID`);

--
-- Indexes for table `tblbuildingrepair`
--
ALTER TABLE `tblbuildingrepair`
  ADD PRIMARY KEY (`majorID`);

--
-- Indexes for table `tblcampus`
--
ALTER TABLE `tblcampus`
  ADD PRIMARY KEY (`campusID`);

--
-- Indexes for table `tblchartaccount`
--
ALTER TABLE `tblchartaccount`
  ADD PRIMARY KEY (`chartID`),
  ADD UNIQUE KEY `chartLegend` (`chartLegend`);

--
-- Indexes for table `tblcomponent`
--
ALTER TABLE `tblcomponent`
  ADD PRIMARY KEY (`componentID`);

--
-- Indexes for table `tbldispose`
--
ALTER TABLE `tbldispose`
  ADD PRIMARY KEY (`disposeID`);

--
-- Indexes for table `tbldisposeparts`
--
ALTER TABLE `tbldisposeparts`
  ADD PRIMARY KEY (`disposepartsID`);

--
-- Indexes for table `tblfundcluster`
--
ALTER TABLE `tblfundcluster`
  ADD PRIMARY KEY (`fundID`);

--
-- Indexes for table `tblics`
--
ALTER TABLE `tblics`
  ADD PRIMARY KEY (`icsID`),
  ADD UNIQUE KEY `icsCode` (`icsCode`),
  ADD KEY `officerIDFrom` (`officerIDFrom`),
  ADD KEY `supplierID` (`supplierID`),
  ADD KEY `fundID` (`fundID`),
  ADD KEY `officerIDTo` (`officerIDTo`);

--
-- Indexes for table `tblicsdet`
--
ALTER TABLE `tblicsdet`
  ADD PRIMARY KEY (`icsdetID`),
  ADD KEY `icsID` (`icsID`),
  ADD KEY `supplyID` (`supplyID`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `tblmenu`
--
ALTER TABLE `tblmenu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `tblofficerrecord`
--
ALTER TABLE `tblofficerrecord`
  ADD PRIMARY KEY (`officerID`);

--
-- Indexes for table `tbloffices`
--
ALTER TABLE `tbloffices`
  ADD PRIMARY KEY (`officeID`),
  ADD KEY `campusID` (`campusID`);

--
-- Indexes for table `tblpap`
--
ALTER TABLE `tblpap`
  ADD PRIMARY KEY (`papID`);

--
-- Indexes for table `tblpare`
--
ALTER TABLE `tblpare`
  ADD PRIMARY KEY (`pareID`),
  ADD UNIQUE KEY `pareCode` (`pareCode`),
  ADD KEY `officerIDFrom` (`officerIDFrom`),
  ADD KEY `officerIDTo` (`officerIDTo`),
  ADD KEY `supplierID` (`supplierID`),
  ADD KEY `fundID` (`fundID`);

--
-- Indexes for table `tblparedet`
--
ALTER TABLE `tblparedet`
  ADD PRIMARY KEY (`paredetID`),
  ADD KEY `pareID` (`pareID`),
  ADD KEY `supplyID` (`supplyID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `tblpo`
--
ALTER TABLE `tblpo`
  ADD PRIMARY KEY (`poID`);

--
-- Indexes for table `tblpurchase`
--
ALTER TABLE `tblpurchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indexes for table `tblreissue`
--
ALTER TABLE `tblreissue`
  ADD PRIMARY KEY (`reissueID`),
  ADD KEY `officerID` (`officerID`),
  ADD KEY `employeeID` (`employeeID`),
  ADD KEY `icsID` (`icsdetID`),
  ADD KEY `pareID` (`paredetID`),
  ADD KEY `supplyID` (`supplyID`);

--
-- Indexes for table `tblreissuedet`
--
ALTER TABLE `tblreissuedet`
  ADD PRIMARY KEY (`reissuedetID`),
  ADD KEY `icsdetID` (`reissueID`);

--
-- Indexes for table `tblreturn`
--
ALTER TABLE `tblreturn`
  ADD PRIMARY KEY (`returnID`),
  ADD KEY `reissueID` (`reissueID`),
  ADD KEY `officerID` (`officerID`);

--
-- Indexes for table `tblris`
--
ALTER TABLE `tblris`
  ADD PRIMARY KEY (`risID`),
  ADD UNIQUE KEY `risCode` (`risCode`),
  ADD KEY `officerID` (`officerID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `tblrisdet`
--
ALTER TABLE `tblrisdet`
  ADD PRIMARY KEY (`risdetID`),
  ADD KEY `risID` (`risID`),
  ADD KEY `supplyID` (`supplyID`),
  ADD KEY `risStatus` (`risStatus`);

--
-- Indexes for table `tblrisppe`
--
ALTER TABLE `tblrisppe`
  ADD PRIMARY KEY (`risppeID`);

--
-- Indexes for table `tblrisppedet`
--
ALTER TABLE `tblrisppedet`
  ADD PRIMARY KEY (`risppedetID`);

--
-- Indexes for table `tblstatus`
--
ALTER TABLE `tblstatus`
  ADD PRIMARY KEY (`statusID`),
  ADD KEY `statusNo` (`statusNo`);

--
-- Indexes for table `tblstock`
--
ALTER TABLE `tblstock`
  ADD PRIMARY KEY (`stockID`),
  ADD KEY `supplyID` (`supplyID`);

--
-- Indexes for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `tblsupply`
--
ALTER TABLE `tblsupply`
  ADD PRIMARY KEY (`supplyID`);

--
-- Indexes for table `tblsupplydesc`
--
ALTER TABLE `tblsupplydesc`
  ADD PRIMARY KEY (`descID`);

--
-- Indexes for table `tblsupplytype`
--
ALTER TABLE `tblsupplytype`
  ADD PRIMARY KEY (`supTypeID`);

--
-- Indexes for table `tblsupplyused`
--
ALTER TABLE `tblsupplyused`
  ADD PRIMARY KEY (`usedID`);

--
-- Indexes for table `tblwarehouse`
--
ALTER TABLE `tblwarehouse`
  ADD PRIMARY KEY (`warehouseID`);

--
-- Indexes for table `tblwarehousedet`
--
ALTER TABLE `tblwarehousedet`
  ADD PRIMARY KEY (`warehousedetID`),
  ADD KEY `officerID` (`officerID`),
  ADD KEY `returnID` (`returnID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccount`
--
ALTER TABLE `tblaccount`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT for table `tblaccountlevel`
--
ALTER TABLE `tblaccountlevel`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbarcode`
--
ALTER TABLE `tblbarcode`
  MODIFY `barID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbuildingrepair`
--
ALTER TABLE `tblbuildingrepair`
  MODIFY `majorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcampus`
--
ALTER TABLE `tblcampus`
  MODIFY `campusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblchartaccount`
--
ALTER TABLE `tblchartaccount`
  MODIFY `chartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tblcomponent`
--
ALTER TABLE `tblcomponent`
  MODIFY `componentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldispose`
--
ALTER TABLE `tbldispose`
  MODIFY `disposeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldisposeparts`
--
ALTER TABLE `tbldisposeparts`
  MODIFY `disposepartsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfundcluster`
--
ALTER TABLE `tblfundcluster`
  MODIFY `fundID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblics`
--
ALTER TABLE `tblics`
  MODIFY `icsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblicsdet`
--
ALTER TABLE `tblicsdet`
  MODIFY `icsdetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblmenu`
--
ALTER TABLE `tblmenu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tblofficerrecord`
--
ALTER TABLE `tblofficerrecord`
  MODIFY `officerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbloffices`
--
ALTER TABLE `tbloffices`
  MODIFY `officeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblpap`
--
ALTER TABLE `tblpap`
  MODIFY `papID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpare`
--
ALTER TABLE `tblpare`
  MODIFY `pareID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblparedet`
--
ALTER TABLE `tblparedet`
  MODIFY `paredetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpo`
--
ALTER TABLE `tblpo`
  MODIFY `poID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpurchase`
--
ALTER TABLE `tblpurchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblreissue`
--
ALTER TABLE `tblreissue`
  MODIFY `reissueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblreissuedet`
--
ALTER TABLE `tblreissuedet`
  MODIFY `reissuedetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblreturn`
--
ALTER TABLE `tblreturn`
  MODIFY `returnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblris`
--
ALTER TABLE `tblris`
  MODIFY `risID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblrisdet`
--
ALTER TABLE `tblrisdet`
  MODIFY `risdetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblrisppe`
--
ALTER TABLE `tblrisppe`
  MODIFY `risppeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblrisppedet`
--
ALTER TABLE `tblrisppedet`
  MODIFY `risppedetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblstatus`
--
ALTER TABLE `tblstatus`
  MODIFY `statusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tblstock`
--
ALTER TABLE `tblstock`
  MODIFY `stockID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tblsupply`
--
ALTER TABLE `tblsupply`
  MODIFY `supplyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1064;

--
-- AUTO_INCREMENT for table `tblsupplydesc`
--
ALTER TABLE `tblsupplydesc`
  MODIFY `descID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsupplytype`
--
ALTER TABLE `tblsupplytype`
  MODIFY `supTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsupplyused`
--
ALTER TABLE `tblsupplyused`
  MODIFY `usedID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwarehouse`
--
ALTER TABLE `tblwarehouse`
  MODIFY `warehouseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblwarehousedet`
--
ALTER TABLE `tblwarehousedet`
  MODIFY `warehousedetID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
