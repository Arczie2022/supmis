-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2021 at 05:34 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supmisdbv4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE `tblaccount` (
  `accountID` int NOT NULL,
  `accountUsername` varchar(20) DEFAULT NULL,
  `accountPassword` varchar(255) DEFAULT NULL,
  `accountName` varchar(100) DEFAULT NULL,
  `accountPosition` varchar(150) DEFAULT NULL,
  `levelID` int DEFAULT NULL,
  `officeID` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccount`
--

INSERT INTO `tblaccount` (`accountID`, `accountUsername`, `accountPassword`, `accountName`, `accountPosition`, `levelID`, `officeID`, `DateCreated`, `no`) VALUES
(1, '0001', '$2y$10$ZrNkXxW5Tuo188po34FZMec9vHZNh9XBR/moCOPdGscyIsHsJXrG.', 'Rusty G. Abanto', 'SUC PRESIDENT III', 7, 1, '2020-08-26 07:54:01', 523),
(2, '0002', '$2y$10$FlOMk.zjP3Ppw6Y4maXNcue5EcM6PEvA3DEC5hVfoPQkPXaFBXu7C', 'Ruben J. Tumaneng Jr.', 'BOARD SECRETARY V', 7, 2, '2020-08-26 07:54:01', 0),
(3, '0003', '$2y$10$gT4iaEzgT8RgUf5i.tjh5uXI83RsR8Cvfln8Jx.lcNAEKezzjzI7K', 'Manolo A. Carbonell', 'CHIEF ADMINISTRATIVE OFFICER', 7, 6, '2020-08-26 07:54:01', 0),
(4, '0004', '$2y$10$5ptyi0W72RZuPTt4JL.CDu5SL7J/NULuRIcwgZSgFXXT8bGf2o2Pi', 'Madelon B. Lee', 'ACCOUNTANT III', 6, 24, '2020-08-26 07:54:01', 523),
(5, '0005', '$2y$10$icB0nO3FFT.3XBw5NYnECudeqjBZFMZRa0Y9ha3D5/Yf8mbuFcGPi', 'Nelia O Llena', 'ENGINEER III', 7, 0, '2020-08-26 07:54:01', 0),
(6, '0006', '$2y$10$8vKdihF5x3Y3/LaIjyWY7eQQQOhmzBCOvFrwAreJh6zQayk.TDo2i', 'Emma H. Sumaway', 'ADMINISTRATIVE OFFICER V', 7, 0, '2020-08-26 07:54:01', 0),
(7, '0007', '$2y$10$Rgoj/wPNLabfD4vdGNbwP.VUdrn3iQMR9dP5HFfqMTl9l7INRJsBu', 'Jefferson T. Dacer', 'ADMINISTRATIVE OFFICER V', 8, 6, '2020-08-26 07:54:01', 523),
(8, '0008', '$2y$10$V4Sgftra9Z6PZT25JqFW9.PQj4RUpGrCPt0edLlVyGBLvFCPhAlGK', 'Ronald P. Dando', 'ADMINSTRATIVE OFFICER V', 7, 7, '2020-08-26 07:54:01', 0),
(9, '0009', '$2y$10$W0RasdXYPFDsmgl4xAuheuH7pWYUM/DP93k/hiTbQNLlILLK21RG6', 'Amelia O. Elep', 'ADMINISTRATIVE OFFICER V', 8, 25, '2020-08-26 07:54:01', 523),
(10, '0010', '$2y$10$S0BI4uGCpzbyWS8UC4YWAuvNvAjLNTOXmZJofqJ9maRxynk0UVHwe', 'Evangeline L. Sarion', 'ADMINISTRATIVE OFFICER V', 3, 27, '2020-08-26 07:54:01', 0),
(11, '0011', '$2y$10$7bQcEVynDPeqOkKbc1jd7uXv4TAMzeIQicAHGWKtyenWV9cnH8Oii', 'Martin M. Lukban', 'ADMINISTRATIVE OFFICER V', 7, 26, '2020-08-26 07:54:01', 0),
(12, '0012', '$2y$10$jdF0KtaqcpB1JyGp4hrAkeRVHEIAHoDaH0nDeJlrXqK.rVDPLuE4K', 'Eloisa R. Lukban', 'ADMINISTRATIVE OFFICER V', 8, 29, '2020-08-26 07:54:01', 523),
(13, '0013', '$2y$10$qrl6s5HxtmwNx65rdUaJF.BekFdVWR5MY4khZfuNorTc9BeVIM.lK', 'Sheila P. Sapusao', 'REGISTRAR III', 8, 13, '2020-08-26 07:54:01', 523),
(14, '0014', '$2y$10$evfkpb2.hN8i57U9NzbI0uazvo72q6oW7j1G5JgpV4gZPpvkmrInG', 'Emma Labrador Zamudio', '', 7, 0, '2020-08-26 07:54:01', 0),
(15, '0015', '$2y$10$KsC9s2TD4E5KChJNc0sLAe9mGbeod6Rjz/EgIMVfT0Z4Pawp1hU/S', 'Doreen Cresencia B. Pefianco', 'DENTIST II', 8, 22, '2020-08-26 07:54:01', 523),
(16, '0016', '$2y$10$7J6/7xxHp6LkJWMTNL9gSubjFhM9DdNlNpdLpRoROOcJbdwf5Bnj2', 'Louielyn S. Cada', 'ACCOUNTANT II ', 6, 24, '2020-08-26 07:54:01', 523),
(17, '0017', '$2y$10$DHxn8mc7Yhc4kQGdsyn96uAR8GOPCOwBjs0B9xv/.QPM/x.E.yQui', 'Aida F. Carranceja', 'GUIDANCE COORDINATOR III', 8, 16, '2020-08-26 07:54:01', 523),
(18, '0018', '$2y$10$fQAwjAUuETAIcDaEjLy5me59KyKYnmuwz6V7jCmUZcJD8NBUr18he', 'Nida T. Pimentel', 'ADMINISTRATIVE OFFICER IV', 8, 28, '2020-08-26 07:54:01', 523),
(19, '0019', '$2y$10$PW40JUspYjpU3oLIq/dFgeo5Cjqrxtmyk/Drc40u6NUW8OPSt99.S', 'Irine E. Andaya', 'ADMINISTRATIVE OFFICER IV', 7, 28, '2020-08-26 07:54:01', 523),
(20, '0020', '$2y$10$6BUtrMHBDd12KRvdX6LS9el7tPUg5f6ZX.KL9kGKyay2FI9cqOuPm', 'Rodel S. Elizes', 'NURSE II', 7, 0, '2020-08-26 07:54:01', 0),
(21, '0021', '$2y$10$V8HFI4oMmmd5BxvneSqmYOThpgbLnkdqzYpE/Ql9l/8YfR.5qJzMe', 'Aida Z. Bacuño', 'ADMINISTRATIVE OFFICER III', 5, 51, '2020-08-26 07:54:01', 523),
(22, '0022', '$2y$10$Cho8q.ulYApNqcTtq3hn3.pxpbhDFJmEcJ/xQUjHCe5piXagFjUIu', 'Arsenio Gem A. Garcillanosa', 'ADMINISTRATIVE OFFICER III', 3, 27, '2020-08-26 07:54:01', 523),
(23, '0023', '$2y$10$Kev6LpHqDlXnA.ewL.4CwurJ.EXGp./2GP75QQ908Gm3oqrb5bdVG', 'Jezyl V. Imperial', 'COLLEGE LIBRARIAN I', 7, 0, '2020-08-26 07:54:01', 0),
(24, '0024', '$2y$10$38sdAnzpLwL73oIOUy.Kl.YWQklvNB7wdGRk3rM3BXMEkwvbcKkoG', 'Lea L. Fulgueras', 'COLLEGE LIBRARIAN I', 8, 0, '2020-08-26 07:54:01', 523),
(25, '0025', '$2y$10$aFvf10P3qZuTGyxs3pozC.3IP0gdgAHasRS53zsCXbwOqAFN8Kewa', 'Arlane L. Lo', 'GUIDANCE COUNSELOR III', 7, 0, '2020-08-26 07:54:01', 0),
(26, '0026', '$2y$10$YJJ6Z6GJP0FKPrB4jJnIfOTrvKiNSbYz8Qrx8lnxX.w14bPzsjDfy', 'Julia L. Nipas', 'GUIDANCE COUNSELOR III', 7, 16, '2020-08-26 07:54:01', 0),
(27, '0027', '$2y$10$VMWMEcyl9gXMb0.vTOlNr.lKNt09YK4z//4G5OlsbckcdK6O.agaK', 'Elizabeth P. Pitoy', 'GUIDANCE COUNSELOR III', 7, 0, '2020-08-26 07:54:01', 0),
(28, '0028', '$2y$10$HZezA.o0sWCAmx8hOtV0Z.XBfrjdARc9AHMYV/yvVJQZnfeIuU6UC', 'Aida R. Robles', 'ACCOUNTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(29, '0029', '$2y$10$aLRPAv99t/WppTZsg9VGjeNzZODdY3jUbm53EA6iQcTjnXCpFA1gy', 'Jessica M. Encinas', 'ACCOUNTANT I ', 6, 24, '2020-08-26 07:54:01', 0),
(30, '0030', '$2y$10$xEOslnvylGdpmpo4kQogOuv7BF6i.N8Ge3DirUWB.yDb21uh5p4.y', 'Wava Ann G. Baylon', 'GUIDANCE COUNSELOR I', 7, 0, '2020-08-26 07:54:01', 0),
(31, '0031', '$2y$10$U28HzH.HAnh5r2TYTQPUvuL5UsdPJu9txepssWxjuJ.sIvPMxzBlK', 'Romulo Z. Villafuerte', 'ADMINISTRATIVE ASSISTANT V', 7, 0, '2020-08-26 07:54:01', 0),
(32, '0032', '$2y$10$GYx1ixEtUJXawQYfRGLc0O7hACPICCta3Pi.7eHv6tbj4A18AxRs.', 'Shara N. Pabines', 'NURSE I', 7, 0, '2020-08-26 07:54:01', 0),
(33, '0033', '$2y$10$riwGxTWxd7Q5P2L4XD7t3Oz0Z7ES4R1VH/2f/Wz8N1LgD9i9h1.4S', 'Dante N. Trinidad', 'REGISTRAR I', 7, 0, '2020-08-26 07:54:01', 0),
(34, '0034', '$2y$10$Ov8uX1wBYW67k.J6N1Gh8OQANHnH.vpFbeBoCrs5N06NwcnxMrtqa', 'Cherelda S. Badrina', 'REGISTRAR I', 7, 0, '2020-08-26 07:54:01', 0),
(35, '0035', '$2y$10$c4HsPg4pYDn1R7OgJxT43.MpNblVlsVyB7UVxtD9OicePdSrPaLvy', 'Maria Dolores P. Orbita', 'ADMINISTRATIVE OFFICER I', 7, 0, '2020-08-26 07:54:01', 0),
(36, '0036', '$2y$10$6rp4W/EYZVpl6GL4qsZNjOAeGsMC1EgI8YuUeNpouHswztc/wPNva', 'Marilyn P. Ferrer', 'ADMINISTRATIVE OFFICER I', 7, 0, '2020-08-26 07:54:01', 0),
(37, '0037', '$2y$10$a5A6YGcQfNkHMrZn0U8lzeMNBUTbVUKtuvVAfYJziYoaTg73UX7E2', 'Lolita Y. Torres', 'ADMINISTRATIVE OFFICER I', 7, 0, '2020-08-26 07:54:01', 0),
(38, '0038', '$2y$10$elNmQublz9OU5h2hhuEjAezORxcqw84jjQcY/Bgg/tr956MXppohK', 'Amelita S. Angeles', 'ADMINISTRATIVE OFFICER I', 7, 0, '2020-08-26 07:54:01', 0),
(39, '0039', '$2y$10$q5ci1wkOhxq8NlsoLV8cruSaxOgqrXw8ye44WScrKBJuYYv7GN9OK', 'Maria Linda B. Dela Cruz', 'ADMINISTRATIVE ASSISTANT III', 7, 0, '2020-08-26 07:54:01', 0),
(40, '0040', '$2y$10$OSzFcA53nfmIuM1q1v5Pxu48sSMqnn1jAkvlD8QYmR7RQmkz335fC', 'Marlene O. Asis', 'ADMINISTRATIVE ASSISTANT III', 7, 0, '2020-08-26 07:54:01', 0),
(41, '0041', '$2y$10$jjuPGSe9qfPHcQzntt.fqOXIqgxv6efm6cPGyPgJ0yQ7MPGjTaFbG', 'Jane S. Hemady', 'AMINISTRATIVE ASSISTANT III', 7, 24, '2020-08-26 07:54:01', 0),
(42, '0042', '$2y$10$PDfeg2xkEbe02pKgSv8BnOSjt.p9bPvzPga6NSn3tVXpsPqinTOku', 'Jocelyn C. Morada', 'LABORATORY INSPECTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(43, '0043', '$2y$10$qz1uVQbkyQsq5xI0uO810.60u0bfKQ3S1VorNAqYBK7RG4sPIKG5W', 'Leonila M. Padrigon', 'ADMINISTRATIVE ASSISTANT I', 6, 24, '2020-08-26 07:54:01', 523),
(44, '0044', '$2y$10$.TH7Vtmoq9qD/YldBft8guaMPfxjjK/2FWGg88bpSw1Q3qG4eZs3K', 'Ma. Victoria R. Ingatan', 'ADMINISTRATIVE ASSISTANT I', 7, 36, '2020-08-26 07:54:01', 523),
(45, '0045', '$2y$10$btwoiM5iTyuA7Rq4KDur2eGRuMyRsP5AdyVCMcKEbJr2719iIm4Aq', 'Shirley S. Prado', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(46, '0046', '$2y$10$M8cZGdCRZt48PY18IrmNI.w/BsakWNRAc38daNTM3.4/3VShNLAC.', 'Sybelle M. Orias', 'ADMINISTRATIVE AIDE VI ', 7, 0, '2020-08-26 07:54:01', 0),
(47, '0047', '$2y$10$uMx3UG6etAUf7f2JpF8JYev6JgRl0c3KKrNfNCmp/KhvPCwSiC12m', 'Fay T. Paat', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(48, '0048', '$2y$10$AU/XkvPOo6HHgeqDv1gJg.sxgHmBwS5G4lvJoDDdxrZ.U5.wGTWDW', 'Maria Teresa L. David', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(49, '0049', '$2y$10$LiGnnGEpkSWT2ysqVhfJQe8U4if4RoJoqBm0EeDkFKGs4G/DxJw1K', 'Erlinda M. Castillo', 'ADMINISTRATIVE ASSISTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(50, '0050', '$2y$10$a9AXRzVm6AD3sZ3Vjf.6seRKpTkSnM6LWnmz8ZhFiBpJ8KPwYMOOa', 'Arnel J. Padrigon', 'ADMINISTRATIVE ASSISTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(51, '0051', '$2y$10$nc.ytjEX5E2ELtEjTsdMx.quF1v7hHxvrv7.Z1wXDWJcrync/kt/u', 'Celnor Yanto Noora', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(52, '0052', '$2y$10$VlYCiAPy8LXPvsIlEP0xnOGagVoNK201Gw9hfCyBUimMRn3mtVyu6', 'Benedicto V. Israel', 'ADMINISTRATIVE AIDE V', 7, 0, '2020-08-26 07:54:01', 0),
(53, '0053', '$2y$10$tOMxqjfiEI0zWt5H.Gmv..pDFWq1nlKrkDOFjkf34yPO76xXX3I02', 'Arman O. Añonuevo', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(54, '0054', '$2y$10$30o6Jjh1B0Mc0/lL0mDzx.ue4XKthwnQZdXLNO1rcI/AKtjkfLUtO', 'Ricky S. Paat', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(55, '0055', '$2y$10$V91FRVv6FirVgsqjNkzH8eC3NLKEjKeBXHAb4w904h2smdZe1rBLq', 'Genaro E. Balauro', 'ADMINISTRATIVE AIDE IV', 8, 0, '2020-08-26 07:54:01', 523),
(56, '0056', '$2y$10$qhBcYdYjKWqy9n51LCgOSeWfJ8kl/C4R.mUnxRX2nEoDC5mp.h5k2', 'Ronnie H. Ternida', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(57, '0057', '$2y$10$XGd5ZKQCW7Rlq3I4TOP7Nen6wICMLNpiuQzA3qZ9LlSZvBk5bWu3G', 'Jesus A. Mojal Jr.', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(58, '0058', '$2y$10$qY5VKcDAe2H5yufUyrk5hu8kkqXBiEE2Dg8BHR.auSlByzMNpAMsu', 'Ricky F. Lucero', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(59, '0059', '$2y$10$9uKsfplCuzymqUSW7KPOKuYUFWzic3Ias.rrxbQGSOcf7Gw7.AEXu', 'Marlon R. Casallos', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(60, '0060', '$2y$10$ZazlkoElS0MATK54fwRzl.TBMijqwrYn9Xg/c8ayM7PYaQ2PFXqxi', 'Ariosto S. Decena', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(61, '0061', '$2y$10$kGh8/DeRf4YXAohtCnI41.LYRwNBOe9D4hAyj07382Fm2QR9OPzSO', 'Jemeul N. Gago', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(62, '0062', '$2y$10$ZEFzn0C9rDBBfq5a73W8Zu4xNp5tNhvI/4b6Hm8qdREzJKhjZjuNe', 'Michael M. Zabala', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(63, '0063', '$2y$10$/q3uRuoD5pDrNmthII1bXOgNBhGuQbSKg1T6bM6bGisWd70nUvAsy', 'Ana Bella T. Ratilla', 'ADMINISTRATIVE AIDE III', 7, 45, '2020-08-26 07:54:01', 523),
(64, '0064', '$2y$10$dI21ZvHHyovWVMAGyOBICOAp8yRxGXELa5WX3p/1RJ6kBroNFBjkq', 'Marzon V. Israel', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(65, '0065', '$2y$10$ouXrbSXNqy0uANv7EEC5c.5RI1r57y5IUILP6wbk7XuPv9EOEHHPe', 'Odello S. Dela Cruz', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(66, '0066', '$2y$10$zxG0zSLq./1stBaO0RtCyuPc7WUKASXgtU6BQX3DJAUK//srdu43.', 'Salvador O. Totanes Jr.', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(67, '0067', '$2y$10$uB2jNb0RdSKhO3FcWevlp.Ozd5fbi/QthCW.US52AP4qVj2IZovE2', 'Cherryvelle I. Jardinero', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(68, '0068', '$2y$10$cCnAfZ35NnMn4fEzYeVIPOHZM3Fyh9jKtu37YCp5ci53Z8zbFz5H2', 'Jinky D. Mapusao', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(69, '0069', '$2y$10$q/7QNcTozgJYuXntohuPGeYUYXiQ7U0/euTYMFUqh28HlaSd.wvEq', 'Andrew A. Naranjo', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(70, '0070', '$2y$10$EF0gTUo0xlmdJ3.XWAUqtOqw0dehMi3BrKX3Kv8TdfDaN0p5/elzm', 'Antonio B. Dongon', 'ADMINISTRATIVE AIDE VI', 7, 0, '2020-08-26 07:54:01', 0),
(71, '0071', '$2y$10$ETRxpoh27uuw8W5GXKZS1.AUpmuwha8yGv4wjXyMDZO3Bg6ucByJu', 'Graciela G. Sanglay', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(72, '0072', '$2y$10$D0XeinBf0zgeHYwcjzf12ODvyXjPmxawQcWUopmhcrkiLHsq7mccG', 'Barbie Mae E. Rosales', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(73, '0073', '$2y$10$jceb2N16F9XujyWGfrhRy.ogSlPxVvX3mVDV9Tg3j90L9mfL3xs3S', 'Arman B. Salvino', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(74, '0074', '$2y$10$meU7sRI7u2T5pQqQbnTTW.zbTpcpwRp8VsAWfGgU93NecFEq3h/Km', 'Haide H. Espina', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(75, '0075', '$2y$10$x3YMnTnRV2h8rZ6TOOmQBOq2hxSIqOgng9Sch6o4uM8XldJQlHYEu', 'Alma C. Furuc', 'ADMINISTRATIVE AIDE III', 3, 27, '2020-08-26 07:54:01', 523),
(76, '0076', '$2y$10$D0PYRKG1xKytB998kv9Ltumsr24wjlRHIaBIxAyhQap5o1PNACQGW', 'Jeanette C. Abaquita', 'ADMINISTRATIVE AIDE IV', 7, 0, '2020-08-26 07:54:01', 0),
(77, '0077', '$2y$10$XJbdqxUgw1ocSSqKRR80xeXUOdIBAVzu6Iav5P3KSHmxLUYTEzSnS', 'Arturo C. Peñaflor', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(78, '0078', '$2y$10$KKZ1V1KcQo7.d1kH8hxGCeyAtj84zDVR72gToCEg7B4WqsmS8Jc5u', 'Brenda A. Castro', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(79, '0079', '$2y$10$JKWfZN1fv0ZJP5zhnLP/2.bPI/sKnckAIZAaLoP6tGfiRyaTWGO9u', 'Jonel Odi Diaz', 'ADMINISTRATIVE AIDE IV/PROCUREMENT IN CHARGE', 7, 0, '2020-08-26 07:54:01', 0),
(80, '0080', '$2y$10$Lac4xIXqqmdtrb8tzubTiu5wO/vggNVrOLKI4OJKRstRulkqT31c6', 'Samuel S. De Vera', 'ADMINISTRATIVE AIDE IV', 7, 10, '2020-08-26 07:54:01', 0),
(81, '0081', '$2y$10$xesuiGhd9fQrgb5ZwHWMaeo3esMivV7vc4yiY.a.7L2/gRXjZjjBC', 'Silvestre E. Aborde Jr.', 'ADMINISTRATIVE AIDE lll', 7, 0, '2020-08-26 07:54:01', 0),
(82, '0082', '$2y$10$eLUF9vi.QnDOi9bhfMJiAeXDQoi1IpBz5D2WQsKk9E1S5D2uFCT3m', 'Felix G. Ambrona II', 'AUDIO-VISUAL EQUIPMENT OPERATOR I', 7, 10, '2020-08-26 07:54:01', 0),
(83, '0083', '$2y$10$m7lE3avSZaU8rvsi0vvcvuUJMw9x/DeO5zYA4xo1Pzs/md6h4HIJS', 'Edgardo I. Serrano', 'FISHERMAN I', 7, 0, '2020-08-26 07:54:01', 0),
(84, '0084', '$2y$10$14mJ6sihPBzqYnCNsgAoKu17qu5BqDRoUlqebRc6/8aLwnwtg2/MG', 'Rufo F. Gallego', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(85, '0085', '$2y$10$K1kDDcXhXMG1faj4lIusHOiCdn4JaW8kVOfpYgSX9dTcaxO7rdCDS', 'Joey Q. Roazul', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(86, '0086', '$2y$10$PRNDFAisG7s2sXarDejZG.abDbZIpg5WrwUM3P7CYlhJBJxippRUS', 'Felimon F. Crisosmo', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(87, '0087', '$2y$10$6yfVejbfIsRN55aNYvDWyOBR8Wo2jsizvWGySFma/TnXrQfpZ6GQ.', 'Jesus C. Dela Cruz', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(88, '0088', '$2y$10$DPUn.sGrgP1XPYZYWWvv6.cY0bA.gaKIlqzJnwULIDiFiu1YBLY5O', 'Virgilio V. Aldeza', 'SECURITY GUARD I', 7, 0, '2020-08-26 07:54:01', 0),
(89, '0089', '$2y$10$BoMD98qULF/D.sbYl6twYOh4vYs9EtSxUPwSbj/ISJvLCKDyQnghO', 'Joey Melq Z. Hicaro', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(90, '0090', '$2y$10$Q1ocgIQqIK4oXppu9vl9EuCndYHFqlFN8reGhrMfN9rWIyDLXzFOq', 'Maria Luisa T. Baria', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(91, '0091', '$2y$10$2ZjTdfGBSEkapdI12Vh/NuGDY3EctRJCcp2J9hAv.r9seFcvBE.Ze', 'Aileen A. David', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(92, '0092', '$2y$10$mEUAXt0gm/rhbcfCZZ6ES.Pu1lqR2ewS4i/DpOzTnzmrCoDmXM8EC', 'Maricel A. Balon', 'ADMINISTRATIVE AIDE II', 4, 0, '2020-08-26 07:54:01', 10),
(93, '0093', '$2y$10$pY7NabQZxhRC2DnSNSNp5eTSczDoeupFVujxF2WHnA.szNLFstGkW', 'Charlie C. Yago', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(94, '0094', '$2y$10$UVS/Uab0sT/sAjnJ6IC3zOyWJ9nadvJRwzzruE1OQo7ZxA4rPkvJK', 'Anna Liza J. Salo', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(95, '0095', '$2y$10$8UVcjDBbL/gw7NMzq0N1ZuCgCwdi9QkUixKlIw2h4pJ29a738U7lG', 'Lilibeth A. Sarion', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(96, '0096', '$2y$10$QeeTHWM6ZvARGv2h4ydX0OuniZOfpllWRwO.3Aql.MQJSJMHfSS6.', 'Edgardo V. Teope', 'ADMINISTRATIVE AIDE II', 4, 48, '2020-08-26 07:54:01', 523),
(97, '0097', '$2y$10$n69uLSSYT26voi.VMS9jNeP0TER3GVEGrECalo9PXb/kr1WVdqD1i', 'Ernesto T. Manlangit', 'FARM WORKER I', 7, 0, '2020-08-26 07:54:01', 0),
(98, '0098', '$2y$10$UeUoust3SwAHQZpekPd4pOQaBdjKCGNUgdcSK.uJfklPUv6emfhhq', 'Amelito Odi Andes', 'FARM WORKER I', 7, 0, '2020-08-26 07:54:01', 0),
(99, '0099', '$2y$10$196/qL6I0OAW5TwHtaQzD.39PDZDOFz/4aHemyF/8UXzhd5/sWQCy', 'Ariel O. Diaz', 'FARM WORKER I', 7, 0, '2020-08-26 07:54:01', 0),
(100, '0100', '$2y$10$x7OZsfYsUhUjkYpIZoGAQe/DiCE4LbnQCkqO0P11t/W3aBZUSxQay', 'Melania A. Padua', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(101, '0101', '$2y$10$48sgsPnbodfQs/MB2tJmIeR6fmVBirsrXvJkCL7WbOP1h800V9jHO', 'Antonio C. De La Cruz', 'ADMINISTRATIVE AIDE II', 7, 0, '2020-08-26 07:54:01', 0),
(102, '0102', '$2y$10$OLj8MgsRQxc23YOh1jcBn.Epdk0vUUPfmYN/GnqPqGqK18nMU8p.O', 'Zenaida G. Joyosa', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(103, '0103', '$2y$10$OUb8sT5S1DniEOc.LKsLGucMPFC0Z9iVxxueI8J0qenY4Uddt20bW', 'Eden E. Mojal', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(104, '0104', '$2y$10$OUcfcG7j3RmF0EhTak2PveUiR0TF.v9WgNBAjinoS/CJlmFvoszlW', 'Rustom B. Lagonoy', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(105, '0105', '$2y$10$X.fh205yrpGyhls7bVLABeGCViUaFyjU2VhMTT/MDg4nSxwMok3DW', 'Alexander L. Nual Jr.', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(106, '0106', '$2y$10$nHpA3GdRvrfOfh.nYehUR.jtFtnvtWrz4gwzQpfrV/KPZLJ3hhj8K', 'Antonio V. Sarion', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(107, '0107', '$2y$10$bqxhTCZYQNmLX.tUkgQn6ugY3MPvBk7p6C5Qko1/9jdrAFAjKMZ4u', 'Marcelino E. Bajaro', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(108, '0108', '$2y$10$gHQbXVQ7V20P3QXxun4SnexK0U8jI1KsC5G/HCFR8NT9PgaBB9d3C', 'Mario Q. Roazul Jr.', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(109, '0109', '$2y$10$2GwkPkBUicc4AfkDdyybs.tgMA8WRFk582KPTvMpH06S9rORPpYLW', 'Nolito S. Roquid', 'ADMINISTRATIVE AIDE I', 7, 0, '2020-08-26 07:54:01', 0),
(110, '0110', '$2y$10$bsr3Q6YgVvS.qUa4bDSUQOa7ltB08tUdVKrVmMM89hqIZD7z2QX9i', 'Wenifredo Tordilla Oñate', 'COLLEGE PROFESSOR', 7, 0, '2020-08-26 07:54:01', 0),
(111, '0111', '$2y$10$Ai5Rw2bV.CeOP6nzImrs6Ol/l1hE3QhpAOt28QzDeDPbShqh.LrEu', 'Corazon S. Fajardo', 'PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(112, '0112', '$2y$10$CpJTStLVBNSqZv1fydYZaeFYDv/H3x6zxq1xhdrceHDacfrTiH6yq', 'Ela N. Regondola', 'PROFESSOR IV ', 7, 0, '2020-08-26 07:54:01', 0),
(113, '0113', '$2y$10$QyOwN5XikLcFAaIfpvKY..sRScQ13TWet8fZCsETjckem.62yHzo6', 'Sonia S. Carbonell', 'PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(114, '0114', '$2y$10$bXwhmA4PEstwx7zAr2I9COVPR/Xvu7b4mYdpKu3bvaEqlYrze6WPS', 'Erlinda J. Porcincula', 'PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(115, '0115', '$2y$10$7OIY6mny.3ldKJ/FsweDU.A90bW0mUu4BY3HkzClHjvCjqeloaD1.', 'Cesar B. Bermundo', 'PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(116, '0116', '$2y$10$.Eq/2SURORjSbCgJ1c7AlOL32.uip7Z2xBxc2Xpvo0q2vEmO9.ZX.', 'Lilibeth A. Roxas', 'AP - V / VP FOR ADMIN. AND FINANCE', 8, 3, '2020-08-26 07:54:01', 523),
(117, '0117', '$2y$10$DRGqKZcjIm3XFW9j4BpMpuI0qNWs07x0AlPSYiPhq6sx4t75cWL4O', 'Nora J. Macasinag', 'ASSOCIATE PROFESSOR V', 7, 0, '2020-08-26 07:54:01', 0),
(118, '0118', '$2y$10$RuS7bE1NCPUH9sZqNdDppe4nn5KHkU2S8qJ8jATBhsq/zoJspiz72', 'Manuel B. Alberto', 'ASSOCIATE PROF. V / CAMPUS DIRECTOR', 8, 0, '2020-08-26 07:54:01', 523),
(119, '0119', '$2y$10$4k2ySQWGbClzU0JsGgMY5.dwwx/sypIbcxL8ghf7zDQ7Jc8j4hwJi', 'Pimeh C. Tolentino', 'ASSOCIATE PROFESSOR V', 8, 12, '2020-08-26 07:54:01', 523),
(120, '0120', '$2y$10$gGaslyAT7oUUJ.UMMkpIRutzUbIgoBrxm/8ZLCWMBPdiOxrPGEmhO', 'Dolores C. Volante', 'ASSOCIATE PROFESSOR V', 8, 0, '2020-08-26 07:54:01', 523),
(121, '0121', '$2y$10$qfJs2iUtkEA40hjqJVHT8.9uyZxjnfAkXa.Fnnr4kbjJHj2pz26m2', 'Bartolome S. Papares', 'ASSOCIATE PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(122, '0122', '$2y$10$mVAG.4bEfmBPukDjhK1fqOKiy.qTTK0OszXoZbqcRELSb0TSA0V2S', 'Felomino Vicente T. Fernandez', 'ASSOCIATE PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(123, '0123', '$2y$10$IyXp2M2aJ7c6A7J2YQBmd.gqCpUgoM1WAP.AOytWK9xB2C9lUWsSC', 'Roberto D. Vecida', 'ASSOCIATE PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(124, '0124', '$2y$10$xSbF1vjqfJJ6EZBrcRsE2eVTMHO1bcyostTq7I5GjYjTX6hX4HcDG', 'Job Balmes Imperial', '', 7, 0, '2020-08-26 07:54:01', 0),
(125, '0125', '$2y$10$VtUJD79Vs6BhxxQFeadwc.NMMdPs0M5e8OVUZenIgxNIp9rsM2wpu', 'Josefina Socorro F. Tondo', 'ASSOCIATE PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(126, '0126', '$2y$10$AM1qb66QNILV9B70gnN3i.9pURryqOJqoNrSLES6W19hlc.GN9COi', 'Gene F. Bonito', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(127, '0127', '$2y$10$EU5kZ62HCWexB2AM1TKF5ec0DZ3Mx/F8OfFL6ghsH0oFjoHCXZ0gK', 'Maria Cristina C. Azuelo', 'ASSOCIATE PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(128, '0128', '$2y$10$6Duw4rdFcNeLmSmc2OficOoK3E51/GSRdW1ThfCcFhGz9hlnje/mS', 'Juanita C. Emata', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(129, '0129', '$2y$10$/pNLLN2XbJPra.rKntiuRenHcWEKBdoFMZTG18sYP3mFVVmUgDaFS', 'Roberto L. Olboc', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(130, '0130', '$2y$10$Os2BQpgjtbjrw4C4UprFTey.VNqmBSYKM/OlllBNFqzqp3NzqF3gO', 'Lolito R. Orendain', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(131, '0131', '$2y$10$kHZeKURZO9WMmTv2KehZ2O9yEdgrmuZqLc23/PRDNW.BpMOGdGSD6', 'Lourdes S. Vedad', 'ASSOCIATE PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(132, '0132', '$2y$10$KGZ1u0oy0CJsL8qWx9koZePnaErysjrEtDUP.QB28W7RdglgqKSk2', 'Leah N. Barbado', 'ASSOCIATE PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(133, '0133', '$2y$10$BRumFySCVFuPZ1TyJSxAyuuf71NTziOLISDBvHlFR5ll8nPrBpDGG', 'Noli S. Dipasupil', 'ASSOCIATE PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(134, '0134', '$2y$10$77gzU2223Mp6bQkVLLm7.ui0WsFvlCss.sEvzFHGs1DNUVsC.IyP6', 'Rosalie A. Almadrones', 'ASSOC. PROF. II / VPAA', 8, 0, '2020-08-26 07:54:01', 523),
(135, '0135', '$2y$10$0bx00tQKBfOh4uC8WGiUXeJD/Fp40IQ0ojs/Aim4BXw3cmJMdscHy', 'Marietta Ceres Nataño Epino', 'ASSOCIATE PROFESSOR II/CHAIRPERSON ENTREP. DEPARTMENT', 7, 0, '2020-08-26 07:54:01', 0),
(136, '0136', '$2y$10$XZuXnhVc/KNIn1MmOGc2jOo0tZki0uskKjVtj5meEA6h9yG10h1kS', 'Ana B. Del Mundo', 'ASSOCIATE PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(137, '0137', '$2y$10$Oa9LFxCGpTdZNO/jGmJQHup1hZDjsVgF4BCHhdbedgiQXofLW7qme', 'Marilyn R. Papares', 'ASSOCIATE PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(138, '0138', '$2y$10$/MBVUiIKAEQVCqktiunzlObL11YX8qWYV84t/CydwPbYqGOxttrze', 'Ricardo D. Diño', 'ASSOCIATE PROFESSOR II', 8, 0, '2020-08-26 07:54:01', 523),
(139, '0139', '$2y$10$D3YzgQbC/lcpFZ6Y8Iod/ey.zRgmZ9w3i/ZebtiegCW9eQfrG3c4u', 'Shirley Alberto', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(140, '0140', '$2y$10$E1K1cmtr5gXcK5J2pAE5ou1lByDBlTvCYHQ/QKdvw0uWuExrMS9qW', 'Rene B. Abrera', 'ASSOCIATE PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(141, '0141', '$2y$10$IUAUY.Z63.xA7npTHZ8/J.fU2O1C/SioKaiiXsVP2P0i0DSGeYh4e', 'Aida C. Caldit', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(142, '0142', '$2y$10$MaJrtADM2FwRb9eLgQTjRu8PADDpknlmozjGm/6hsARBQWfVFNK62', 'Eden Santiago Chong', '', 7, 0, '2020-08-26 07:54:01', 0),
(143, '0143', '$2y$10$ixtEnmbEGio3OQnA2NN4ZeRf3CCwvcawW/PvOeRpf3lgKELOVJoT6', 'Fermin A. Gaurino', 'ASSOCIATE PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(144, '0144', '$2y$10$.1lBBhSz.3Iwey/GUKSo7e8WZmvDida/J9pL7DH0rlSrigBb0cKge', 'Rogelio A. Quimno', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(145, '0145', '$2y$10$6R6DiHzcoVG9mm.kTi3olOoKAwoiKvoMxwu7bOshgnpFGc1r/tP3C', 'Alex V. Sureta', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(146, '0146', '$2y$10$bdFw0U4wLoEgD1GWNPf42uV79.peCKQm9SpEpXl8k4iLRVhupV8Sq', 'Dario A. Torero', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(147, '0147', '$2y$10$9QTWkodoxaVU0VnktTE2G.Jt5lFnGuRcPMTuluN5Vj3wC9gt4RLd2', 'Silvestre H. Ilao', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(148, '0148', '$2y$10$5gFquEZemEYD/eNHQa0hKucpLipJXcCpEUYXbsWFu07IEq1R5qK.C', 'Edwin M. Llena', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(149, '0149', '$2y$10$UbJTNtpJhZV.JKf909ORSOp5nmgPr/XJBRV7JjHvDfg32jygk5iL2', 'Edgardo E. Mancenido', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(150, '0150', '$2y$10$0iN9j8jzuNxC1Ttx7pE63e/BZBiRGJUz5Eyd9uT94YwBj5PiHVgBu', 'Elsa T. Manlangit', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(151, '0151', '$2y$10$QE4KiwiJx3WaIsQNx5EeF.8.o3gZsLuVP5nFYpe9HAuJ36IuhDinO', 'Bernadette C. Mendejar', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(152, '0152', '$2y$10$eksSZxXVQqRk4449riWhY.UhRT38jI5f8YjJN0RgOuKtrdKDlLcLm', 'Rogelio L. Tan', 'ASSOCIATE PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(153, '0153', '$2y$10$mFCRrgfeaqNzZTTqoEmf1evSXzgNX2FGBztPh2NZ0dQHS3deu8/jG', 'Virginia S. Abuyo', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(154, '0154', '$2y$10$5/4GS994zCzcDBO8RqOhqeiwJrnevt/xEgncR4CeDDmRTd3t7tv7q', 'Melanie D. Bacuño', 'ASSISTANT PROFESSOR IV ', 8, 0, '2020-08-26 07:54:01', 523),
(155, '0155', '$2y$10$PGDJSVkIdDZSYbaIOaFJM.U1ICCu.CyrQkJSvIR7TCafkd9SgOVtu', 'Genaro B. Balane', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(156, '0156', '$2y$10$ZPfJUThYs9dMnoEe3BRYVuEnyVDjOD7e0278SmLavJupBBlOALChy', 'Evelyn P. Buitre', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(157, '0157', '$2y$10$YvqDPdMuY2WBi7DyRvssveQDrOc2kxQhk89TF3KcZTvG8eutFISIC', 'Emmanuel A. David', 'ASSISTANT PROFESSOR IV ', 7, 0, '2020-08-26 07:54:01', 0),
(158, '0158', '$2y$10$qWngrvPsn24YLjA97JAX7.g1/s5uofhftDspkZBO.McJCjbx97Adq', 'Jackson B. De Chavez', 'ASSISTANT PROESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(159, '0159', '$2y$10$Qu7e33rnJiksUk1k6vGMDOziUURMa//Y6nCvEHWJUOEiNcKAT35Re', 'Roger Jay Lamadrid De Vela', '', 8, 0, '2020-08-26 07:54:01', 523),
(160, '0160', '$2y$10$QTJS64XPCuO.KP5dqvVc0.HJGxVFWqusIMW48pT7DD2.TK6pz9RVi', 'Renato T. Pancho', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(161, '0161', '$2y$10$hSeHfoZDk5K.NHcmggQenePRvXAkz.kz6OdRP8ymNbm3lkjdoAWUa', 'Claro Ramon A. Duero', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(162, '0162', '$2y$10$cxk8o7nvewb9o6uzDimeBOJ9Og3wVSmYqupLvOLVJewFFXZtENHO6', 'Nena B. Peteza', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(163, '0163', '$2y$10$ZadED5tG3XrYFBjtkMj5Pemomn13fHsHc.USwZ8/SQRCkr3KzEqNe', 'Gina J. Estrada', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(164, '0164', '$2y$10$c/3LRAPl0T4Hoqol2Au0IOD85YV7WBM6ASr5grrv4MjeMPd49DbPy', 'Rosabel G. Sayson', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(165, '0165', '$2y$10$0gInrNcWCkWcWWAEERuZOOkKXywMLSN8jg1szjx7sgWg2S460cj0O', 'Merly A. Labaro', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(166, '0166', '$2y$10$vdMY9aNB72gCWC/lZwgSPuIXv0NpY3rw4AOc0mVK8Q7ysDR9IqRRu', 'Denis M. Lo', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(167, '0167', '$2y$10$5ptiEEzYtmOO4dSi37Fx9ulr/52OBODJ/ju/2vO0whBzt9MgF11aO', 'Israel C. Lotivo', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(168, '0168', '$2y$10$b.dqhJEv5pX4KAMgLIKD2eZb0IUzSTDzu4G70kZimBR/sQaMlgvSO', 'Nemia Z. Vecida', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(169, '0169', '$2y$10$C2uslc.EwwyzeLSV134Z8uESF8ktdZzqgESdlT4mkV5C/Io0/Lnuu', 'Estrella P. Obusan', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(170, '0170', '$2y$10$/41pB8bRZL1BZH.Xq03uJOjImr/yqdzXZOJASPom1v373ii46pErW', 'Ramon A. Orbita', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(171, '0171', '$2y$10$tZhl9ldY9ISS82U03pma1.7m6s3wE/ckqYDVMjLAj/4nuLon0P.Ye', 'Aida Cereno Rojas', 'ASSISTANT PROFESSOR IV ', 7, 0, '2020-08-26 07:54:01', 0),
(172, '0172', '$2y$10$F33lzzVhUmkHxdyCTKWGKOe3/.EQs9u2NLNxNr2k0PlmzibEq7YT.', 'Almira K. Velasco', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(173, '0173', '$2y$10$6J8EhG9Aw3VIC0E4l2uez.bHVztz/HvvCVLewAM0LDk9y0WyIT.x6', 'Abner Jose C. Villar', 'ASSISTANT PROFESSOR IV', 7, 0, '2020-08-26 07:54:01', 0),
(174, '0174', '$2y$10$eLz1z.ArwXfHzdHY99o8suDHao8S0WvJIZ6zqq3wnyduHTB4RCrSW', 'Samson B. Zantua', 'ASSISTANT PROFESSOR IV ', 7, 0, '2020-08-26 07:54:01', 0),
(175, '0175', '$2y$10$KFFQYqKALr1oaID2B5hrzuRR0smSoKO4gnQqgx4xlC6tuJeRZYEDC', 'Jocelyn L. Abogado', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(176, '0177', '$2y$10$4rUt/AYPVQYsq3GH1w8CdOYfjJJtjzeQ5pJUlvhZNTlCzA1Z0sDBK', 'Arlene C. Alegre', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(177, '0178', '$2y$10$0llE2pPO5gBpClb4KfBQ9e46Q4avzA.1cDo/LgZQ4IhmPFfhySku.', 'Jesus C. Avanceña', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(178, '0179', '$2y$10$6VluDOOSmoSLcKSP9ZxVt.UOlKlwysxa7F3KfEWoqULDLDGtX2U6u', 'Aser N. Dino', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(179, '0180', '$2y$10$Vvj3NcgjoKJj3ck8wh2kGeTpPQLuBIgV/DPbV4TTyE1az5ZJMpcne', 'Marissa I. Flores', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(180, '0181', '$2y$10$wTwDsoo2tgqF7xiXgRjNTeEkfWUegafVA8mMSHJLtbA/58kykRSYi', 'Beverly V. Musa', 'ASSISTANT PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(181, '0182', '$2y$10$haax77MDcX86bm5OBNtXvuHIKkR1UziCfDJ2cJVa9CjudjNyCVCiG', 'Girly H. Naval', 'ASSISTANT PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(182, '0183', '$2y$10$57OxpQi0BUQX3tijyx8.2.jGWEG4txX6BRySjSTBCRmeEJ9VvWqDq', 'Norma A. Papares', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(183, '0184', '$2y$10$moHW78ei3RVWva5o6S2NdusOu3Xh3TkTRvbI5ubRP8xP8e02.Gcwq', 'Jennifer S. Rubio', 'ASSISTANT PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(184, '0185', '$2y$10$KctH88FbWQ0y74k4BIpaNu9QtcNYE2LkuDP.5KeiTlFIKhxzt9Eoq', 'Emmanuel A. Rojas', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(185, '0186', '$2y$10$fBkMhCHtbS38tEATBnWtaeU7IDbv/rj4ez77mQOe.sVgglEnCmfjm', 'Bella V. Sabordo', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(186, '0187', '$2y$10$wsHChylVBWpLo8KWLIc9r.pzrmnY2RGjoSjnalFEGqZCKZf8N5nOu', 'Jocelyn E. Trinidad', 'ASSISTANT PROFESSOR III', 7, 0, '2020-08-26 07:54:01', 0),
(187, '0188', '$2y$10$OOCs2zCRLh6AELAYhyqOROte29FGljaqr0sPv3eVPrMfMVeY7CQrm', 'Gil Victor G. Zaldua', 'ASSISTANT PROFESSOR III', 8, 0, '2020-08-26 07:54:01', 523),
(188, '0189', '$2y$10$ZU3M5X6oNqaquqmjmFXFgeu6TayuDoQAouuarvBqTkcVDJyLTVZmm', 'Delma Jean V. Abad', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(189, '0190', '$2y$10$toF3P9IWAP7b4R4Nn/u.LumlVTXWw/FypDpQJKaHe4G4pr5SDe2eS', 'Ronnie E. Asis', 'ASSISTANT PROFESSOR II ', 7, 0, '2020-08-26 07:54:01', 0),
(190, '0191', '$2y$10$CDdXrO2q8PhJeLusJzu5nulENsHLI8n57HcALN9r/Y7SdLedsmS3S', 'Ronald S. Mancenido', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(191, '0192', '$2y$10$uWZCWpjSlQzooJ1xqCeRHe2PcPZUxk8nRRH.QFM8Jt/bH0DU3jcC6', 'Michelle S. Carbonell', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(192, '0193', '$2y$10$ShDg/wacy95eq2WeXDCD6OLXU/2boc4RWLJhQ8Xb.sIfJxzUCHnhC', 'Daniel E. Maligat Jr.', 'ASSISTANT PROFESSOR II', 8, 0, '2020-08-26 07:54:01', 523),
(193, '0194', '$2y$10$kJs8ruozFRNEbzUq.FJk9OnRrltHGCqBrKaHPhMKdAkdbyDTQHKza', 'Nemia C. Puse', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(194, '0195', '$2y$10$KBN//8v5FaE8Dc1Qe/tSnOuSDKzzyjnACGBYTD5DrbveZ9ehFVgp.', 'Rudy T. Rayos III', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(195, '0196', '$2y$10$CtsJiAXnMnDP2cEO3J.LHusn9cfA/DunrtudhPE3gV.NoQoi/lmo2', 'Sheela G. Salvador', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(196, '0197', '$2y$10$vAXEkNRS3IoJxNbFSaLQZ.ikyfP2QZunv/j49lyFrEvDIk343tSEq', 'Noe M. Emata', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(197, '0198', '$2y$10$.dmb6UV.gJ/pDiNSirL3puHUNrSnPOej75RQ0DrmwgwvhQE8hbApq', 'Dorothy S. Sureta', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(198, '0199', '$2y$10$vjmbs.2hAj68ldJ0PVedrefAImM09EV45SAHydk/i56ruLghHJIIG', 'Jocelyn O. Torio', 'ASSISTANT PROFESSOR II', 8, 0, '2020-08-26 07:54:01', 523),
(199, '0200', '$2y$10$ykkRny6/HZlaMvL8xMmUje1iYgzf7QOkYQj.IfH/mS5l0KIsex4KG', 'Angelita M. Orendain', 'ASSISTANT POFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(200, '0201', '$2y$10$AhgRjvjDGTk3ismA.o3fveil7dKPfDKaozb7cdLcMbJnhsxdmUQ9C', 'Angeles I. M. Asay Jr.', 'ASSISTANT PROFESSOR II', 7, 0, '2020-08-26 07:54:01', 0),
(201, '0202', '$2y$10$ia2eBzTNieRqQ3Z/N0/Eh.o9PEBWKuIkvfCllAkHG9KJVKJpxzkXO', 'Zenyfe S. Paraiso', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(202, '0203', '$2y$10$.sgBQaNiwX.3YvNWhpEa1uT2yDXhH1XhMc6SAAJwEbAsDVnYArf6O', 'Arthur Ibita Avila', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(203, '0204', '$2y$10$hPD4xp2bfDjF0Y.0ZX/Fr.MlnqHiVF2APMcz/1h.fohiFsy7bL3gW', 'Roland S. Alarcon', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(204, '0205', '$2y$10$9wOZ5D7CFwotz3akCOlaDuLUC127xc1TugKE359Bcz/ysBehq3zVa', 'Evelyn M. Baesa', 'ASSISTANT PROFESSOR I / ICS DIRECTOR', 7, 0, '2020-08-26 07:54:01', 0),
(205, '0206', '$2y$10$hmkDimefDgb0QsfT1UqLv.C3JACPj7rdfu9FHkm/Bdnd/5OGZVyfu', 'Maria Elena A. Bidar', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(206, '0207', '$2y$10$FWFJR.95w7nMnqQVT9fFJezJJ3qWnIuiwoQLECPwMuA2YrfbVZAOa', 'Rosemarie T. Bigueras', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(207, '0208', '$2y$10$iycMOg8D259jYPtWx2LWHezthWD6CT.zw1kfSdHEZTSgscHE7U5u2', 'Helen D. Cabanilla', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(208, '0209', '$2y$10$laevx2T95wgpz/Wb5BlTEOcs7x6q2mKY86ddrMm4qRak1N0KtpHkO', 'Edwin R. Ichiano', 'ASSISTANT PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(209, '0210', '$2y$10$GxACvl1jdTfX45C5mGQkfunVoSDqnIhZ2AWivbRbJ78wGSvxqDXTW', 'Gracia A. Delos Reyes', 'ASSISTANT PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(210, '0211', '$2y$10$ZFSTD8jkYFWc4o.ub.Eeh.iveR2xQMcDQCCz3fimp0Fz3NNk5G1ua', 'Adrian G. Daniel', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(211, '0212', '$2y$10$ApHLrYV54PWuACQ.Z0W2Ie1u.NYasPMNOWMhEmh4mcfR49z.UjBAW', 'Noel S. Manila', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(212, '0213', '$2y$10$E6sFp48tPTn8EieDq0DfaOo64PPesUKE5RInFLhRr7aKb4b388RuG', 'Edgar Bryan B. Nicart', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(213, '0214', '$2y$10$zKiu8/uxMs6rru3s89nxBueQdRO.UDU/YVMAjEy74a6qSwDqhdvwO', 'Emilyn O. Panotes', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(214, '0215', '$2y$10$PoC3r/IlSqx94DPGFTVWdOaAqxcxyz60K7OyMwjczLGIx9IenP4ey', 'Jofhiline F. Dygico', 'ASSISTANT PROFESSOR II', 8, 0, '2020-08-26 07:54:01', 523),
(215, '0216', '$2y$10$mN90fh3A2SY5tBU1Kc/a2u0MVpNXPjm5Urjj0SpI9bMlU/tT1U4iy', 'Andy C. Robles', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(216, '0217', '$2y$10$qvi99.IPfDfa3IK8TYMafOXkxtcaG/NXPdXgxoRQ0COMbjDJgSkpS', 'Joel F. Valera', 'ASSISTANT PROFESSOR I', 4, 45, '2020-08-26 07:54:01', 523),
(217, '0218', '$2y$10$4n4hmbZiTYS1xxlgGeQQw.6PtInrrwi4VxJcUrr0tWXWoLlx79l4K', 'Luvy S. Asis', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(218, '0219', '$2y$10$37lMTAkpyTsAf6pAF4Jgn.vaQcdtPCMXvsgstWA/drw0KK8YTyhhK', 'Eduardo M. Abad', 'ASSISTANT PROFESSOR I', 8, 0, '2020-08-26 07:54:01', 523),
(219, '0220', '$2y$10$HlmV/2DiUPZNCuv7WcR6juHB2iSi33YOUHmoZiuR7.7ba59y.g31m', 'Margie B. Ocampo-agawa', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(220, '0221', '$2y$10$ObqEyiA9BKj7NrI5DLW/GuWMToZjunW87jGV0fBtWlaYKyYNn7VsW', 'Alex Rafael Aragona', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(221, '0222', '$2y$10$PxK1acCvVS0qP2RN8BFaQutzJSYcks9ef.FoB0F9eclvnCczhHf6C', 'Erlinda M. Crescini', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(222, '0223', '$2y$10$DkoG6bGRiwmgJ/xi8z3XmOB4DQBHxfO0OnBjXC.iSUc5hGAZXNI5C', 'Renato A. Canaria', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(223, '0224', '$2y$10$klc.op4JgvzuxwiAptlzL.ksTR0mEjUL.v7vnjakRkjRvk2NyYArq', 'Melissa S. Carbonell', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(224, '0225', '$2y$10$E6jaxk9ILcdGObbigoTLUOPAbhd2NuFdL72Wxum.hICs41mEZrDtq', 'Asuncion B. Merciales', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(225, '0226', '$2y$10$8xPrkIfkdmRWyS2RiqH3fOtokEjcs.VQvF5gzOz7Xhb.jYz9ky09G', 'Iris H. Eboña', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(226, '0227', '$2y$10$2maqb.RfT9hi5SfWDVY.VuxEPBJRkZYKy0dnz5gXG6RzV7W.GABEC', 'Gennevie L. Elep', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(227, '0228', '$2y$10$mGF8LKXYqLPIa31/WJhSZe0kN6kLvQWv7CZiySvkAzoJqp5kzVtBe', 'Menchie I. Bernardo', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(228, '0229', '$2y$10$L/65bHUaE9SYmm07d1w8fefVhkPHML0VgnIpV1nIWeEbIbQ/qwaX6', 'Aileen S. Lladoc', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(229, '0230', '$2y$10$OlOl98GdHkEGqrhqgtc8QOgL6kkGzCmJ4wU2VKj6yDRB4iB0Snd12', 'Lovewiserlyn O. Dela Cruz', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(230, '0231', '$2y$10$d2Z47wW332ANeFt2NbuCZOUsqhnGgHAZoH8FogHvDBtnQgGKeY8iy', 'Sammy P. Pitoy', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(231, '0232', '$2y$10$gHd7vEp.I17YRQ3ixmV0oux8mudlazQJEYWBLyYrkHbEhFGlW3oPK', 'Madelene Grace G. Rocas', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(232, '0233', '$2y$10$x9Pk.oGCu41Ozwij06fUfujrdT0nJVV6BFS0mRZOFP7X.JwZyvc1K', 'Analyn A. Vedad', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(233, '0234', '$2y$10$85jXRjHZqLEX9ZyqZj7qteFs/HoKvB2gCvJBd1uAl1kqup6ZUZYfe', 'Herman F. Sumaway', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(234, '0235', '$2y$10$XzLvz/2WGeQ6zbRe8IIidO3FLX2ab0/YFSj2Xvm41hw6GRKs5tgNy', 'Jose A. Sapusao, Jr.', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(235, '0236', '$2y$10$DUngl3N4zsnxH/XJ2fPpbu3NJFCAUswnE/AjXJGlexp9d/iLZ7OBC', 'Aiza L. Castañeda', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(236, '0237', '$2y$10$K8ZOgKwUk/9GVxFkKbbCqOJeyu7poq2izYD8eJlwwWGBnC5Hhazx6', 'Alvin M. Tapia', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(237, '0238', '$2y$10$7wHFM4RZktJJ2WOQ3Nc07eR9CWrgpMArwSnUA6vCnNm9X59ebuIQ.', 'Emmalyn C. Guaves', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(238, '0239', '$2y$10$lN/VVL3W8Ix1O6ln6suXd./otjOaqezqX9aRIXBD/484q1NRDzG5a', 'Pilarita O. Cabrejas', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(239, '0240', '$2y$10$Bom/1ZjOnyUXjdY9rxdQGe/xKYWz66gnIZMW/NzLFpovqJKLhz.8i', 'Jesse O. Opeña Jr.', 'INSTRUCTOR II', 7, 0, '2020-08-26 07:54:01', 0),
(240, '0241', '$2y$10$CxO/YKqnE/eeFQkCC6pLMOlMkXu2nRi5LrIaIPpcSrLQToUat1/66', 'Maria Carla R. Mañago', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(241, '0242', '$2y$10$ybsKA5I2wFRf64fZYYxe3uwEF05dEdxmuqaexN6EfwHYudt1h8A96', 'Wilfredo B. Abanto', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(242, '0243', '$2y$10$6ZpqKDSTUeQv5q9jIF1F2eY3c.jpK34YNU8YETPaoj7ZFsWKwRbOu', 'Stephanie Grace C. Lanuza', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(243, '0244', '$2y$10$PTXa56AFjM5eDvm1n2IbWOTAZPR8.WI7xPFGWdqIF8fkWr.Bf1L1e', 'Mary Grace Baluca Bolos', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(244, '0245', '$2y$10$/KUdLYFQmUJIOi.OE3BNIO2la6Uvk28k/ftfiM/k2fXSZW6TNw99W', 'Rose Ann Dp. Aler', 'INSTRUCTOR I', 8, 0, '2020-08-26 07:54:01', 523),
(245, '0246', '$2y$10$PTzZBrqfsVbhwapHluKvCei5qTTeTxFS6sZ9NPSyVa.0n9Quvl7a2', 'Irish M. Orgeta', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(246, '0247', '$2y$10$pTGH.Oy3zPuCHseGdPY0n.zEyuC4scLcXgSnv4V9hnMJtTbGK/mwq', 'Sigfred V. Aler', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(247, '0248', '$2y$10$/9uwEIqs5AMeIgp/jKUKPePq/XJ.ItM/rAxXwJ/u./1ESiIJ6vtie', 'Bryan R. Arellano', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(248, '0249', '$2y$10$1VPlsN8GoE2sx7xIYyDaben82xG9jpdFiw9Dc4Qhk9fQmU7pA4x/2', 'Joan P. Rojas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(249, '0250', '$2y$10$8fe9j516WGmnUo2LWPrFCOZdNlh.j4t7AHAB3W8WijGmXEwjvYsZC', 'Adrian C. Guinto', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(250, '0251', '$2y$10$icnrJ4b4wZjOgG1rvaf1G.EINZViKHoxqQ3RtbT8R3kJ96eOZSbWy', 'Ryan Francis J. Macasinag', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(251, '0252', '$2y$10$1GtTmr3Zyg/.AnwV0ba0xO0USoX/Sdsq5Xo503ANl/bKKIowRdSK6', 'Kristel May. De Arao', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(252, '0253', '$2y$10$7IbXSHt2h/44Y6zm0hm3../ZhzHRd4CazznG2/LKJ6.ev4pkeuUsu', 'Jhon Paul M. Castillo', 'INSTRUCTOR I ', 7, 0, '2020-08-26 07:54:01', 0),
(253, '0254', '$2y$10$bXahLoRFLGzHl15dPuuoQejSz7Gy1urKo4PS5dCad/34ZDtp6M0mK', 'Pearly Beth C. Ogayon', 'INSTRUCTOR I', 7, 33, '2020-08-26 07:54:01', 0),
(254, '0255', '$2y$10$0KCpwkL9GRYNcdDQp7CO4.HWJJ/EXGAzD4Qkvwh75BMxo2INxTyU2', 'Roel V. Rafer', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(255, '0256', '$2y$10$KCWAq8aGHlZGUcXuXBi5v.hBwvKFDgNHxYGVzl7AkjoJ2UaYNiTnC', 'Bryan M. Torres', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(256, '0257', '$2y$10$sgnt1Uqtole0/t0MBlncoefZowRL6EjBymBGL0AU6.BijTP/QRNVK', 'Maria Theresa B. De Panes', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(257, '0258', '$2y$10$kUIlcJ8qHkMUlQeiUf2YM.FipGUXHHsaBo/dC8BgL4jbdm1U7wEIW', 'Melza R. Macayan', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(258, '0259', '$2y$10$9YCB42XZPpOtuqig0VjJLOBBU5c5iaC9VnGc/1./6pN3KxPIG/bMm', 'Analyn D. Ramos', 'INSTRUCTOR I', 8, 0, '2020-08-26 07:54:01', 523),
(259, '0260', '$2y$10$5ERc9kVr0hgHSPPOgo/NRuwYBhi5OwF95uIe4NB1gXCNnXKjzfC/6', 'Joselito A. Olalo', 'ASSISTANT PROFESSOR I', 7, 0, '2020-08-26 07:54:01', 0),
(260, '0261', '$2y$10$LGLAZ4SqS3n7ZT0YcKSrHun/4K7lQD2EXkeKL12vra2S44npTTZma', 'Kay Mariz D. Bendian', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(261, '0262', '$2y$10$q1LZBQekTRFDMPtFvZK.x.YE4T4oHWYpCvmAMMsKuvdxDbn8tjpq.', 'Hessa G. Azul', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(262, '0263', '$2y$10$GwkmHHgd9aRBA4H5ojbesODfF.rCXvDnPzJytk0aSri7kHEwzWcca', 'Ferdinand P. Francisco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(263, '0264', '$2y$10$eaMzf77egxZZ2vTagVNfYu0.434yWCjHsFmY2Do6j97CAfXvCMsVS', 'Japhia V. Medillo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(264, '0265', '$2y$10$6k2aeqdsX3ewQXmI/z9YSepyz1i5wUR7oNQ9JE8esvP6dL5mG/b1W', 'Nicole Anne G. Panotes', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(265, '0266', '$2y$10$c6fmXYo9f33M06qXVCg22e5rm665J0SdgOTQZkD9keVjdID36hax.', 'Clarisse Antoinette T. Duero', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(266, '0267', '$2y$10$otUFlW50lA.aoMTdSFi/n.jxSDagYzZqMLib9QHO1sQsDAXsejO0a', 'Edgar P. Aban', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(267, '0268', '$2y$10$oRcoLIqqlKS87gWzr/SybOjvz4ViDmycv1rxmvGx5rUPBddjtNQBy', 'Rohilyn E. Colenares', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(268, '0269', '$2y$10$yufu1yJjBj9J0.oL1F/jO.7XLFaJq676RWMXYCh0aYLu.5G.jbGc6', 'Jeselle T. Hernandez', 'INSTRUCTOR I', 7, 33, '2020-08-26 07:54:01', 0),
(269, '0270', '$2y$10$GQGh9vkcqSVu.RHLOe7wo.i7N6Bu/SLKJNqeSpVGWMg4laXa8EYZa', 'Richelle C. Vedad', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(270, '0271', '$2y$10$8dA5TLfaAhmyqPqQIvA4iu0MhbdbZtP48uVQWzrqVwVDLiLMTNawO', 'Sharine A. Gutierrez', 'INSTRUCTOR I', 7, 38, '2020-08-26 07:54:01', 0),
(271, '0272', '$2y$10$lTcnyDa1Bb4pKzGayGfSzujPEc2FKu8MR9lLX6E63Z7wb.IzXxN/.', 'Gelyn L Bongabong', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(272, '0273', '$2y$10$L09sqsxSGHzSt0tK0AXvK.G5EFTDl0UgCm8Xi49E5VwVemYddyHOK', 'Efren E.. Alim Jr.', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(273, '0274', '$2y$10$D3P/I/H1C3LkknUwXdmrxea57tFv3sIKdSF.tVGt69vkrNwlVwOAm', 'Michael Bryan Z. Rayos', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(274, '0275', '$2y$10$aq.ODvAvQ3moh7DQLrR94OQyTrncSbFI1sErcd5okJ1wK8zIESJMa', 'Ma. Kathrina M. Pobre', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(275, '0276', '$2y$10$Vw6e2haYVq4yqkWx3MRbg.vwewkdavu4ppvOVd5NR8u3Z7AUYUKW6', 'Edgar P. Malano', 'INSTRUCTOR I ', 7, 0, '2020-08-26 07:54:01', 0),
(276, '0277', '$2y$10$T969.EpN8iKi7LuTCxGQKOd1UqdJ0ERiIJyAtVubamxMzIF0C7vdq', 'Gehana D. Lamug', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(277, '0278', '$2y$10$7jlKHV3VwLagIe/n9jYmk.bjLXi4AnYNhB.NQigf2zhZiVpMwoKWa', 'Jesus B. Roncesvalles Jr.', 'INSTRUCTOR I', 4, 47, '2020-08-26 07:54:01', 523),
(278, '0279', '$2y$10$3HbhiJRhU3sp3Z4TbCyrRud1vwdI3Lis823a4JfJ0pxR5Pqs8TxAu', 'Mark Anthony Y. Manuguid', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(279, '0280', '$2y$10$BIxKNUIREFyTHAX.O8goAebk5JEoSpwjBarTFgim0GCqdr2tlkIZO', 'Rayniel D. Zabala', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(280, '0281', '$2y$10$0dMcOjOAMZy2djV3eIDRBOxlCKgMvQiFspBd9ygYbh6tTP.VbrAI.', 'Jeanny A. Nagrampa', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(281, '0282', '$2y$10$zKJVmD1HxNNNqUHVtx.i1uYNnnXTLyzHW2wxXhBl3Dxll6uawcLtC', 'Lemuel V. Aton', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(282, '0283', '$2y$10$DVyU0UmNr3z0Qly8zp7hTuVQH6cTonUGgJWkS806TIGl9oRPqHruK', 'Alin D. Quibral', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(283, '0284', '$2y$10$VbSFkjIMmA50jsmIfYJ1ZuDvhXdLHDMJUZJXTLmfQWw89KYo15EQe', 'Rhodaviv V. Avila', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(284, '0285', '$2y$10$36qfrlqWEC142FikT29YRODy0vi2CH3Se45Cg7zuy/ex42oShOpjm', 'Joseph E. Rubio', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(285, '0286', '$2y$10$1BvM79PKmVNqN5DEJA8iCOwIrz9oKCepgdytFM0dOa5VdYk9sUtHa', 'Aireen M. Babagay', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(286, '0287', '$2y$10$/ZN9uA2uOvMHv4fzvTfrVum6Pfxz9LKRv7Y3hOAmTOai9SoNkw8xq', 'Hazel Joy Q. Albao', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(287, '0288', '$2y$10$1BU5d2yQLEwJC.vWu.4VDeO2/RB8AbiWAfzeAwBEaYeerIrsbVi1K', 'Precious Princess T. Saba', 'INSTRUCTOR I', 7, 34, '2020-08-26 07:54:01', 0),
(288, '0289', '$2y$10$ZmP587XCLf.yzNBm3j/.DOGAJu84EfJUqfLrVZNTCh8fi.DjHTWRi', 'Jienneffer G. Tabanao', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(289, '0290', '$2y$10$gSS0Q.KDgch.OENxoZHjAeVjazvXDBKQYg6zTRnyvMafgGKWaKko6', 'Shallah Rica E. Mancenido', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(290, '0291', '$2y$10$N.aypnLTnI4N3UNNDFrZgOa9x.vuWeyB4UjC4Yyt.OF6hVkyndfVK', 'Excelsa M. Fernandez', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(291, '0292', '$2y$10$xFj4EnbSw4q96PCILQRW1u1vkSC4yxMziCQ4dbKUmHJuVi3SEQPlO', 'Francis V. Villacorta', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(292, '0293', '$2y$10$yo4f4mcsZjueXSNU.sQcBufjgyPAqHEH6J0u0TQhCTshuhMjh6mZa', 'Mary Jane T. Abestro', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(293, '0294', '$2y$10$i3F.3ExQlJTFuQ3SWri22urvs.RmvaLCoRAbEPF7uUnncnLzJNSYi', 'Ria P. Morales', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(294, '0295', '$2y$10$OUXubt7K1yw9z7LwschWi.j/IWY9GbBNgZ2h0.jxooQur.S1.RzQ2', 'Mark T. Bonaobra', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(295, '0296', '$2y$10$mRpVKH84zxLM8r3FodxNMOstKNj61S9UVQaDpDMThM4Wx7heTA5Pm', 'Leo Agustin P. Vela', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(296, '0297', '$2y$10$MCUPsfjQFOQ/POkJZIWLKOxTiJwdZV4ZhvkoiVnLZhdaZ3woVZukK', 'Agapito D. Borjal', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(297, '0298', '$2y$10$O2gY.QxKy6VgVa6Pgk/lzunpZLcN7o4XcaCAy4iRkyNQ.YcrEChHC', 'Honeycell D. Baldonasa', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(298, '0299', '$2y$10$f1p1xZBxIBCGdpmZzTc7aO1Li7OFmXZJQByWT24ybe8tzIGtCqQb6', 'Frederick B. Gaurino', 'INSTRUCTOR I', 8, 0, '2020-08-26 07:54:01', 523),
(299, '0300', '$2y$10$zVOOlL5DNqJ0wp2DO1oUluD5vNx/CGVs.bylbag1E44WVWgdzc6g6', 'Darwin C. Biag', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(300, '0301', '$2y$10$Mgb6WaLBP1JEUqf87o5yEeUtwLeRs/Ut6IGNmnBPiDmrMpbkOVDLq', 'Consuelo R. Saenz', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(301, '0302', '$2y$10$5qUdA3C9iAXXqdIS1DZ1t.o8/0Y9F4VUBwNfgbRGNv4j0PsZUxsWi', 'Ma. Angela Josefa G. Pioquinto', 'INSTRUCTOR I', 8, 0, '2020-08-26 07:54:01', 523),
(302, '0303', '$2y$10$P7wDDf7a6U9Nnqa77A9oweIDTSPdq97R4H9fr2v1Ij4LRsMQm.mRa', 'Joe Nelson Villamora Sarion', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(303, '0304', '$2y$10$UXRms4FACEtyCbgoPcVz.u2LoX/PKPCahvfgu5W1N7cqxzs20NNGy', 'Ruby Ruth Apple M. Abanto', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(304, '0305', '$2y$10$H1h72MaYoHjatA.rZhHvJO8tV1ie0hCeNmUam.3ZluPrvBjsCouIC', 'Ariel L. Balean', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(305, '0306', '$2y$10$3mX9C6mUJVeif1v6f9d4COXOcU4SxPjocg6zRIRiflNYjjyLuqQ/.', 'Mary Jane J. Ferrer', 'INSTRUCTOR I ', 7, 0, '2020-08-26 07:54:01', 0),
(306, '0307', '$2y$10$8OjMF6wqHnEdGAiI8SoGjOGFKBliSxWK1E.GOXMCeEm4qKvuA5Rf.', 'Nestor B. Badillos', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(307, '0308', '$2y$10$CcJE2kQTipHmw3CMBpAl6.AS3tt4E4ooBg.g6oAKlRoLnwCwQkqfq', 'Marianne Mae I. Jalgalado', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(308, '0309', '$2y$10$uzeQDpCsQ2yY7Dp6K.KjjOZqlg2aLDc1cdJOHaoUagyMJEy/P2TZ.', 'Rayvimart L. Mancenido', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(309, '0310', '$2y$10$Azg6g9z3lva.PUKpx.NwjO38yYEXjOqg.b8A/CLEf9j71VsuGVeFG', 'Junil G. Salmorin', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(310, '0311', '$2y$10$4iixN4Hj4UQDnuPifnpEW.o9ZBwabOzL/oxMNSqGe/xgs9/b0ZP0u', 'Regine C. Oco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(311, '0312', '$2y$10$nQc/Ays20A03AlqP2tqT.er5i9SFj1Ieks4v9NEW/UtfxBQ1tBCP6', 'Arrietta Mae O. Llegado', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(312, '0313', '$2y$10$bC1JlubIuKnH5tH/Q1NPt.17K0RJzltH2.Ee3iB21sZB/AlMb/b8i', 'Ma. Luisa B. Borigas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(313, '0314', '$2y$10$p0.6bS8mY7lS6uMFivyg1e63Nbrq/h6INODJVXN9IzYRWMSVk07v2', 'Jade G. Ocfemia', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(314, '0315', '$2y$10$76spgDGfCXb0YjwuFlzNOuXyi69qJfRMm5p4xDZxup/wD4xTOmlrq', 'Daryl Vincent P. Petas', 'INSTRUCTOR I', 7, 47, '2020-08-26 07:54:01', 523),
(315, '0316', '$2y$10$uuKHLWFKMbqQtERHJpHseOCPDvHq/aK9vk0c3C8m8RUhzApO6S9Fa', 'David Jeffrey V. Guardailao', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(316, '0317', '$2y$10$un9uxhdAJ0xeNWZ4AQSKN.BACW72M6hjylrfSKletrEk5DyAAhOD6', 'Karen Joyce A. Mariano', 'INSTRUCTOR I', 7, 38, '2020-08-26 07:54:01', 0),
(317, '0318', '$2y$10$8TKqQheXaidEz5Mv5Va2Keb9vXOKnpne.t6/LH7x8v5DoOCakY7uK', 'Arlene A. Nicart', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(318, '0319', '$2y$10$n.TFKXa4FX5yFJ35651HrebSuVzAYGkWt2eDcW7eTE.dp1elL4ofm', 'Ricalyn E. Sumpay', 'INSTRUCTOR I', 7, 36, '2020-08-26 07:54:01', 0),
(319, '0320', '$2y$10$SQzoWuKDutD9W8fJDd/lQeWLE2x8XR4aivNOGS/ASLfBA13RChdwe', 'Marla V. Relloso', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(320, '0321', '$2y$10$W5qCvEJR67oquQDLkBWf3OUY3TEuzJ9UID5yIM2VSKLgMrR3sA2Hu', 'Jennelyn S. Vargas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(321, '0322', '$2y$10$lijggQ30.vgCaX8Bh/NDh.hL6QxqR1GoxJCvSlqRohJSpYQxylNxS', 'Ronald J. Escasinas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(322, '0323', '$2y$10$SCVU3fJivvqZuvHo5GDeqexuESoelhFLCQrlZLnyalDzOuiwDw62O', 'Raymond Q. ZARATAR', 'INSTRUCTOR I / MIS HEAD', 7, 10, '2020-08-26 07:54:01', 523),
(323, '0324', '$2y$10$WdWAni/8N3n3xLy8ksdxve.cbIFfAhJjKBNEI54eU.3BV/trZUmZ6', 'Norlen Jay T. Azul', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(324, '0325', '$2y$10$09zAFyGJR1fe/5lgaeHzsu5V1p9QaxvfndEe./4cM.ul7GTHugLoS', 'Peter Clyde B. Lamadrid', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0);
INSERT INTO `tblaccount` (`accountID`, `accountUsername`, `accountPassword`, `accountName`, `accountPosition`, `levelID`, `officeID`, `DateCreated`, `no`) VALUES
(325, '0326', '$2y$10$jppogvR9bBmzvP6POT2UVuTCOKumffNBqPzmp84WYWknW0IDzJ9mK', 'Jifferey E. Velasco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(326, '0327', '$2y$10$R5MqjpRNyq6hsC6iBPC0dej.lYYeGic.1IVrtSnRZznGareYA8EW2', 'Julio B. Cas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(327, '0328', '$2y$10$6SBEYQ1zS40yiCrNHFQAyejIZ1aceFESs2UmKPQkTYbFydUucwA5i', 'Analyn B. Asis', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(328, '0329', '$2y$10$azRG6gVkVbIA.1UlL4US9.9gB7C4WVp6vhMZwaE.xSdJnak5LgMW6', 'Marvin G. Bequillo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(329, '0330', '$2y$10$rie3tV4U9Etf3Q3pN.pAHODmwdX/QuBjAVuZJHj5bEaU1pglIJtPW', 'Arden Peejay L. Ezaki', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(330, '0331', '$2y$10$uW3WXQeJ0dqL0NwOHKvdMuyRAVB6YyspJUVU0nxT1C5lajnR9Pl.K', 'Noli M. Esperas Jr.', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(331, '0332', '$2y$10$E0JtnFoeDINRTQgyXbLuAe1HOkKOalabDwPTNplAvPmpyF88Tj.kW', 'Ginalyn R. Sabroso', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(332, '0333', '$2y$10$ZO6FMx8PjQVN28.KUCzJm.YEN0nSuRpG7MsPVSNCCSIbeNcytuMUC', 'John Lester B. Sinangote', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(333, '0334', '$2y$10$n.29HRYaPCxtN22rTSexh.QPw7DTZt6bMEzLuoI7Eqs6rURWPKEoO', 'Roderick P. De Leon', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(334, '0335', '$2y$10$0SsdLiqKkqDLXwRwZ4ABX.vEYBm3mu6IfrzGi.ncHxdZSPDeQaTou', 'Judelin S. Alvarez', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(335, '0336', '$2y$10$im2zVOljeKGr4aRZCZWXxuvzApXr.iy1V9vrELHbZJ0IltRXv70oW', 'Luis S. Bardon', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(336, '0337', '$2y$10$NdwGC3KOa89qwVzBwhuhZu8eG1bRvu5ZeVZKrkCW2qXL17G3vAT.i', 'Regine S. Balmaceda', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(337, '0338', '$2y$10$RtUpwUbFrh2gVIT5LOoUbems2hzWVGnoKC4JP8LJ2hgltWZDc8WRO', 'Ryan S. Rodriguez', 'INSTRUCTOR III', 7, 0, '2020-08-26 07:54:01', 0),
(338, '0339', '$2y$10$YKTXrenl8aP813izs39LBuzx.UI3s4O37f4BJVyYtyARXfDqwmHFy', 'James Robert R. Vaughan', 'INSTRUCTOR I', 4, 33, '2020-08-26 07:54:01', 523),
(339, '0340', '$2y$10$T63VHMvOqaIgjQhhjp9iauUFi8GED1/a5ObQQUkGqt3Vv76115eHG', 'Shiela Marie O. Diezmo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(340, '0341', '$2y$10$blo/dHuWhLywacf8.nWbkOlBagYAov.D0OnTPXn8yVj2xWmT4L55e', 'Noel C. Alegre', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(341, '0342', '$2y$10$CN.wfAj/UjbN1InhyLa7K.Ch95Hkjpa8GRbqxx4kWIZj9hPlxKkeu', 'Mary Nor U. Rada', 'INSTRUCTOR I ', 7, 0, '2020-08-26 07:54:01', 0),
(342, '0343', '$2y$10$K6kVdlBbK3QnNrpuux4RM.omBSLKNDWZ3BAXCqtc0Udl0D0bKyFWC', 'Jessa B. Cano', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(343, '0344', '$2y$10$MYTW9HFwFQ7Xc2El3.4yfuxcFmjDN0WgHu3hhq53sXepGPhXj.3Ie', 'Floradelle A. Vega', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(344, '0345', '$2y$10$BGc4omBj8mRpjp4yO7ORKOpra9xWosqnwzyVaW8P1IOjhMq6k7JTa', 'Robert Clarence B. Lee', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(345, '0346', '$2y$10$AgwfDotdItT2jT0WhJ8tYOe6QoZ/bj8zNDrtWchNYkDfyn.24KNNK', 'Mary Grace B. Imperial', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(346, '0347', '$2y$10$Ddo.DruP/bTE8dqfh6/b/.3JmXErZS33aht134U7Q2GP3ynCkL9pa', 'Edralin R. Raro', 'INSTRUCTOR I', 7, 46, '2020-08-26 07:54:01', 523),
(347, '0348', '$2y$10$kEoO9QS2.5hzR1Ck980pBOnTwQomlnBiSmXxyCEvN5xYvc48HW6QW', 'Maria Senen D. Bongulto', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(348, '0349', '$2y$10$IYVG9F7Kl4n9cbl3E5.zj.vCLSxPddNPejULN8pk/e5wUpUzZfO96', 'Mylene N. Elizario', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(349, '0350', '$2y$10$MuMzfkM/HQynE5vJV8lWreD1sZyYiEu373JUqy6qneEiH5HH0guXa', 'Ponciano J. Puse Jr.', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(350, '0351', '$2y$10$tpWDOzmvXvdJilIg4fNdzeatGWxkdHVFXLN9Jw4xN2kYLkx4PW.gu', 'Sharlyn Rica P. Nolasco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(351, '0352', '$2y$10$pPE8kzSt1eeLJSemds0hP.AOsS4to4aI02wCXyOQIkVG9V1Y//n.q', 'Sherwin R. Reyes', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(352, '0353', '$2y$10$gMRVBxmg2s0eNyy6upcNSujvTi8Pj686AvqGdlwpdHdICMX.yExje', 'Malyn B. Manalo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(353, '0354', '$2y$10$fpOOrN2VEZd.kM5ERm/LUufofffZTkBu.MO4VAfvrbLSqSp6oYQbq', 'Arvin B. Taruma', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(354, '0355', '$2y$10$FnP0s.h/GKFMOpKIdvICK.L2SY2t8EOWN96pEWpCUnQU6EL4RLTMO', 'Thinez B. Bobis', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(355, '0356', '$2y$10$6PvVxiF5MAWf4HQpUxOwQuBXYtqOgr9qLiiZpMpiEwuVsTHLAFbx2', 'Manuel P. David', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(356, '0357', '$2y$10$ZJu91xat.Ej184FXHiENtuyRffVbqYx582Ao9hateGvSOKfH7iSCu', 'Leo Greg D. Villasanta', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(357, '0358', '$2y$10$GkTQSNycG4AiKPKK.whpUOYqrJRpTZkJKL8WvhCdv3y9U255Xexji', 'Jogee Vern Katherine S. Bacerdo', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(358, '0359', '$2y$10$2NGa1kuVLQAnC3mRK1yQauPi7HIlU2WNi59fAavwi/7pZRF..bwPi', 'Raul P. Batistis', 'CANTEEN COOK', 7, 0, '2020-08-26 07:54:01', 0),
(359, '0360', '$2y$10$RMruN2FNV3UWklUUe8HNDegqcex/18ADaFWoHfD3MlZLqsvH8ihfS', 'Emyruth B. Chavez', 'ADMINISTRATIVE AIDE VI', 7, 24, '2020-08-26 07:54:01', 0),
(360, '0361', '$2y$10$cD4kUZkYK9bRIkV1sjxu1OC5sGrKzdxI8IKGq/0ZFWub8GOgPbnRy', 'Glenda P. Dipasupil', 'ADMINISTRATIVE AIDE III', 7, 0, '2020-08-26 07:54:01', 0),
(361, '0362', '$2y$10$eOt5Wxn4VhuSnCnzQKCF8OVZEBgL7e2EJ7jf0tdkYZPpVkcBYuHgi', 'Julie Fe S. Laborte', 'ADMINISTRATIVE AIDE III', 3, 27, '2020-08-26 07:54:01', 523),
(362, '0363', '$2y$10$MS2WCtI4UQrmgrCXco/fsOQx698m8AoUrmSAUhRuXROi.lEYYG7AW', 'Merly J. Torquator', 'DORMITORY ATTENDANT', 7, 0, '2020-08-26 07:54:01', 0),
(363, '0365', '$2y$10$GkQXS57CGRlPkvFrWD90CeFH4ohEPSpMtADhojf0eFhdivdiXi4/q', 'Sheila Jed E. Mojal', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(364, '0366', '$2y$10$aUe.ol6VZPax4Lm8vMMp/OtWcFbpoB4aJEf5AIty8TNq.rybXJJdy', 'Froilan P. Balmaceda', 'BAND MASTER', 7, 0, '2020-08-26 07:54:01', 0),
(365, '0367', '$2y$10$72gEE/Zi.QZ6gPbqx6Ya/.5CBlihGP503enmIf5wLhLfbJ68TX4oO', 'Jeffrey O. Narvasa', 'UTILITY WORKER', 7, 0, '2020-08-26 07:54:01', 0),
(366, '0368', '$2y$10$bJjfaAW0WrVD4dEk8vQkY.4pCc1QQe6evk6aOnTS3qizNxCNURto2', 'May Ann A. Rodriguez', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(367, '0369', '$2y$10$cHM/gGXxOX.vfQvN8oeuNuXINLpK2j0f3zdiyEJLQuDXSEpuCAnK.', 'Arjie B. De Vera', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(368, '0370', '$2y$10$TPYTusoDFhq2U1U1wCtyJ.AJ6xrBFGWejT7Q0QFssrE1s/weW.v0u', 'Emylou L. Madrid', 'CLERK ', 7, 0, '2020-08-26 07:54:01', 0),
(369, '0371', '$2y$10$82HbG1wh5q2HMmZtMOc.Wu/2gh4Cff/n5nAy8hK7R.cyxWiyhaCbC', 'Rez C. Sanchez', 'UTILITY WORKER', 7, 0, '2020-08-26 07:54:01', 0),
(370, '0372', '$2y$10$EaVHKwzOiDVUSaYQRGCq5ODEET1mJkpdF9hNvX5VNCvNiVUPI0Q.W', 'Ruth A. Racca', 'ENGINEER I', 7, 0, '2020-08-26 07:54:01', 0),
(371, '0373', '$2y$10$XpdoNj1/QExOExFkEhGOne74s8Ey61EA/LIaasyXJ1mx1YjrPdI4.', 'Joanne M. Orendain', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(372, '0374', '$2y$10$y8UpDOhzqye6.Qt9ggbwE.Ifq1/lsPxf2AB48TyTpvmapy/cOGAk2', 'Analyn A. Lagumen', 'CANTEEN CREW', 7, 0, '2020-08-26 07:54:01', 0),
(373, '0375', '$2y$10$Nd7gOaNKF4gbFebh5l3waegOxcjKGhpyIbTRaETgm9wETAblKKLDm', 'Evelyn M. Recafrente', 'CANTEEN CREW', 7, 0, '2020-08-26 07:54:01', 0),
(374, '0376', '$2y$10$l/N.a.E5ObZsRVbPnAfbKutpV.ifAd3m3I0Jew8E7npZWLv23LAvK', 'Mark Joseph D. Mapada', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(375, '0377', '$2y$10$pL3QLJRX.lTtvFx5VKSFA.tATUTsh8U1e9n3zBWnaqX5bJvMYSvrq', 'Perlita Barce', '', 7, 0, '2020-08-26 07:54:01', 0),
(376, '0378', '$2y$10$lUMnZhj7u98oefAbvwDMB.XWOIqcBbtPdIBwFmQl0/pRbwA/BtejS', 'Nova Vera C. Morales', '', 7, 0, '2020-08-26 07:54:01', 0),
(377, '0379', '$2y$10$88HeV9bWjy3Dc14Hlw/zYOLsv0AySDmSlx6EsUmB6FQv6Qthbii2W', 'Hazel Zyra B. Elep', 'CLERK', 7, 13, '2020-08-26 07:54:01', 0),
(378, '0380', '$2y$10$Ub9vqrWOX0nD1u/w3a3eieWq73wV01fhmyaaAFBQ7UXueYD.ZOJES', 'Michelle N. Laborte', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(379, '0381', '$2y$10$i1K8r8yVdgbkVYGMGgnJ9uZUQxUeCKZn39als9c4n1mVHj87t0QhS', 'Alfie S. Bares', 'CLERK', 4, 44, '2020-08-26 07:54:01', 523),
(380, '0382', '$2y$10$GtBvSwhqEBqqJwzILq87LOavU8zOaiEYi3c/LuV5AOL2AjWt5Oysa', 'Pilar Mae C. Villaluz', 'WEB DEVELOPER', 7, 0, '2020-08-26 07:54:01', 0),
(381, '0383', '$2y$10$hw7LcOBWTr1EJ.aNjKMJn.AM1QhJbt6avh1Y5A.3U3WU88qPtTEE6', 'Princess Jane S. Laborte', 'TECHNICAL CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(382, '0384', '$2y$10$1cCuZXdsIjeqfTkumHdLm.Eg8GO1BbZCKOEVfWmij83Afzzn5pgFK', 'Loina Mae W. Salamero', 'BOOKKEEPER ', 7, 0, '2020-08-26 07:54:01', 0),
(383, '0385', '$2y$10$g3uqYYhT11qA9PjBPeIXzerZywREP0OiP6uM5LNP4cMH2Mv40wg7q', 'Rochelle H. Mercado', '', 4, 45, '2020-08-26 07:54:01', 523),
(384, '0386', '$2y$10$WsG0GixET..NwvfwvSZyre5a6.wviaQmcQwfv6u6UWW/kJPLL82ca', 'Jocelyn Pempolyo', 'UTILITY WORKER', 7, 0, '2020-08-26 07:54:01', 0),
(385, '0387', '$2y$10$o1bQs6rlefZ2C6jXc4nsZe3Yqpeb5q6/Z.RS0GL4Z1Pq83kyyeFR.', 'Hazel C. Balane', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(386, '0388', '$2y$10$38BsHnQhQPu0J4xHEINwKOH3WZJcoP6gA2Ah6DPmgPAyRqL60/6aG', 'Jeric S. Bobis', '', 7, 0, '2020-08-26 07:54:01', 0),
(387, '0389', '$2y$10$RrQGPrwSeLuZ6AYR4QGAu.tC/vBUtAuo4KxZijtB9di6ZtVh5JzBq', 'Rommel E. Edoria', 'PRINTING PRESS ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(388, '0390', '$2y$10$eXuP.hkBqW.Ym93ri4Ad.OTy6lE0VnJ170FEh6sWZScMCf06Gv/xu', 'Mark Carlo Barilla Evia', 'HATCHERY TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(389, '0391', '$2y$10$GYsKigJbmSs.sDBVd1HNB.ZBrwH0SYcYYDHukj/fGWFjUivDlw.ge', 'Mariane M. Yanto', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(390, '0392', '$2y$10$MFnHuB6MgG85BUzUB2j/reqx.QuuL0vl.yh96P7.HitlQvVJvjIpW', 'Sarah Karen C. Barcena', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(391, '0393', '$2y$10$3ykNdpx9SUjRvcyzZKrlDOm5Wd52bW.onBFYDGKXK0qhfrvpkcha2', 'Jonnel E. Ferrer', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(392, '0394', '$2y$10$jlhmGki1wfzg3rJ63cykGewJL7DdyFpU0vNvJ/Bqae5zWyHmfHEVC', 'Julius S. Laborte', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(393, '0395', '$2y$10$7TSU5/mTOPX.2HAqG6P7uO2DSA4fkOpzWLk9UQTfnOrij/Y4ljV5G', 'Francia C. Ibas', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(394, '0396', '$2y$10$gyB7cynmZPXolAaWHfK2yOtncpX794Wipu5Kbrurg4RVj4YywjE3.', 'Leandro M. Israel', 'UTILITY WORKER', 7, 0, '2020-08-26 07:54:01', 0),
(395, '0397', '$2y$10$IDz0qS4tX8nZugW3IpJjxemI9Lfi5hAxhuVw0KvReYm2dGFs/Wbz.', 'Ian R. Sta. Maria', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(396, '0398', '$2y$10$yLAES4PIufzzWFUp6bzeCO.rF02EpVaHfnJXk93bVmDN7Q1TseJG.', 'Joy A. Namoca', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(397, '0399', '$2y$10$bZIqkEQovkgoZj.pmSADEuSu0rNwXOvxEJt94ZeG2B2jlYJo6nnoC', 'Leo Ayrald Z Parale', 'LABORATORY TECHNICIAN ', 4, 36, '2020-08-26 07:54:01', 523),
(398, '0400', '$2y$10$aakq1KRCyMxzbEpJNpGJ2.9FCWSRSgs0N9B2N/MTLcLmcPCyXWN/y', 'Bernadette I. Sta. Catalina', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(399, '0401', '$2y$10$jRD./t17WZ4FXjqG/mOiQ.N.35Ms86rDHox5MGzn/fnzvBIBXrsnq', 'Erika J. Herico', 'BOOKKEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(400, '0402', '$2y$10$tuwKk.NCkAZf8UNu9FoqAe1UqVyNT2XeeWuEAn1lAGsPUVwTWWRhm', 'Maynard S. Supsup', 'SYSTEM SOFTWARE ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(401, '0403', '$2y$10$aOUJVi8QPvj3RIuuiwtx1uAlw4egLM3BjyRhoZlwAf5cumtXvSr1W', 'Lucy O. Elep Jr.', 'CLERK I ', 7, 0, '2020-08-26 07:54:01', 0),
(402, '0404', '$2y$10$H6exrpRXKA.VBylpIXYHBe7EB4ncHGWHRNNu/WfSI7dp8WfczPd0W', 'Jerrick S. Rosento', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(403, '0405', '$2y$10$SsK4SRYOixb2pxZUb54bNOYi9Yob3RHSonFXFU2WKvnr7hm4LWMoa', 'Ronelyn D. Fajardo', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(404, '0406', '$2y$10$cNhA9KbyBhbpcfdRSmnybeivHdDIXHuIFMablVgl43Q2vFsa4nwf2', 'Daniel A. Sena', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(405, '0407', '$2y$10$tKObT8Fvze.xec8xruoNXOYbe3wieMzESn71/bzhHOWXJtmbARDri', 'Larah D. Peñaflor', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(406, '0408', '$2y$10$IDyQrP6UiQWY0YgVF01omuq5lynUIa4gCWgXTDGKFtRyzWYEwqZKG', 'Monica E. Badaguas', 'ARCHITECT I', 7, 0, '2020-08-26 07:54:01', 0),
(407, '0409', '$2y$10$E8Zavpaap5stwsm01YcX9e9tz7MrLa4TW3fRMykhd9ZCCsD/DKOzK', 'Ela M. Bernardo', 'ARCHITECT I', 7, 0, '2020-08-26 07:54:01', 0),
(408, '0410', '$2y$10$agBBQC96l1U/7T8s89o8b.f21irMlZwgAhzi3WLC2HBwS7QCwzOh6', 'Karen Mae A. Abanes', 'BOOK KEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(409, '0411', '$2y$10$cB7XAT415/eZS7A0N0BIXOiTXsNYx33zBU/KBPuApV2/PeSLEfqAm', 'Ariel A. Anoñuevo', '', 7, 0, '2020-08-26 07:54:01', 0),
(410, '0412', '$2y$10$aMr1VmYygZ8w0B4Uo6vONeM.55rH1.mCDkWurWqW88m.ZSB7ceS.S', 'Rolly A. Balbaira', 'PROJECT ASSISTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(411, '0413', '$2y$10$4oGH/r1FilF.NtFfmAvnJufSalJdrBV.mRZQmol3S5KaEVwk8y42G', 'Manolo G. Griño', '', 7, 0, '2020-08-26 07:54:01', 0),
(412, '0414', '$2y$10$FLFTsi0UihisVqCLguMBke5EJgh365RldAQ.PaxkKWiTLLxTANi6.', 'Kathleen Mae M. Idnani', 'RESEARCH ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(413, '0415', '$2y$10$BJwxZPeBktbhV2H/DKX7z.GdyoAg2fpCgtKMNhzXdZ7yTIUEjAcg6', 'Ley Ann B. Mira', '', 7, 0, '2020-08-26 07:54:01', 0),
(414, '0416', '$2y$10$yXZEHopwr7.gGi4LOBezbe3mNuDci7xSqMlQd0clj2/VTDTKmREFe', 'Christine O. Napoles', 'RESEARCH ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(415, '0417', '$2y$10$qCPVA3gaQNGDSENl1rvPdO/zUFr9YKhgEHSaXWXB9x7vk7Wi8ETyO', 'Liezel Ann A. Sarical', 'PROJECT ASSISTANT I', 7, 0, '2020-08-26 07:54:01', 0),
(416, '0418', '$2y$10$D.81c1cnnpuE/N3k.5PrPeant1Vxh11Eb3xmJlSoVW1q5WKJzP8Qi', 'Riezalyn B. Taruma', 'SCIENCE RESEARCH ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(417, '0419', '$2y$10$boQhl9nGFp.zNH.xPpZzjen6Mq8VJ2oCYtuzmCVGKMghmTinGkEGS', 'Robert C. Robles', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(418, '0420', '$2y$10$FLmZ/1xqlUtxgDlvBLH1auTtcQ6L57oGTJcfo55sZX/aRmoBlPkXi', 'Danilo C. Nipas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(419, '0421', '$2y$10$QfCxLk9yOmp0Qh0B68qhju0BsjRETZ5Jevt7whSkuvwNqkKagyjcS', 'Jim Ryan V. Asutilla', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(420, '0422', '$2y$10$X5sqRmNY3UFBQDCn8y/x0OM2pH6E/BRDYVFudzZ.bv5U/31z/4C/y', 'Ian Brando M. Equipado', 'INSTRUCTOR I', 7, 33, '2020-08-26 07:54:01', 523),
(421, '0423', '$2y$10$46EW47peRIKZ7SMwur7VL.b4s3gG5B1.RMzg3lxOE522h67gRwqYG', 'Russel John M. Belarma', 'COMPUTER TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(422, '0424', '$2y$10$8BUs3B6IvaGLdZly7niwdOM40E5HOFeRQgwOXD1LUV2Ed2djZKJzm', 'Jessica F. Gonzales', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(423, '0425', '$2y$10$rhV28dE/NTYUBxq6oQLTV.ki899JGT/S0pcPWxBKaMpkJPwAMzaMa', 'Crisanto S. Ramirez', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(424, '0426', '$2y$10$d2P3sgccma0gOZezdWQ3t.FAN.BvTG.11GON.4qNAKNyPN5a3zOue', 'Angelika A. Olboc', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(425, '0427', '$2y$10$o8mayg7ziWxteLkMwqQbMeAO.qNgd8ulw781Zt9YA2jqaloRa.uJG', 'Rochelle A. Abay', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(426, '0428', '$2y$10$UtnPX8yY35fC74Zm/Hj31.VrqdiTuFV70TkF1SemVRQT3u9nmG1pe', 'Earl D. Pioquinto', 'INSTRUCTOR I', 7, 10, '2020-08-26 07:54:01', 0),
(427, '0429', '$2y$10$CR80m4EirCNW2HeU5Btfd.lkOKiasC8izawWUScC77G58/IOpaGBK', 'Jastine G. Orbillo', 'CLERK', 7, 16, '2020-08-26 07:54:01', 0),
(428, '0430', '$2y$10$kUD.wOojTiiTG5yTJ.WQOujvcsAp7ewndE.ZIk1EvBWCCm70FVd/i', 'John Dominick A. Limon', 'MAJORETTE TRAINER', 7, 0, '2020-08-26 07:54:01', 0),
(429, '0431', '$2y$10$/p5JttnJRfXbnEraq6SK0eDnmubr/UxgBU.B2d0zB4RwcZd5Ucaee', 'Edison M. Visitacion', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(430, '0432', '$2y$10$bTsk3C0Kg7SyzPq88TWwxuzWBJUJq58k0WIzkOGwSxYMeql/PPe9G', 'Kathy Joy A. Posada', 'INTERNAL CONTROL ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(431, '0433', '$2y$10$p4JpqySHh8B3xKz.9j0Eh.4xihbbmF/1.pag3gbftmVKJKPP5q2Cy', 'Doreen C. Alberto', 'BOOKKEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(432, '0434', '$2y$10$r6OHlErc6u2U58VkhmEt1eywGgkL.FQNrBwrUPcyutCUBnw8Jw2Yu', 'Monaliza R. Pertes', '', 7, 0, '2020-08-26 07:54:01', 0),
(433, '0435', '$2y$10$JtcomdwSYDlkeGB02wHOyO1HV1siWQefsBzqKPrx58rDisvubBGDK', 'Marjorie A. Vega', 'BOOKEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(434, '0436', '$2y$10$/fpJluwJt7MGQZBKpL.XKeO0pkOmSbR86FsY8Cphz1g90skpvK5ze', 'Krissel Joy M. Loreno', 'TECHNICAL CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(435, '0438', '$2y$10$H.XeS0Elyl22QCVvea54pOLFvDree3l8mBKgoxkg0yK3qSWjTgexO', 'Mailyn Q. Alarcon', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(436, '0439', '$2y$10$P61prfX/DuXeUSZ/JnsbqOjmdHXNjN21cI.9tHb.GG2STmhQ5qagC', 'Faye Madeleine U. Carranza', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(437, '0440', '$2y$10$QL5YWj66VGeHoUOXtXwCgeddFqPUVkS0fg1kWFnshsTquI4WSMls.', 'Sherilyn C. Acunin', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(438, '0442', '$2y$10$CVFZLi6AtyhRSeuX8hxQp.JWEU.oFf5yrwz.cN6ZTIZRC9HUg6YHK', 'Marc Lester Acunin', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(439, '0443', '$2y$10$DeaVA6mHb6nrWLFtqY89dOP63loJjAZwS1N8/0pizQXjKEcWRSLxe', 'Kathileen S. Tindoy', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(440, '0444', '$2y$10$GqBOhlY5EZd5HUmyZ4wLH.UrQk935x/YbKqulJdWsPoYy1lDftFVa', 'Ma. Reina A. Mabeza', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(441, '0445', '$2y$10$tU76VI7QhHvW0VZPSarhqOnLik/Ag/5yNqJ9oxNGWmHB6bUazpHFG', 'Ma. Venus D. De La Paz', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(442, '0446', '$2y$10$wuXmPSFGc2m1Ktab33fOHujlj4CDHZI3bOP9yhSuH3mCOx2THPAji', 'April D. Ocampo', 'NURSE III', 7, 0, '2020-08-26 07:54:01', 0),
(443, '0447', '$2y$10$gnXtil2ouoq0ZkcO4q985uPHmBCag1NMh.O0QlydV0dOHZvTLsOWO', 'Jerome V. Aler', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(444, '0448', '$2y$10$kt6u20OPrgi0WXl68GkCNeAaINjy1vE25gDglBNDAByRppEBrfct.', 'May-ann B. Maceda', 'COLLEGE LIBRARIAN I', 7, 0, '2020-08-26 07:54:01', 0),
(445, '0449', '$2y$10$GetO5UqaPGokDApj2hLrhe4mOnIsREYstlag8Gyi3A95Ox6FKPZ3i', 'Glo Ann P. De Leon', 'NURSE III', 7, 0, '2020-08-26 07:54:01', 0),
(446, '0450', '$2y$10$lUvCns3nyztipuaKtdmCUO0K9Tl4aytfq8c1y17mUqljC46m30x.y', 'Irene D. Malaya', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(447, '0451', '$2y$10$Vx9lAHRNVzqIWz4Q3UtrC.pZ13./don2hMtGwPA3eLKLO2H7DJ9vK', 'Richard Andre B. Francisco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(448, '0452', '$2y$10$oRH/qP6GTBAji57Eb0U09.xcJZj3tb.jmwQWn9bX4wcVwtJlVV2Bu', 'Ginalyn O. Dimaiwat', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(449, '0453', '$2y$10$fWqZcqJ5MO2X/aoBYcnurOsYPkcYGDxJOq0WvOr70er.J6wJrLvBW', 'Jansen C. Cuadro', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(450, '0454', '$2y$10$/qOSTqfyW4IOeY7yMc6hVefGksOAJ2OMoYT.wye8nayGMyPBNhwJO', 'Michelle D. Pineda', 'TECHNICAL STAFF', 7, 0, '2020-08-26 07:54:01', 0),
(451, '0455', '$2y$10$S8u/zjlDPhrk.nws.1ilbOUrE0hDVl4LFmbV5MgsGiiuRy4qjmpVe', 'Jesus Mark C. Nape', 'RESEARCH ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(452, '0456', '$2y$10$hSBwbUul4s.NCZQ5ZHVs9.SI.VNp/p2aVVDmuTkMaZaMwEHnEPK5q', 'Romely Ruth Q. Pajares', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(453, '0457', '$2y$10$xumfYZBZAGxvro5rFWt3KOAetXFkglhWFW1T2dj5WP1JCz1EcwYVi', 'Louiebelle A. Vargas', 'ARCHITECT', 7, 0, '2020-08-26 07:54:01', 0),
(454, '0458', '$2y$10$PKoeGjTeYyq2O..xc32cFeZ5A2jU7nZQFMy.7MKZml464BBshMARW', 'Gisselle V. Del Barrio', 'ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(455, '0459', '$2y$10$xjoJFXRyG7w9b2vzOfYkuu2W3DRuAd/TWsPF1p3yWJOAkGUsgj2bO', 'Jasmin T. Arabe', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(456, '0460', '$2y$10$imTVEgT6lJF3qDERw6UfZuqrzCJkeWzi7L/Ogl4EUQ8.nB9OCAbDy', 'Zyra D. Chang', 'CLERK', 4, 38, '2020-08-26 07:54:01', 523),
(457, '0461', '$2y$10$RDhsjyDvHp4eltuzUD6XYuPvOVbC16a/4sgDh91dJPlBR92TvXCPe', 'Rica D. Macatangay', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(458, '0462', '$2y$10$XTk8ibINbFk364HHMBS7B.X68y5Smu0KgukOn0.8GYJ5BvrkZre1e', 'Rondelle A. Lagumen', 'COMPUTER PROGRAMMER', 7, 0, '2020-08-26 07:54:01', 0),
(459, '0463', '$2y$10$k2DexQWnoGwZfO0yVMAEAufjKTZlMgrKtEfBCyezX4PZco1twbsZO', 'Meljohn A. Latiza', 'ELECTRICAL ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(460, '0464', '$2y$10$rsP/2WQ/QjrCScNb5EQuhuwkCLo0VS/sNA3NG1Ax7MrMoJnUnSWu2', 'Gemarlyn L. Balada', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(461, '0465', '$2y$10$sPtL50FXbvnmGeZouA4VQ.etD19CC/DNKeWsm8cFPOfjQn.HxoUWG', 'Maria Agnes N. Auxilio', 'ADMINISTRATIVE AIDE III', 3, 27, '2020-08-26 07:54:01', 523),
(462, '0466', '$2y$10$NAKD1bLGxWWDzpLdIuveNObJUiaUHoSsUVcyEV80TKEHSFal2/9bq', 'Jesus P. Santillan', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(463, '0467', '$2y$10$IdztWhmnnvn5Ppw.xSWn9.Je5bhiIvXbFjrr2V.Hu7neLwZSIB4IG', 'Julius Fernan A. Vega', 'CIVIL ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(464, '0468', '$2y$10$4cqqC6f4pBpTG7XV6oCgteNIzAiN7j78Iq0huPI2jOOASqZUqr/CC', 'Rodulfo C. Ogario, Jr.', 'CANTEEN CREW', 7, 0, '2020-08-26 07:54:01', 0),
(465, '0469', '$2y$10$a.ADfQ6gLhFou2NF4HwJUuPTx606Dw65Wsbo7Nr2RwGVR1GoUhhD6', 'Xierl Red Lynda M. Crescini', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(466, '0470', '$2y$10$ZP7EKcjztB/JeesTX/7PiOLRolEGgsg7HmfEFkPD/fQ1o7CY.2IG2', 'Mon Joseph M. Iglesia', 'COMPUTER TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(467, '0471', '$2y$10$2WRpE5ttZYNGbooList5TOQ7U2Tm17iypjM8zrCjf1LVx9MBM3xL2', 'Paulo C. Payumo', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(468, '0472', '$2y$10$86HN6KwqZBdeor78CRCrnexxvJ.E01.WpUFI4nuEYBiTPiA3e.Ubq', 'Irene B. Pacheco', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(469, '0473', '$2y$10$2BXn.Q9PYKJZWP/nQGKgQ.flgLDJZU5UXP0R5EnNFSk6OPKMKVQ2C', 'Jenny Rose G. Ramos', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(470, '0474', '$2y$10$QvC3WyPHohG445z/8bq1wOSlJ4nI9w7ruaohDz/nuRHg5Nu/H.482', 'Johnna M. Ferrer', 'BOOKKEEPER', 7, 0, '2020-08-26 07:54:01', 0),
(471, '0475', '$2y$10$3UgkMQ3Fiu4maBHbIchK8OYnldMXwjhR3gUvHoBkm58OwHs7dpOQm', 'Mary Grace E. Susano', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(472, '0476', '$2y$10$JuCMVoGBnpuwoQ9vvPRvWuOIMXAWmmfwXdG7NskRpDjJBp32e0TUC', 'Diana Mae A. Jardin', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(473, '0477', '$2y$10$QcQqV2g6FRvUqhfUMf5HsuVDmNVt3FAhF6eF1SIpUXhv7x/gV33E6', 'Jestoni R. Umerez', 'AIRCON TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(474, '0478', '$2y$10$DlnVlaz/luy5LWrXrefQ7OFqedtmg8G0bS/xnC3T4cFHpq8LHgmVW', 'Rodolfo Adano Yet Jr.', 'AIRCON TECHNICIAN', 7, 0, '2020-08-26 07:54:01', 0),
(475, '0479', '$2y$10$gSvg5mgNHBxb6OqU0QruCOacjMYL4k1mfWjNRFBGhThY4jf6hn9c.', 'Kynnie John R. Ingatan', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(476, '0480', '$2y$10$T0Ox/EcHJ.pXGo99LMOal.XtV.AUPQhk/ZpXjkvEmoHd6cJS2fkJi', 'Joan B. Segundo', 'ACCOUNTANT I ', 6, 24, '2020-08-26 07:54:01', 523),
(477, '0481', '$2y$10$3Y88z8kQJqDiZp0onjFsDexI2J/9hZQM3/HMN6PsN7HIKNRzQoe52', 'Jose M. Sadial', 'CROP PRODUCTION ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(478, '0482', '$2y$10$KNoWZiBLB41V1.gZqfroZOhJU6ZOZNYZCI2OK6PtLV/lldP/dAPvO', 'Robert Dacillo', 'PLANT PROPAGATOR', 7, 0, '2020-08-26 07:54:01', 0),
(479, '0483', '$2y$10$atpZvBuzupU2fs56cS5usOUyTEvUconNOHCdI6NoShiv/BoLcKpWC', 'Spences S. Saludes', 'GIS APPLICATION DEVELOPER', 7, 0, '2020-08-26 07:54:01', 0),
(480, '0484', '$2y$10$/ElMSldqoIpqbhmQFe46pudsSZmFIBxfDOMzVRsL4/gxLTtsPlxlC', 'Cherrylou A. Sarte', 'OFFICE ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(481, '0485', '$2y$10$F6HeYJyrzldGuIUCMK7S2uPIYTYco/4yiWNKf8yBmk7Ey08IhmbuO', 'Sherwin A. Balang', 'COLLEGE LIBRARIAN 1', 7, 0, '2020-08-26 07:54:01', 0),
(482, '0486', '$2y$10$B7G4Bg0QDX/pZm0ARBcInOcevgnSmiPMiHd5L.tuZHbNVN6re79gO', 'Jay Marie D. Asis', 'OFFICE STAFF', 7, 0, '2020-08-26 07:54:01', 0),
(483, '0487', '$2y$10$/rw/7BOATP9KwVHeEPIhkegTnUu4u0PCau4r2K0JQHMoQ7LfjcX5m', 'Paul Medard P. Anchuelo', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(484, '0488', '$2y$10$PVwcAeRDF9yoMjYXlQ.h1.TDGKZ5MYFeSzuw9wDYTum8DhZ7sh0l.', 'Jessa B. Dumagsang', 'INSTRUCTOR', 7, 0, '2020-08-26 07:54:01', 0),
(485, '0489', '$2y$10$dKhcs8BGSEC0E92AyyZ09eFasWdIotE3Css7FtwpB1d3sUsG/qpXW', 'Francis B. David', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(486, '0490', '$2y$10$Hn8cetMBhY2lG8UYaK/2peF8HNCocXFBHRl0/qDqlIwRaEtQdtlc6', 'Herbert B. Alsate', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(487, '0491', '$2y$10$LHbFMzqP3AdjVfvSshVcr.0i1426CUzMWCwM9Eno5ANTCcMn5mlXC', 'Dario O. Caña', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(488, '0492', '$2y$10$6An023.fooUCSwf5m8oLMupgUf2laD8D9V09S3lSM0TKO9oaVoQYa', 'Rodel M. Cambronero', 'DRIVER I', 7, 0, '2020-08-26 07:54:01', 0),
(489, '0493', '$2y$10$QA4C7bonqYptvNhKFt2H4e2oTN7JL.Hc.H8bGhE3Kn4Q23MkDoOEa', 'Yla T. Jarapa', 'OFFICE ASSISTANT', 7, 0, '2020-08-26 07:54:01', 0),
(490, '0495', '$2y$10$lHEaC7UIh5SY9pJdyuAAbOWzbkdXmE7VjFjTFWRpDK1xSBAfYmKLG', 'Kathryn Evidor Lee', 'INFORMATION SYSTEM RESEARCHER / PLANNER', 7, 10, '2020-08-26 07:54:01', 0),
(491, '0496', '$2y$10$5ry0CuPbyJWf/wfBhWknBudgjuLNb69aVssS4airDkoDLursqulHe', 'Vian Jerome Ilao Rayos', 'COMPUTER PROGRAMMER', 7, 10, '2020-08-26 07:54:01', 523),
(492, '0497', '$2y$10$Iupd/DVcKDP38zJrFf9YvOVdZAv7xU9oljQifD9dRvjQ7SnR7yEb.', 'Alvin D. Peña', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(493, '0498', '$2y$10$8/I8TO0trkXg/qQJFr/2OOKvd0ZlUJ55D1DSr0Ku58hbatP1A2ySm', 'Nercris S. Malaga', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(494, '0499', '$2y$10$3A8sbtn1xziaOZA/RGg1m.CVtScLm0CXYaUHsOJI86n7a2lNxFp4O', 'Melvin P. Ligon', 'DRIVER', 7, 0, '2020-08-26 07:54:01', 0),
(495, '0500', '$2y$10$tPs6eBuZdZPSCOrdcctae.lCHh1.wTbbRj4htom5iKeHl080RrYgy', 'Ailene C. De Vela', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(496, '0501', '$2y$10$fBW7U0hGydGagJ1pHPlBVeDlN4L4IWP2LddzjErIeuHLiCSJsFoF6', 'Jessica A. Bacall', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(497, '0502', '$2y$10$.FxP/PCXhJlLTL7JV4SHSu8pmpHCCfJoojl2jLSqxuMm.qGRVscF.', 'Roque D. Mayo', 'DRIVER ', 7, 0, '2020-08-26 07:54:01', 0),
(498, '0503', '$2y$10$RJJZf193dc33sUQy.IvVOOOpwE1XWzyRjZ2c8BSuZRo01zvhzteZm', 'Cristian Mark B. Balantes', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(499, '0504', '$2y$10$lrefY4xrtreNczM6P5WC2.WLErmaUs1NxBxLwh1tLmqWq2CEuZShq', 'Melvin D. Angeles', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(500, '0505', '$2y$10$vOwhw1oUtOT1EVOkH30jeuVHLiWoOh9Z6phFQtRBGZ99auXJ6bUle', 'Roque M. Carillo', 'CLERK', 7, 0, '2020-08-26 07:54:01', 0),
(501, '0506', '$2y$10$LINTciZuxLeO8/FqG/Ytt.G10FYboUJYvb6YEil1cmFYdCWcyLAoC', 'John Jerick P Bebing', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(502, '0507', '$2y$10$Kk2HR9gfhBWHK53vmXRdN.sS4C2KFbz5mk9NCEOhSZJKgQU/lDXwq', 'Ma. Angelica M Ella', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(503, '0508', '$2y$10$LFASQ.3uUq..isPf0T5YtOFvWF5oVM0E1WWn6jIfaFPLXUeFNZijy', 'Kristoffer Jan B. Notario', 'INSTRUCTOR I', 4, 34, '2020-08-26 07:54:01', 523),
(504, '0509', '$2y$10$/KY35vxZ6uXdqwcSfSck8uGBT5LSQJrqI1.cA5qo19M2GHwKPbsjy', 'Jullie Ann M. Flores', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(505, '0510', '$2y$10$fMFb3vvhBUVOoeKxZ/8G.usNbAfJLSYpFrh2SC1OPg6WVY9VEojhu', 'Armand O. Diaz', 'FARM WORKER I', 4, 46, '2020-08-26 07:54:01', 523),
(506, '0511', '$2y$10$gCD.Qvr7U/1.qDmWkflCeOfWcmowZYseTikOMrwRj7sxfwTa2QqE2', 'Reny A. Ojas', 'FARM WORKER I', 7, 0, '2020-08-26 07:54:01', 0),
(507, '0512', '$2y$10$tQSmKK8nmVZlfP00ivxqHuPQnQWfb.1GgoccoihL7xVNnVcxBu0Yu', 'Mary Joy Sarion', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(508, '0513', '$2y$10$RzTaesBVFWpj5weM71/iue9MVyLRuwQYyMujOm9EL6k/nPnXjpNR2', 'Eugene O. Balindan', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(509, '0514', '$2y$10$xQhixcKKiOMmwcCPaRgXXeCMTKZ/e/g04LUusx1rQ6ZWtTLuTNj7u', 'Julie Ann B. Parillas', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(510, '0515', '$2y$10$x3nVxYPkLLSsAEjvxTGr7Ow8ndgWrtTMkcwtxomt.YON72pfOadfq', 'Melva L. Porbolan', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(511, '0516', '$2y$10$mg6E1HFRKD9AQOFkAbunN.mZj.ecA39qfqNy/xGvgTeQ7QTeMBdUS', 'Melchor M. Amor', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(512, '0517', '$2y$10$8loXqgEhlrBZerZmWXFm6.PFimkJSubEsviUhrbavEPA9RaZC/MDq', 'Amiel A. Bracino', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(513, '0518', '$2y$10$6/VNJ6lxj/uOLQ4olYMnmui0gHndYQTk/uwbsXS/aLqR.yL09Zdry', 'Irvin O. Bequillo', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(514, '0519', '$2y$10$GpfbbcfsBnzHN04fHbbQZelq2PaM96CF9Y35/olCxaUSc./vNSoEO', 'Dexter Valencia Calleja Jr.', 'COMPUTER PROGRAMMER', 7, 10, '2020-08-26 07:54:01', 0),
(515, '0520', '$2y$10$WaXf/GWn.4gULX61f.4qcu50KbwQ9udisiFzVrNKki.l61FSUmuTu', 'Enrico Daryl S. Francisco', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(516, '0521', '$2y$10$VF4Xvzjs11UtCZWiCGtMjOTDEhPEEe38adQVtjoR4s97/t7UFGPyu', 'Alysa Rose A. Artana', 'SOFTWARE PROGRAMMER', 7, 28, '2020-08-26 07:54:01', 0),
(517, '0522', '$2y$10$xWOW7cdXupu9K6N1OJqXCe/hWR57gxdMa5zIb.AAyDS3Vr0qrnBZ2', 'Christian A. Picardo', 'SOFTWARE PROGRAMMER', 7, 28, '2020-08-26 07:54:01', 0),
(518, '0524', '$2y$10$FqMzoCSKCf2FtindbhZUpetHrClK1KqrcIr29PygJq.pJcy9jsouq', 'Jeanette C. Daniel', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(519, '0528', '$2y$10$bTeq7U8DZ5UnhmoazBlkUePxi7Es01bq4tUxAWTCL6hNzM.DFaKRK', 'Salvador C. Demiar Jr.', 'INSTRUCTOR I', 7, 0, '2020-08-26 07:54:01', 0),
(520, '0530', '$2y$10$wA0mht5stolqksepIxmg5ewGp0eWQuhMN2m01ARbmiItZPWFLpdeG', 'Ma. Claudine M. Lafuerte', 'CIVIL ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(521, '0531', '$2y$10$3nrJstW/XQkDsCZTBbtnOOOFJUJAN1FwWUuC08oz0ECj0xZa6M0fW', 'Francis Fidel A. Vega', 'ARCHITECT', 7, 0, '2020-08-26 07:54:01', 0),
(522, '0532', '$2y$10$pCy14e3ubZc23ISmC4LHFeNDOKjH4NlX9Qdww.LUot5DqrrzIXUNm', 'Filandro C. Leaño', 'MECHANICAL ENGINEER', 7, 0, '2020-08-26 07:54:01', 0),
(523, '0537', '$2y$10$mVERE0q38v/6P759p9/KCO0MFwG9gMW6bmuxbMf7MmREQzMlyuM0G', 'Jaime Pardo', 'Computer Programmer', 1, 10, '2020-08-26 07:54:01', 0),
(524, '0538', '$2y$10$5jshZLcwvA4Rg89cDy8qee1qdCubP3Av8nFr5hJK0LxGb/O2n8oU6', 'Jerry R. Saenz', '', 7, 0, '2020-08-26 07:54:01', 0),
(525, '0539', '$2y$10$T/B9q9It73Tl558vwnbBA.nSsZKzBuApXoojNt1Gf44XBBtzoV9KC', 'Mary Grace B. Zantua', '', 7, 0, '2020-08-26 07:54:01', 0),
(526, '0540', '$2y$10$CRosnWN6LXdwJVaqBplTl.rrUsRsY9j4rakyZYsRBPpfVRHH.d65m', 'Jhonna D. Alcantara', '', 7, 0, '2020-08-26 07:54:01', 0),
(527, '0541', '$2y$10$sW2qROMs0BO7X9yyDpXXAuW.M8fl1B22Co3ZQfR176AF9TvqXIQ9K', 'Aldrin Jake C. Asis', '', 7, 0, '2020-08-26 07:54:01', 0),
(528, '0542', '$2y$10$DdnMZy/buqBVfoi1znvL2OW2uHouk4sD1ge.i7schfF41Ulxy91sa', 'Kim Cielo P. Buenaventura', '', 7, 0, '2020-08-26 07:54:01', 0),
(529, '0543', '$2y$10$zW0HNPOMD2N72KqTrjs/meOXqH6cAPzrNeB5PowAUM6EnLsHQNrWe', 'Maria Victoria D. Parica', '', 7, 0, '2020-08-26 07:54:01', 0),
(530, '0544', '$2y$10$ZYdByW6jrE.Nrk/wc9ixGOT2yiCobrDctLV8UNLFXKTwtbpO1lR9K', 'Charlie Guavez', '', 7, 0, '2020-08-26 07:54:01', 0),
(531, '0545', '$2y$10$Q7C8wn8Krw5Va.u5.rqeHe83X9zKFEJZ/B/f6Vjo87ot1EzPtBjUe', 'Benedict Eugene Abiera', '', 7, 0, '2020-08-26 07:54:01', 0),
(532, '0546', '$2y$10$Uyy7TD/smunMC6RPUL910.wRBVGx8clTYxu32.naupLLwjtW032vK', 'Sandy A. Jalimao', '', 7, 0, '2020-08-26 07:54:01', 0),
(533, '0547', '$2y$10$iJ2pusvVIXr4c/ahKEO6MuSePwoDDVp2xZJjNacdFPK0.PP406DUO', 'Maria Fe B. Alban', '', 7, 0, '2020-08-26 07:54:01', 0),
(534, '0548', '$2y$10$TqmcLLZgdzndINGtEM6PIeek/bUgdOiHbfT2.H8hT2hCR54tE803y', 'Nemia S. Fulgencio', '', 7, 0, '2020-08-26 07:54:01', 0),
(535, '0549', '$2y$10$3oHDTYbbbqYZAeFLp170vuQCC6/2Bu1oIt6HcnsmkreWcTfNtXItW', 'Sharmaine A. Aquino', '', 7, 0, '2020-08-26 07:54:01', 0),
(536, '0550', '$2y$10$3dSg7l3VSd2B3mmjQt.D.uiQnCC482fFpZpWitLBJIFMWMrueJjAq', 'Rey-Ann F. Villanueva', '', 7, 0, '2020-08-26 07:54:01', 0),
(537, '0551', '$2y$10$.xIRx81spQpHukuk0.NEy./uz7.9W7qi8Uhqid7VsZsnTEbVxF1xe', 'Viah Nicole R. Mulato', '', 7, 0, '2020-08-26 07:54:01', 0),
(538, '0552', '$2y$10$CXNvUpVSvq.QYeOud3t7OeR/ozQIc483WH010pGttOu555mid0mC2', 'Jhean Nicole H. Damian', '', 7, 0, '2020-08-26 07:54:01', 0),
(539, '0553', '$2y$10$d3MD0pcBmL1GVEgo9pZS5uIjhmv5QMEaam6edijX2Mpfu1caewWM2', 'Roland G. Camandero', '', 7, 0, '2020-08-26 07:54:01', 0),
(540, '0554', '$2y$10$BTQjmsft6cy.TtVLLeoIGOQ05ZZg8fjD1yjxBW33m12k7d81mGxBO', 'Jennylyn C. Casabar', '', 7, 0, '2020-08-26 07:54:01', 0),
(541, '0555', '$2y$10$i2vue0mFzEIhv6TEkUBFCOBBIqsRtfCT94StdsYcxB3zO1iLpc1Zy', 'Aireen V. Ablao', '', 7, 0, '2020-08-26 07:54:01', 0),
(542, '0556', '$2y$10$aCgoPIEmhv2QGft8VQe1keiQlIWZG18dJhvj4Yt4CIoqXjBjXw2vC', 'Ryan Daves F. Quiñones', '', 7, 0, '2020-08-26 07:54:01', 0),
(543, '0557', '$2y$10$iC/HKRII7ZMoVNqfxGFmYOYQ7FywCkdbJzKDE0DT2X1E9pBWLLAqy', 'Pete A. Gomez', '', 7, 0, '2020-08-26 07:54:01', 0),
(544, '0558', '$2y$10$nF/HMBsGZDAxgmXz2kESfev569nV4BFplBAgrPuZmsYCZvMHLqveC', 'Manilyn V. Dasco', '', 7, 0, '2020-08-26 07:54:01', 0),
(545, '0559', '$2y$10$vO5dA0c0VI1vio/C.lY3fuDbbrZ9Xl4l/W7lE6L77UmF82xEs.8/6', 'Marinnyl Aguilar', '', 7, 0, '2020-08-26 07:54:01', 0),
(546, '0560', '$2y$10$KvVuvAD02ygVG3KI1XFiz.M0vfqd.xWJFOnTJrFVy/MLdc15CjCUm', 'Loreimay B. Andaya', '', 7, 0, '2020-08-26 07:54:01', 0),
(547, '0561', '$2y$10$ZTR57NYGD.jfB.kO28I17echjwKX4vwIMtMMJxxyMpbG/7Uy6G2SC', 'Kurt Juden A. Pardo', '', 7, 0, '2020-08-26 07:54:01', 0),
(548, '0562', '$2y$10$DkPJ2oH6O4wPAmCBzt81LO50pGeVySkEXqchZdMKnAkaNHEQfscm6', 'Frances Ubana', '', 7, 0, '2020-08-26 07:54:01', 0),
(549, '0563', '$2y$10$sRw9ZGQQrArYnbj9f3wEueOdL1UxvK0fvTWQvsKFXXb4oPWUkojKC', 'Fernando H. Coratchea', '', 7, 0, '2020-08-26 07:54:01', 0),
(550, '0564', '$2y$10$hBg6Cc3NJxZuZSxCT1u9..OPvPTnpwTfeuJKu2YyR2c0QnYOaCfpm', 'Lara Andrea D. Villasanta', '', 7, 0, '2020-08-26 07:54:01', 0),
(551, '0565', '$2y$10$hj.lpY3vZDdUaqsvv1IWte.DdKDXC70zd2abbCUFuLxQhphYVta5.', 'April B. Pelonio', '', 7, 0, '2020-08-26 07:54:01', 0),
(552, '0566', '$2y$10$fNvKQ0RhDYlVKkLk1w86bOYgc.NVd8UmyBzR/x61SIjKHc6ozNJpu', 'Jherico P. Evia', '', 7, 0, '2020-08-26 07:54:01', 0),
(553, '0567', '$2y$10$iP91C5Ai.RjLPOho3ai7WuwiDP6.5hkBxE1h2MTDsq0qsMnV40ome', 'Ronald O. De Lemios', '', 7, 0, '2020-08-26 07:54:01', 0),
(554, '0568', '$2y$10$geBifDtgYr77D9oREo5LS.BbyVDYSAS97Iwd7PTLxZk001P.JEeAe', 'Alj Manolo S. Bares', '', 7, 0, '2020-08-26 07:54:01', 0),
(555, '0569', '$2y$10$oBZliOyKrtH0pouxSWYLSOpkp8gNhrjLPtOni0jYQW5jekIqHQ3AO', 'Vina Joy P. Bola', '', 7, 0, '2020-08-26 07:54:01', 0),
(556, '0570', '$2y$10$MrwgVezeNQ3XkZI83B5.8enHBU7quUtZB5aazv.GO.YAMIwsEoJa.', 'Reymark V. Occiano', '', 7, 0, '2020-08-26 07:54:01', 0),
(557, '0571', '$2y$10$SQXz6gAqH8M/Pm14wcJl..C3KUHcOcH1j7utvnaQsGcv2SNJ6deQC', 'Ryan John Berdin', '', 7, 0, '2020-08-26 07:54:01', 0),
(558, '0572', '$2y$10$qbsHdjpfacSRtNafjTrVXe0FRSFphshA3sVoSUtu7Kzb0c.cjOhPe', 'Cedric Anthony C. Morales', '', 7, 10, '2020-08-26 07:54:01', 0),
(559, '0573', '$2y$10$sYE4GpGa7l4hl9GoO4/o7uZBtfJDF9aM7P8C8NiHJqiD4HjCxQoje', 'Carl John M. Saromiaes', '', 7, 0, '2020-08-26 07:54:01', 0),
(560, 'COA3', '$2y$10$DqQgZKVgjUha/Z7V4z.7su0NnImZpzOUbZG6gX6hcIwSHctuiOFP2', 'Glenn N. Marcaida', '', 7, 0, '2020-08-27 10:39:54', 0),
(561, 'COA1', '$2y$10$JsTFdJlP/cCZcprPqc2XNO7LnMBLUNX6UBzcajz/J5WpDrxxvhZsq', 'Leticia J. Perez', '', 7, 0, '2020-08-27 10:40:41', 0),
(562, 'COA2', '$2y$10$Z.Ubz93eRmkECLhFzW9.guFjUsL7ydCz9rKUaNefrpxpQFVQQxKxy', 'Mary Grace B. Ramirez', '', 7, 0, '2020-08-27 10:43:36', 0),
(565, '18-0959', '$2y$10$SrW5FGTSHhKR2u/659n0euGCT1VwvHZX2SXHqAYk1RFEGJwV0h2ce', 'Ella Mae C. Espinola', 'Student Assistant', 0, 27, '2021-03-16 05:36:58', 523),
(566, '0637', '$2y$10$W1NUJ8qXFA3VXxNYvoIDsup99j7K3FdbYK7cFaO56Ys9Yx0T0XK1K', 'Freddie T. Bernal', 'CHED Regional Director', 2, 1, '2021-06-30 06:28:38', 523),
(567, '0620', '$2y$10$oW8bIeZwEf3ET22TFTp8Gu5dh771T9LgvF3gow4A24p9ACnGri3QG', 'Jhann Larry Arevalo', 'Office Assistant', 4, 48, '2021-07-30 01:26:18', 523);

-- --------------------------------------------------------

--
-- Table structure for table `tblaccountlevel`
--

CREATE TABLE `tblaccountlevel` (
  `userID` int NOT NULL,
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
(9, 'Employee (Admin)');

-- --------------------------------------------------------

--
-- Table structure for table `tblbarcode`
--

CREATE TABLE `tblbarcode` (
  `barID` int NOT NULL,
  `barCode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblbuildingrepair`
--

CREATE TABLE `tblbuildingrepair` (
  `majorID` int NOT NULL,
  `buildingID` int NOT NULL DEFAULT '0',
  `majorDesc` varchar(250) DEFAULT NULL,
  `repairStart` varchar(20) DEFAULT NULL,
  `repairEnd` varchar(20) DEFAULT NULL,
  `repairNature` varchar(150) DEFAULT NULL,
  `repairAmount` decimal(15,3) NOT NULL DEFAULT '0.000',
  `poID` int NOT NULL DEFAULT '0',
  `chartID_SPMO` int NOT NULL DEFAULT '0',
  `chartID_Acc` int NOT NULL DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblcampus`
--

CREATE TABLE `tblcampus` (
  `campusID` int NOT NULL,
  `campusCode` varchar(20) DEFAULT NULL,
  `campusName` varchar(150) DEFAULT NULL,
  `warehouseID` int DEFAULT NULL,
  `no` int DEFAULT NULL
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
  `chartID` int NOT NULL,
  `chartCode` varchar(20) DEFAULT NULL,
  `chartName` varchar(150) DEFAULT NULL,
  `chartLegend` varchar(10) DEFAULT NULL,
  `chartLife` varchar(50) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
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
  `componentID` int NOT NULL,
  `mainSupply` int DEFAULT NULL,
  `componentSupply` int DEFAULT NULL,
  `descID` int DEFAULT '0',
  `componentStock` int DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbldispose`
--

CREATE TABLE `tbldispose` (
  `disposeID` int NOT NULL,
  `reissueID` int DEFAULT NULL,
  `disposeDate` varchar(20) DEFAULT NULL,
  `disposeReceipt` varchar(100) DEFAULT NULL,
  `disposeCost` decimal(11,3) DEFAULT NULL,
  `disposeType` varchar(20) DEFAULT NULL,
  `disposeRemark` varchar(255) DEFAULT NULL,
  `officerID` int DEFAULT NULL,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldisposeparts`
--

CREATE TABLE `tbldisposeparts` (
  `disposepartsID` int NOT NULL,
  `reissueID` int DEFAULT '0',
  `descID` int NOT NULL DEFAULT '0',
  `disposepartsDate` varchar(20) DEFAULT NULL,
  `disposepartsDesc` varchar(255) DEFAULT NULL,
  `disposepartsCost` decimal(11,3) DEFAULT NULL,
  `disposepartsType` varchar(20) DEFAULT NULL,
  `disposepartsReceipt` varchar(150) DEFAULT NULL,
  `disposepartsRDate` varchar(20) DEFAULT NULL,
  `disposepartsAgency` varchar(200) DEFAULT NULL,
  `disposepartsRemark` varchar(255) DEFAULT NULL,
  `officerID` int DEFAULT NULL,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblfundcluster`
--

CREATE TABLE `tblfundcluster` (
  `fundID` int NOT NULL,
  `fundCode` varchar(10) DEFAULT NULL,
  `fundName` varchar(100) DEFAULT NULL,
  `fundLegend` varchar(10) NOT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
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
  `icsID` int NOT NULL,
  `icsCode` varchar(30) DEFAULT NULL,
  `icsPO` int DEFAULT '0',
  `officerIDFrom` int DEFAULT NULL,
  `officerIDTo` int DEFAULT NULL,
  `icsDate` varchar(20) DEFAULT NULL,
  `supplierID` int DEFAULT NULL,
  `fundID` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblicsdet`
--

CREATE TABLE `tblicsdet` (
  `icsdetID` int NOT NULL,
  `icsID` int DEFAULT NULL,
  `supplyID` int DEFAULT NULL,
  `descID` int DEFAULT '0',
  `risppedetID` int DEFAULT '0',
  `icsSerial` varchar(150) DEFAULT NULL,
  `icsNew` int NOT NULL DEFAULT '1',
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `logID` int NOT NULL,
  `logRemarks` varchar(250) DEFAULT NULL,
  `officerID` int DEFAULT '0',
  `employeeID` int DEFAULT '0',
  `logType` int DEFAULT '-1',
  `logNotif` int DEFAULT '0',
  `logView` varchar(50) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblmenu`
--

CREATE TABLE `tblmenu` (
  `menuID` int NOT NULL,
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
  `officerID` int NOT NULL,
  `accountID` int NOT NULL,
  `fromLevel` int NOT NULL,
  `toLevel` int NOT NULL,
  `DateTimeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `No` int NOT NULL
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
  `officeID` int NOT NULL,
  `officeCode` varchar(20) DEFAULT NULL,
  `officeName` varchar(150) DEFAULT NULL,
  `campusID` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
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
  `papID` int NOT NULL,
  `papCode` varchar(50) DEFAULT NULL,
  `papName` varchar(150) DEFAULT NULL,
  `DateTimeCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
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
  `pareID` int NOT NULL,
  `pareCode` varchar(40) DEFAULT NULL,
  `parePO` int DEFAULT '0',
  `pareDateRequest` varchar(20) DEFAULT NULL,
  `officerIDFrom` int DEFAULT NULL,
  `officerIDTo` int DEFAULT NULL,
  `supplierID` int DEFAULT NULL,
  `fundID` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblparedet`
--

CREATE TABLE `tblparedet` (
  `paredetID` int NOT NULL,
  `pareID` int DEFAULT NULL,
  `supplyID` int DEFAULT NULL,
  `descID` int DEFAULT '0',
  `risppedetID` int DEFAULT '0',
  `pareSerial` varchar(150) DEFAULT NULL,
  `pareNew` int NOT NULL DEFAULT '1',
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `paymentID` int NOT NULL,
  `paymentReceipt` varchar(100) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `paymentType` varchar(10) DEFAULT NULL,
  `poID` int DEFAULT '0',
  `paymentAmount` decimal(11,3) DEFAULT '0.000',
  `paymentTax` decimal(11,3) DEFAULT '0.000',
  `paymentLiquidate` decimal(11,3) DEFAULT '0.000',
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `No` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpo`
--

CREATE TABLE `tblpo` (
  `poID` int NOT NULL,
  `poCode` varchar(150) DEFAULT NULL,
  `poDateReceipt` varchar(20) DEFAULT NULL,
  `fundID_SPMO` int DEFAULT '0',
  `fundID` int DEFAULT NULL,
  `supplierID` int DEFAULT NULL,
  `papID` int DEFAULT '0',
  `DateTimeCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
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
  `purchaseID` int NOT NULL,
  `supplyID` int DEFAULT '0',
  `purchaseDesc` varchar(250) DEFAULT NULL,
  `purchasePurpose` varchar(200) DEFAULT NULL,
  `purchaseUnit` varchar(50) DEFAULT NULL,
  `isReplacement` tinyint(1) NOT NULL DEFAULT '0',
  `reissueID` int DEFAULT '0',
  `purchaseQuantity` int DEFAULT '0',
  `purchaseBudget` int DEFAULT '0',
  `employeeID` int DEFAULT '0',
  `IsApproved` int DEFAULT '0',
  `officerID` int DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblreissue`
--

CREATE TABLE `tblreissue` (
  `reissueID` int NOT NULL,
  `officerID` int DEFAULT NULL,
  `reissueDate` varchar(50) DEFAULT NULL,
  `employeeID` int DEFAULT NULL,
  `icsdetID` int DEFAULT '0',
  `paredetID` int DEFAULT '0',
  `supplyID` int DEFAULT NULL,
  `reissueProperty` varchar(50) DEFAULT NULL,
  `reissueSerial` varchar(150) DEFAULT NULL,
  `reissueStatus` int NOT NULL DEFAULT '0',
  `parentID` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblreissuedet`
--

CREATE TABLE `tblreissuedet` (
  `reissuedetID` int NOT NULL,
  `reissueID` int DEFAULT NULL,
  `descID` int DEFAULT '0',
  `DateTimeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblreturn`
--

CREATE TABLE `tblreturn` (
  `returnID` int NOT NULL,
  `reissueID` int DEFAULT NULL,
  `isReturn` tinyint(1) DEFAULT NULL,
  `returnDate` varchar(20) DEFAULT NULL,
  `returnIsWork` tinyint(1) DEFAULT NULL,
  `repairCost` int NOT NULL DEFAULT '0',
  `repairType` varchar(150) DEFAULT NULL,
  `returnRemarks` varchar(255) DEFAULT NULL,
  `officerID` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblris`
--

CREATE TABLE `tblris` (
  `risID` int NOT NULL,
  `risCode` varchar(40) DEFAULT NULL,
  `officerID` int DEFAULT NULL,
  `employeeID` int DEFAULT NULL,
  `risDate` varchar(20) DEFAULT NULL,
  `risPurpose` varchar(150) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrisdet`
--

CREATE TABLE `tblrisdet` (
  `risdetID` int NOT NULL,
  `risID` int DEFAULT NULL,
  `risNew` tinyint(1) DEFAULT '1',
  `supplyID` int DEFAULT NULL,
  `stockID` int NOT NULL DEFAULT '0',
  `risQuantity` int DEFAULT NULL,
  `risAvailable` int DEFAULT '0',
  `risStatus` int DEFAULT NULL,
  `risRemarks` varchar(150) DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrisppe`
--

CREATE TABLE `tblrisppe` (
  `risppeID` int NOT NULL,
  `risppePONo` int NOT NULL DEFAULT '0',
  `risppeCode` varchar(40) DEFAULT NULL,
  `risppeDate` varchar(20) DEFAULT NULL,
  `employeeID` int NOT NULL DEFAULT '0',
  `officerID` int NOT NULL DEFAULT '0',
  `risppeStatus` int NOT NULL DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblrisppedet`
--

CREATE TABLE `tblrisppedet` (
  `risppedetID` int NOT NULL,
  `risppeID` int NOT NULL DEFAULT '0',
  `stockID` int NOT NULL DEFAULT '0',
  `risppedetQuantity` int NOT NULL DEFAULT '0',
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblstatus`
--

CREATE TABLE `tblstatus` (
  `statusID` int NOT NULL,
  `statusNo` int DEFAULT NULL,
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
  `stockID` int NOT NULL,
  `supplyID` int DEFAULT NULL,
  `stockAvailable` int DEFAULT NULL,
  `stockBalance` int DEFAULT '0',
  `descID` int DEFAULT '0',
  `poID` int DEFAULT '0',
  `DRCode` varchar(150) DEFAULT NULL,
  `DRDate` varchar(20) DEFAULT NULL,
  `DateTimeCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstock`
--

INSERT INTO `tblstock` (`stockID`, `supplyID`, `stockAvailable`, `stockBalance`, `descID`, `poID`, `DRCode`, `DRDate`, `DateTimeCreated`, `no`) VALUES
(9, 173, 12, 12, 10, 4, '4938', '2021-07-19', '2021-07-30 06:10:38', 10),
(10, 120, 2, 2, 11, 4, '4938', '2021-07-19', '2021-07-30 06:21:53', 10),
(11, 148, 1, 1, 12, 4, '4938', '2021-07-19', '2021-07-30 06:24:04', 10),
(12, 137, 6, 6, 13, 4, '4938', '2021-07-19', '2021-07-30 06:26:12', 10),
(13, 36, 1, 1, 14, 4, '4938', '2021-07-19', '2021-07-30 06:28:42', 10),
(14, 120, 3, 0, 15, 4, '4938', '2021-07-19', '2021-07-30 06:29:54', 10),
(15, 423, 1, 1, 16, 4, '4938', '2021-07-19', '2021-07-30 06:33:33', 10),
(16, 23, 1, 1, 17, 4, '4938', '2021-07-19', '2021-07-30 06:34:55', 10),
(17, 141, 1, 0, 18, 4, '4938', '2021-07-19', '2021-07-30 06:36:56', 10),
(18, 424, 10, 10, 19, 4, '4938', '2021-07-19', '2021-07-30 06:43:53', 10),
(19, 141, 1, 1, 20, 4, '4938', '2021-07-19', '2021-07-30 06:43:53', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE `tblsupplier` (
  `supplierID` int NOT NULL,
  `supplierCode` varchar(20) DEFAULT NULL,
  `supplierName` varchar(100) DEFAULT NULL,
  `supplierAddress` varchar(255) DEFAULT NULL,
  `supplierGEPS` varchar(50) NOT NULL,
  `supplierDBP` int NOT NULL,
  `supplierEmail` varchar(100) DEFAULT NULL,
  `supplierCPerson` varchar(100) DEFAULT NULL,
  `supplierPosition` varchar(50) DEFAULT NULL,
  `supplierTelNo` varchar(30) DEFAULT NULL,
  `supplierCpNo` varchar(20) DEFAULT NULL,
  `supplierTIN` varchar(30) DEFAULT NULL,
  `supplierStatus` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
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
  `supplyID` int NOT NULL,
  `supplyCode` varchar(50) DEFAULT NULL,
  `supplyName` varchar(150) DEFAULT NULL,
  `supplyProperty` varchar(50) DEFAULT NULL,
  `supTypeID` int NOT NULL DEFAULT '0',
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupply`
--

INSERT INTO `tblsupply` (`supplyID`, `supplyCode`, `supplyName`, `supplyProperty`, `supTypeID`, `DateCreated`, `no`) VALUES
(1, '1-06-05-020-01', 'Computer Units', 'E-01', 0, '2020-11-03 07:16:32', 0),
(2, '1-06-05-020-02', 'Computer Printer', 'E-01(A)', 0, '2020-11-03 07:16:32', 0),
(3, '1-06-05-030-01', 'Switch Hub', 'E-01(B)', 0, '2020-11-03 07:16:32', 0),
(4, '1-06-05-020-03', 'Scanner (Old)', 'E-01(C)', 0, '2020-11-03 07:16:32', 0),
(5, '1-06-05-020-04', 'Uninterrupted Power Supply (UPS)', 'E-01(D)', 0, '2020-11-03 07:16:32', 0),
(7, '1-06-05-030-03', 'Motherboard - Asus P5QDL -AM', 'E-01(F)', 0, '2020-11-03 07:16:32', 0),
(8, '1-06-05-030-04', 'Router', 'E-01(G)', 0, '2020-11-03 07:16:32', 0),
(9, '1-06-05-030-05', 'Speaker', 'E-01(H)', 0, '2020-11-03 07:16:32', 0),
(10, '1-06-05-030-06', 'Video Card', 'E-01(I)', 0, '2020-11-03 07:16:32', 0),
(11, '1-06-05-020-05', 'Power Supply ATX', 'E-01(J)', 0, '2020-11-03 07:16:32', 0),
(12, '1-06-05-030-07', 'Hard Disk', 'E-01(K)', 0, '2020-11-03 07:16:32', 0),
(13, '1-06-05-030-08', 'External DVD Recorder', 'E-01(L)', 0, '2020-11-03 07:16:32', 0),
(14, '1-06-05-020-06', 'Xerox Machine', 'E-02', 0, '2020-11-03 07:16:32', 0),
(15, '1-06-05-990-01', 'Rostrum', 'E-03', 0, '2020-11-03 07:16:32', 0),
(16, '1-06-05-020-07', 'Overhead Projector', 'E-04', 0, '2020-11-03 07:16:32', 0),
(17, '1-06-05-030-09', 'Screen Projector', 'E-04(A)', 0, '2020-11-03 07:16:32', 0),
(18, '1-06-05-030-10', 'LCD Projector', 'E-04(B)', 0, '2020-11-03 07:16:32', 0),
(19, '1-06-05-020-08', 'Typewriter', 'E-05', 0, '2020-11-03 07:16:32', 0),
(20, '1-06-05-040-01', 'Brush Cutter', 'E-06', 0, '2020-11-03 07:16:32', 0),
(21, '1-06-05-040-02', 'Knapsack Sprayer', 'E-07', 0, '2020-11-03 07:16:32', 0),
(22, '1-06-05-020-09', 'Scanner', 'E-08', 0, '2020-11-03 07:16:32', 0),
(23, '1-06-05-990-02', 'Refrigerator', 'E-09', 0, '2020-11-03 07:16:32', 0),
(24, '1-06-05-990-03', 'Freezer', 'E-09(A)', 0, '2020-11-03 07:16:32', 0),
(25, '1-06-05-030-11', 'Television', 'E-10', 0, '2020-11-03 07:16:32', 0),
(26, '1-06-05-030-12', 'Home Theater', 'E-10(A)', 0, '2020-11-03 07:16:32', 0),
(27, '1-06-05-990-04', 'Water Dispenser', 'E-11', 0, '2020-11-03 07:16:32', 0),
(28, '1-06-05-990-05', 'Aircon / Cooler', 'E-12', 0, '2020-11-03 07:16:32', 0),
(29, '1-06-05-010-01', 'Generator', 'E-13', 0, '2020-11-03 07:16:32', 0),
(30, '1-06-05-020-10', 'Binding Machine', 'E-14', 0, '2020-11-03 07:16:32', 0),
(31, '1-06-05-020-11', 'Fax Machine', 'E-15', 0, '2020-11-03 07:16:32', 0),
(32, '1-06-05-990-06', 'Microwave', 'E-16', 0, '2020-11-03 07:16:32', 0),
(33, '1-06-05-990-07', 'Gas Range', 'E-16(A)', 0, '2020-11-03 07:16:32', 0),
(34, '1-06-05-010-02', 'LAMINATING MACHINE', 'E-17', 0, '2020-11-03 07:16:32', 10),
(35, '1-06-05-010-03', 'ID Printer', 'E-17(A)', 0, '2020-11-03 07:16:32', 0),
(36, '1-06-05-020-12', 'Conference Table Folding', 'E-18', 0, '2020-11-03 07:16:32', 0),
(37, '1-06-05-140-01', 'Weighing Scale w/ Height', 'E-19', 0, '2020-11-03 07:16:32', 0),
(38, '1-06-05-020-13', 'Guide Slot Punch', 'E-20', 0, '2020-11-03 07:16:32', 0),
(39, '1-06-05-020-14', 'Multi-media Projector (LCD)', 'E-21', 0, '2020-11-03 07:16:32', 0),
(40, '1-06-05-030-13', 'Mediaflex - (RMF 300)', 'E-22', 0, '2020-11-03 07:16:32', 0),
(41, '1-06-05-020-15', 'Bills Counter', 'E-23', 0, '2020-11-03 07:16:32', 0),
(42, '1-06-05-020-16', 'Checkwriter', 'E-23(A)', 0, '2020-11-03 07:16:32', 0),
(43, '1-06-05-030-14', 'Cassette Recorder', 'E-24', 0, '2020-11-03 07:16:32', 0),
(44, '1-06-05-990-08', 'Floor Polisher', 'E-25', 0, '2020-11-03 07:16:32', 0),
(45, '1-06-05-030-15', 'DVD Player (Old)', 'E-26', 0, '2020-11-03 07:16:32', 0),
(46, '1-06-05-030-16', 'VHS Player', 'E-27', 0, '2020-11-03 07:16:32', 0),
(47, '1-06-05-990-09', 'Guitar', 'E-28', 0, '2020-11-03 07:16:32', 0),
(48, '1-06-05-140-02', 'Video Camera - Sony Digi Cam', 'E-29', 0, '2020-11-03 07:16:32', 0),
(49, '1-06-05-990-10', 'Office Station', 'E-30', 0, '2020-11-03 07:16:32', 0),
(50, '1-06-05-990-11', 'Safety Vault', 'E-31', 0, '2020-11-03 07:16:32', 0),
(51, '1-06-05-030-17', 'Digital Camera', 'E-32', 0, '2020-11-03 07:16:32', 0),
(52, '1-06-05-030-18', 'Handy Camera', 'E-33', 0, '2020-11-03 07:16:32', 0),
(53, '1-06-05-140-03', 'Medicine Cabinet', 'E-34', 0, '2020-11-03 07:16:32', 0),
(54, '1-06-05-030-19', 'Public Address System', 'E-35', 0, '2020-11-03 07:16:32', 0),
(55, '1-06-05-030-20', 'Lapel Microphone', 'E-35(A)', 0, '2020-11-03 07:16:32', 0),
(56, '1-06-05-030-21', 'Microphone', 'E-35(B)', 0, '2020-11-03 07:16:32', 0),
(57, '1-06-05-990-12', 'Karaoke', 'E-36', 0, '2020-11-03 07:16:32', 0),
(58, '1-06-05-030-22', 'DVD Player', 'E-36(A)', 0, '2020-11-03 07:16:32', 0),
(59, '1-06-05-030-23', 'IC Recorder', 'E-36(B)', 0, '2020-11-03 07:16:32', 0),
(60, '1-06-05-070-01', 'Megaphone ', 'E-37', 0, '2020-11-03 07:16:32', 0),
(61, '1-06-05-020-17', 'laptop', 'E-38', 0, '2020-11-03 07:16:32', 0),
(62, '1-06-05-020-18', 'Netbook', 'E-38(A)', 0, '2020-11-03 07:16:32', 0),
(63, '1-06-05-020-19', 'Tablet', 'E-38(B)', 0, '2020-11-03 07:16:32', 0),
(64, '1-06-05-040-03', 'Power Spray', 'E-39', 0, '2020-11-03 07:16:32', 0),
(65, '1-06-05-040-04', 'Corn Mill Grinder', 'E-40', 0, '2020-11-03 07:16:32', 0),
(66, '1-06-05-070-02', 'Sound System Set', 'E-41', 0, '2020-11-03 07:16:32', 0),
(67, '1-06-05-070-03', 'Sound System Headset', 'E-41(A)', 0, '2020-11-03 07:16:32', 0),
(68, '1-06-05-990-13', 'Wooden Riffle', 'E-42', 0, '2020-11-03 07:16:32', 0),
(69, '1-06-05-990-14', 'Bass Drum', 'E-42(A)', 0, '2020-11-03 07:16:32', 0),
(70, '1-06-05-990-15', 'Arm Rack', 'E-42(B)', 0, '2020-11-03 07:16:32', 0),
(71, '1-06-05-990-16', 'Musical Stand', 'E-42(C)', 0, '2020-11-03 07:16:32', 0),
(72, '1-06-05-010-04', 'Riso Machine', 'E-43', 0, '2020-11-03 07:16:32', 0),
(73, '1-06-05-030-24', 'Hot Air Station', 'E-44', 0, '2020-11-03 07:16:32', 0),
(74, '1-06-05-010-05', 'Portable Direct Shear Apparatus', 'E-44(A)', 0, '2020-11-03 07:16:32', 0),
(75, '1-06-05-010-06', 'Cut Off Machine', 'E-45', 0, '2020-11-03 07:16:32', 0),
(76, '1-06-05-010-07', 'Hammer Drill', 'E-46', 0, '2020-11-03 07:16:32', 0),
(77, '1-06-05-010-08', 'Bench Grinder 6\" Rubicon', 'E-47', 0, '2020-11-03 07:16:32', 0),
(78, '1-06-05-010-09', 'Grinder 4\" Makita', 'E-48', 0, '2020-11-03 07:16:32', 0),
(79, '1-06-05-010-10', 'Plainer', 'E-49', 0, '2020-11-03 07:16:32', 0),
(80, '1-06-06-010-01', 'Buggy Cart', 'E-50', 0, '2020-11-03 07:16:32', 0),
(81, '1-06-05-070-04', 'Microphone - Conference', 'E-52', 0, '2020-11-03 07:16:32', 0),
(82, '1-06-05-010-11', 'Water Pump', 'E-55', 0, '2020-11-03 07:16:32', 0),
(83, '1-06-05-010-12', 'Electric Motor', 'E-56', 0, '2020-11-03 07:16:32', 0),
(84, '1-06-05-990-17', 'Electro Pneumatics Training Set', 'E-57', 0, '2020-11-03 07:16:32', 0),
(85, '1-06-05-030-25', 'Wireless Router', 'E-58(A)', 0, '2020-11-03 07:16:32', 0),
(86, '1-06-05-030-26', 'Wireless Adapter', 'E-58(B)', 0, '2020-11-03 07:16:32', 0),
(87, '1-06-05-990-18', 'High Cast Aluminum Pressure Cooker', 'E-59', 0, '2020-11-03 07:16:32', 0),
(88, '1-06-05-990-19', 'Vacuum Plastic Sealer', 'E-60', 0, '2020-11-03 07:16:32', 0),
(89, '1-06-05-990-20', 'Glass Container', 'E-61', 0, '2020-11-03 07:16:32', 0),
(90, '1-06-05-990-21', 'Food Processor', 'E-62', 0, '2020-11-03 07:16:32', 0),
(91, '1-06-05-990-22', 'Noodle Maker', 'E-63', 0, '2020-11-03 07:16:32', 0),
(92, '1-06-05-990-23', 'Pair of Mask & Snorkel', 'E-65', 0, '2020-11-03 07:16:32', 0),
(93, '1-06-05-990-24', 'Pair of Flippers', 'E-66', 0, '2020-11-03 07:16:32', 0),
(94, '1-06-05-010-13', 'Heavy Duty (Osterizer / Super Blender)', 'E-67', 0, '2020-11-03 07:16:32', 0),
(95, '1-06-05-140-04', 'BP Apparatus - ALPK2 Japan', 'E-68', 0, '2020-11-03 07:16:32', 0),
(96, '1-06-05-990-25', 'Hand Mixer', 'E-70', 0, '2020-11-03 07:16:32', 0),
(97, '1-06-05-140-05', 'Electronic Sphygmomanometer', 'E-71', 0, '2020-11-03 07:16:32', 0),
(98, '1-06-05-140-06', 'Theodolite, Digital Kolida', 'E-72', 0, '2020-11-03 07:16:32', 0),
(99, '1-06-05-990-26', 'Wardrobe Cabinet', 'E-73', 0, '2020-11-03 07:16:32', 0),
(100, '1-06-05-040-05', 'Soil Test Kit', 'E-74', 0, '2020-11-03 07:16:32', 0),
(101, '1-06-05-010-14', 'Air Compressor', 'E-75', 0, '2020-11-03 07:16:32', 10),
(102, '1-06-05-020-20', 'Paper Shredder', 'E-76', 0, '2020-11-03 07:16:32', 0),
(103, '1-06-05-010-15', 'Engineering Equipment', 'E-77', 0, '2020-11-03 07:16:32', 0),
(104, '1-06-05-090-01', 'Fire Extinguisher', 'E-78', 0, '2020-11-03 07:16:32', 0),
(105, '1-06-05-020-21', 'Paper Cutter', 'E-79', 0, '2020-11-03 07:16:32', 0),
(106, '1-06-05-020-22', 'Offset Printing Machine', 'E-80', 0, '2020-11-03 07:16:32', 0),
(107, '1-06-05-990-27', 'Ice Crusher', 'E-81', 0, '2020-11-03 07:16:32', 0),
(108, '1-06-05-140-07', 'Science Laboratory Equipment', 'E-82', 0, '2020-11-03 07:16:32', 0),
(109, '1-06-05-010-16', 'Oven Dryer', 'E-83', 0, '2020-11-03 07:16:32', 0),
(110, '1-06-05-990-28', 'Magnetic Compass', 'E-84', 0, '2020-11-03 07:16:32', 0),
(111, '1-06-05-140-08', 'Dental Chair', 'E-85', 0, '2020-11-03 07:16:32', 0),
(112, '1-06-05-140-09', 'Massage Chair', 'E-86', 0, '2020-11-03 07:16:32', 0),
(113, '1-06-05-010-17', 'Steam Boiler', 'E-87', 0, '2020-11-03 07:16:32', 0),
(114, '1-06-05-140-10', 'Salinity Refractometer', 'E-89', 0, '2020-11-03 07:16:32', 0),
(115, '1-06-05-990-29', 'Wildco (Kemmerer Water Sampler)', 'E-90', 0, '2020-11-03 07:16:32', 0),
(116, '1-06-05-140-11', 'Insulation Tester (Analog)', 'E-91', 0, '2020-11-03 07:16:32', 0),
(117, '1-06-05-990-30', 'Hana Platform / Trolley', 'E-92', 0, '2020-11-03 07:16:32', 0),
(118, '1-06-05-990-31', 'Weighing Scale 300Kg', 'E-93', 0, '2020-11-03 07:16:32', 0),
(119, '1-06-07-010-01', 'Executive Table', 'F-01', 0, '2020-11-03 07:16:32', 0),
(120, '1-06-07-010-02', 'Clerical Table', 'F-02', 0, '2020-11-03 07:16:32', 0),
(121, '1-06-07-010-03', 'Computer Table', 'F-03', 0, '2020-11-03 07:16:32', 0),
(122, '1-06-07-010-04', 'Wooden Table (Ordinary)', 'F-04', 0, '2020-11-03 07:16:32', 0),
(123, '1-06-07-010-05', 'Steel Cabinet', 'F-05', 0, '2020-11-03 07:16:32', 0),
(124, '1-06-07-010-06', 'Plastic Cabinet', 'F-05(A)', 0, '2020-11-03 07:16:32', 0),
(125, '1-06-07-010-07', 'Mobile Drawer', 'F-05(B)', 0, '2020-11-03 07:16:32', 0),
(126, '1-06-07-010-08', 'Wooden Cabinet', 'F-06', 0, '2020-11-03 07:16:32', 0),
(127, '1-06-07-010-09', 'Diveders (Fabric)', 'F-07(A)', 0, '2020-11-03 07:16:32', 0),
(128, '1-06-07-010-10', 'Dividers', 'F-07(B)', 0, '2020-11-03 07:16:32', 0),
(129, '1-06-07-010-11', 'Modular Partition', 'F-07(C)', 0, '2020-11-03 07:16:32', 0),
(130, '1-06-07-010-12', 'Typing Table', 'F-08', 0, '2020-11-03 07:16:32', 0),
(131, '1-06-07-010-13', 'Executive Chair', 'F-09(A)', 0, '2020-11-03 07:16:32', 0),
(132, '1-06-07-010-14', 'Chairs w/ Metal', 'F-09(B)', 0, '2020-11-03 07:16:32', 0),
(133, '1-06-07-010-15', 'Ordinary Chairs (Wooden)', 'F-09(C)', 0, '2020-11-03 07:16:32', 0),
(134, '1-06-07-010-16', 'Stocking Chairs', 'F-09(D)', 0, '2020-11-03 07:16:32', 0),
(135, '1-06-07-010-17', 'COPTA Chairs - Monoblock', 'F-09(E)', 0, '2020-11-03 07:16:32', 0),
(136, '1-06-07-010-18', 'Aluminum Chair', 'F-09(F)', 0, '2020-11-03 07:16:32', 0),
(137, '1-06-07-010-19', 'Conference Chair', 'F-09(G)', 0, '2020-11-03 07:16:32', 0),
(138, '1-06-07-010-20', 'Wheel Chair', 'F-09(H)', 0, '2020-11-03 07:16:32', 0),
(139, '1-06-07-010-21', 'Swivel Chair', 'F-09(J)', 0, '2020-11-03 07:16:32', 0),
(140, '1-06-07-010-22', 'Gang Chair', 'F-09(K)', 0, '2020-11-03 07:16:32', 0),
(141, '1-06-07-010-23', 'Sala Set', 'F-10', 0, '2020-11-03 07:16:32', 0),
(142, '1-06-07-010-24', 'Laboratory Table', 'F-11(A)', 0, '2020-11-03 07:16:32', 0),
(143, '1-06-07-010-25', 'Stand Fan / Desk Fan', 'F-12', 0, '2020-11-03 07:16:32', 0),
(144, '1-06-07-010-26', 'Ceiling / Orbit Fan', 'F-12(A)', 0, '2020-11-03 07:16:32', 0),
(145, '1-06-07-010-27', 'Industrial Fan', 'F-12(B)', 0, '2020-11-03 07:16:32', 0),
(146, '1-06-07-010-28', 'Exhaust Fan', 'F-12(C)', 0, '2020-11-03 07:16:32', 0),
(147, '1-06-07-010-29', 'Folding Table', 'F-14', 0, '2020-11-03 07:16:32', 0),
(148, '1-06-07-010-30', 'Working / Conference Table', 'F-14(A)', 0, '2020-11-03 07:16:32', 0),
(149, '1-06-07-010-31', 'Plastic Stool', 'F-15', 0, '2020-11-03 07:16:32', 0),
(150, '1-06-07-010-32', 'Ring Binder Machine', 'F-16', 0, '2020-11-03 07:16:32', 0),
(151, '1-06-07-010-33', 'Durabox / Palstic Cabinet', 'F-18', 0, '2020-11-03 07:16:32', 0),
(152, '1-06-07-010-34', 'Rechargeable Light', 'F-19', 0, '2020-11-03 07:16:32', 0),
(153, '1-06-07-010-35', 'Mattress', 'F-20', 0, '2020-11-03 07:16:32', 0),
(154, '1-06-07-010-36', 'Blanket & Pillow Case', 'F-20(A)', 0, '2020-11-03 07:16:32', 0),
(155, '1-06-07-010-37', 'Pillow', 'F-20(B)', 0, '2020-11-03 07:16:32', 0),
(156, '1-06-07-010-38', 'Rice Cooker', 'F-21', 0, '2020-11-03 07:16:32', 0),
(157, '1-06-07-010-39', 'Plastic Table, 4 Seaters', 'F-22', 0, '2020-11-03 07:16:32', 0),
(158, '1-06-07-010-40', 'Dining Table', 'F-22(A)', 0, '2020-11-03 07:16:32', 0),
(159, '1-06-07-010-41', 'Double Deck', 'F-23', 0, '2020-11-03 07:16:32', 0),
(160, '1-06-07-010-42', 'Steel Bed', 'F-24', 0, '2020-11-03 07:16:32', 0),
(161, '1-06-07-010-43', 'Folding Bed w/ Foam', 'F-24(A)', 0, '2020-11-03 07:16:32', 0),
(162, '1-06-07-010-44', 'Bookshelve (Wooden)', 'F-25', 0, '2020-11-03 07:16:32', 0),
(163, '1-06-07-010-45', 'Whiteboard', 'F-26', 0, '2020-11-03 07:16:32', 0),
(164, '1-06-07-010-46', 'Bulletin Board', 'F-27', 0, '2020-11-03 07:16:32', 0),
(165, '1-06-07-010-47', 'Display Cabinet', 'F-28', 0, '2020-11-03 07:16:32', 0),
(166, '1-06-07-010-48', 'Ladder', 'F-30', 0, '2020-11-03 07:16:32', 0),
(167, '1-06-07-010-49', 'Steel Bookshelves', 'F-29', 0, '2020-11-03 07:16:32', 0),
(168, '1-06-07-010-50', 'Wooden Bed', 'F-30(A)', 0, '2020-11-03 07:16:32', 0),
(169, '1-06-07-010-51', 'Small Trolley (Wooden)', 'F-31', 0, '2020-11-03 07:16:32', 0),
(170, '1-06-07-010-52', 'Bed Foam', 'F-32', 0, '2020-11-03 07:16:32', 0),
(171, '1-06-07-010-53', 'Stainles Steel Podium', 'F-33', 0, '2020-11-03 07:16:32', 0),
(172, '1-06-07-010-54', 'Stand Aluminum Ladder', 'F-33(A)', 0, '2020-11-03 07:16:32', 0),
(173, '1-06-07-010-55', 'Chair with Armrest', 'F-34', 4, '2020-11-03 07:16:32', 0),
(174, '1-06-07-010-56', 'Bed (Single Frame)', 'F-35', 0, '2020-11-03 07:16:32', 0),
(175, '1-06-07-010-57', 'Classic Chairs', 'F-35(A)', 0, '2020-11-03 07:16:32', 0),
(176, '1-06-07-010-58', 'Magazine Stand', 'F-36', 0, '2020-11-03 07:16:32', 0),
(177, '1-06-07-010-59', 'OPAC Stand', 'F-37', 0, '2020-11-03 07:16:32', 0),
(178, '1-06-07-010-60', 'Library Couch', 'F-38', 0, '2020-11-03 07:16:32', 0),
(179, '1-06-07-010-61', 'Emergency Station', 'F-39', 0, '2020-11-03 07:16:32', 0),
(180, '1-06-07-010-62', 'Laboratory Chemistry Table', 'F-40', 0, '2020-11-03 07:16:32', 0),
(181, '1-06-07-010-63', 'Speech Cubicle', 'F-42', 0, '2020-11-03 07:16:32', 0),
(182, '1-06-07-010-64', 'Monoblocks Chair', 'F-34(A)', 0, '2020-11-03 07:16:32', 0),
(184, '1-06-05-990-33', 'Electronic Total Station', 'E-104', 0, '2020-11-03 07:16:32', 0),
(185, '1-06-05-990-34', 'Automatic Level', 'E-105', 0, '2020-11-03 07:16:32', 0),
(186, NULL, 'Accession book (long)', '155-001-0001-0001', 0, '2020-11-23 05:32:31', 0),
(187, '', 'Arch file (A4)', 'Sample', 5, '2020-11-23 05:32:31', 0),
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
(415, '1-03-01-011-01', 'Counter Table', 'F-52', 0, '2020-12-18 05:48:42', 361),
(416, '1-03-01-011-02', 'Baggage Counter', 'F-53', 0, '2020-12-18 05:49:57', 361),
(423, '', 'Table with chair', 'F-34(B)', 4, '2021-07-30 06:32:01', 10),
(424, '', 'Study table with chairs', 'F-34(C)', 4, '2021-07-30 06:38:39', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplydesc`
--

CREATE TABLE `tblsupplydesc` (
  `descID` int NOT NULL,
  `supplyID` int DEFAULT NULL,
  `supplyUnit` varchar(50) DEFAULT NULL,
  `supplyDesc` varchar(200) DEFAULT NULL,
  `supplyPurpose` varchar(150) DEFAULT NULL,
  `supplyPrice` decimal(15,3) DEFAULT NULL,
  `IsReplace` int DEFAULT '0',
  `replaceParts` varchar(255) DEFAULT NULL,
  `Consumable` varchar(25) DEFAULT NULL,
  `Warranty` int DEFAULT '0',
  `chartID_SPMO` int DEFAULT NULL,
  `chartID_Acc` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `no` int DEFAULT '0'
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
  `supTypeID` int NOT NULL,
  `supTypeCode` varchar(50) DEFAULT NULL,
  `supTypeName` varchar(150) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `No` int NOT NULL DEFAULT '0'
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
  `usedID` int NOT NULL,
  `poID` int NOT NULL DEFAULT '0',
  `supplyID` int NOT NULL DEFAULT '0',
  `descID` int DEFAULT '0',
  `usedQuantity` int NOT NULL DEFAULT '0',
  `risID` int NOT NULL DEFAULT '0',
  `risppeID` int NOT NULL DEFAULT '0',
  `icsID` int NOT NULL DEFAULT '0',
  `pareID` int NOT NULL DEFAULT '0',
  `issuanceNew` int NOT NULL DEFAULT '1',
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usedCancelled` int NOT NULL DEFAULT '0',
  `no` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblwarehouse`
--

CREATE TABLE `tblwarehouse` (
  `warehouseID` int NOT NULL,
  `warehouseCode` varchar(20) DEFAULT NULL,
  `warehouseName` varchar(150) DEFAULT NULL,
  `no` int NOT NULL
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
  `warehousedetID` int NOT NULL,
  `warehouseID` int NOT NULL,
  `reissueID` int NOT NULL,
  `officerID` int DEFAULT NULL,
  `returnID` int DEFAULT NULL,
  `warehouseStatus` int DEFAULT '1',
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `No` int NOT NULL
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
  MODIFY `accountID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT for table `tblaccountlevel`
--
ALTER TABLE `tblaccountlevel`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbarcode`
--
ALTER TABLE `tblbarcode`
  MODIFY `barID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbuildingrepair`
--
ALTER TABLE `tblbuildingrepair`
  MODIFY `majorID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcampus`
--
ALTER TABLE `tblcampus`
  MODIFY `campusID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblchartaccount`
--
ALTER TABLE `tblchartaccount`
  MODIFY `chartID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tblcomponent`
--
ALTER TABLE `tblcomponent`
  MODIFY `componentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldispose`
--
ALTER TABLE `tbldispose`
  MODIFY `disposeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldisposeparts`
--
ALTER TABLE `tbldisposeparts`
  MODIFY `disposepartsID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfundcluster`
--
ALTER TABLE `tblfundcluster`
  MODIFY `fundID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblics`
--
ALTER TABLE `tblics`
  MODIFY `icsID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblicsdet`
--
ALTER TABLE `tblicsdet`
  MODIFY `icsdetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `logID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `tblmenu`
--
ALTER TABLE `tblmenu`
  MODIFY `menuID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tblofficerrecord`
--
ALTER TABLE `tblofficerrecord`
  MODIFY `officerID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbloffices`
--
ALTER TABLE `tbloffices`
  MODIFY `officeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblpap`
--
ALTER TABLE `tblpap`
  MODIFY `papID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpare`
--
ALTER TABLE `tblpare`
  MODIFY `pareID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblparedet`
--
ALTER TABLE `tblparedet`
  MODIFY `paredetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `paymentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpo`
--
ALTER TABLE `tblpo`
  MODIFY `poID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpurchase`
--
ALTER TABLE `tblpurchase`
  MODIFY `purchaseID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblreissue`
--
ALTER TABLE `tblreissue`
  MODIFY `reissueID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblreissuedet`
--
ALTER TABLE `tblreissuedet`
  MODIFY `reissuedetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblreturn`
--
ALTER TABLE `tblreturn`
  MODIFY `returnID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblris`
--
ALTER TABLE `tblris`
  MODIFY `risID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblrisdet`
--
ALTER TABLE `tblrisdet`
  MODIFY `risdetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblrisppe`
--
ALTER TABLE `tblrisppe`
  MODIFY `risppeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblrisppedet`
--
ALTER TABLE `tblrisppedet`
  MODIFY `risppedetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblstatus`
--
ALTER TABLE `tblstatus`
  MODIFY `statusID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tblstock`
--
ALTER TABLE `tblstock`
  MODIFY `stockID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `supplierID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tblsupply`
--
ALTER TABLE `tblsupply`
  MODIFY `supplyID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `tblsupplydesc`
--
ALTER TABLE `tblsupplydesc`
  MODIFY `descID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsupplytype`
--
ALTER TABLE `tblsupplytype`
  MODIFY `supTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsupplyused`
--
ALTER TABLE `tblsupplyused`
  MODIFY `usedID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblwarehouse`
--
ALTER TABLE `tblwarehouse`
  MODIFY `warehouseID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblwarehousedet`
--
ALTER TABLE `tblwarehousedet`
  MODIFY `warehousedetID` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
