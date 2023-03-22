-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2020 alle 23:24
-- Versione del server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `negozio`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `acquista`
--

CREATE TABLE IF NOT EXISTS `acquista` (
`Idacquista` int(11) NOT NULL,
  `Codutente` char(17) DEFAULT NULL,
  `Codprodotto` char(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dump dei dati per la tabella `acquista`
--

INSERT INTO `acquista` (`Idacquista`, `Codutente`, `Codprodotto`) VALUES
(1, 'pppppp', '04'),
(3, 'pppppp', '04'),
(7, 'web', '04'),
(8, 'web', '01'),
(11, 'ciao', '04'),
(25, 'casco', '02'),
(28, 'casco', '05'),
(30, 'casco', '07'),
(34, 'casco', '04'),
(38, 'casco', '04'),
(39, 'casco', '08'),
(40, 'casco', '08'),
(44, 'casco', '05'),
(45, 'casco', '02'),
(47, 'casco', '01'),
(49, 'casco', '01'),
(51, 'casco', '04'),
(54, 'casco', '04'),
(55, 'casco', '05'),
(57, 'casco', '05'),
(58, 'casco', '04'),
(59, 'casco', '04'),
(60, 'casco', '03'),
(62, 'casco', '04'),
(64, 'casco', '04'),
(73, 'casci', '05'),
(74, 'casci', '03');

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `Idcategoria` char(5) NOT NULL,
  `nomecat` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`Idcategoria`, `nomecat`) VALUES
('001', 'intimo'),
('002', 'indumenti'),
('003', 'cappotti');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE IF NOT EXISTS `prodotti` (
  `Idprodotto` char(5) NOT NULL DEFAULT '',
  `Nomeprod` char(30) DEFAULT NULL,
  `Prezzo` double DEFAULT NULL,
  `Codcategoria` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`Idprodotto`, `Nomeprod`, `Prezzo`, `Codcategoria`) VALUES
('01', 'pantaloni', 50.99, '002'),
('02', 'gonna', 45.85, '002'),
('03', 'maglione', 80, '002'),
('04', 'slip', 13.25, '001'),
('05', 'reggiseno', 27, '001'),
('06', 'calze', 5, '001'),
('07', 'giaccone', 100.5, '003'),
('08', 'impermeabile', 97.99, '003');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE IF NOT EXISTS `utenti` (
  `Idutente` char(17) NOT NULL,
  `Username` char(10) DEFAULT NULL,
  `Password` char(9) DEFAULT NULL,
  `Nome` char(20) DEFAULT NULL,
  `Cognome` char(25) DEFAULT NULL,
  `e_mail` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`Idutente`, `Username`, `Password`, `Nome`, `Cognome`, `e_mail`) VALUES
('123445', 'ASDA', 'ASD', 'SD', 'ASD', 'SDC'),
('aaaaa', 'aa', 'racheleco', 'saasdasdasd', 'aaaaa', 'sdasdasd@asdasdas'),
('ass', 'asd', 'as', 'asda', 'asdqdq', 'asdasda'),
('carla', 'puzzovio', 'dollaropo', 'maurizio', 'mengoli', 'asdasdasdasd'),
('casci', 'ancora', 'ancora', 'franco', 'pippi', 'eeee'),
('casco', 'pippi', '12345', 'paolo', 'bitta', 'pippo@libero.it'),
('ciao', 'ciao', 'ciao', 'ciao', 'ciao', 'ciao@gmail.com'),
('pppppp', 'pppppp', '12345', 'Francesco', 'Neri', 'francesconeri@gmail.com'),
('qqqq', 'QWE', 'QWEQQW', 'QWE', 'QEQWE', 'QWQW'),
('qqqqqq', 'qqqqqq', '67890', 'Paola', 'Verdi', 'paolaverdi@gmail.com'),
('qwerty', 'aaaa', 'bbbbbb', 'dddd', 'ccccc', 'qqqq'),
('sadasa', 'sadasd', 'sadasd', 'dsadasd', 'dasdasd', 'sdasd'),
('web', 'are', 'are', 'marco', 'neri', 'erty5'),
('ZZZZZZ', 'ZZZZZZZZ', 'ZZZZ', 'ZZZZ', 'ZZZZ', 'ZZZZ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acquista`
--
ALTER TABLE `acquista`
 ADD PRIMARY KEY (`Idacquista`), ADD KEY `Codutente` (`Codutente`), ADD KEY `Codprodotto` (`Codprodotto`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
 ADD PRIMARY KEY (`Idcategoria`);

--
-- Indexes for table `prodotti`
--
ALTER TABLE `prodotti`
 ADD PRIMARY KEY (`Idprodotto`), ADD KEY `Codcategoria` (`Codcategoria`), ADD KEY `Codcategoria_2` (`Codcategoria`);

--
-- Indexes for table `utenti`
--
ALTER TABLE `utenti`
 ADD PRIMARY KEY (`Idutente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acquista`
--
ALTER TABLE `acquista`
MODIFY `Idacquista` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `acquista`
--
ALTER TABLE `acquista`
ADD CONSTRAINT `acquista_ibfk_1` FOREIGN KEY (`Codutente`) REFERENCES `utenti` (`Idutente`),
ADD CONSTRAINT `acquista_ibfk_2` FOREIGN KEY (`Codprodotto`) REFERENCES `prodotti` (`Idprodotto`);

--
-- Limiti per la tabella `prodotti`
--
ALTER TABLE `prodotti`
ADD CONSTRAINT `prodotti_ibfk_1` FOREIGN KEY (`Codcategoria`) REFERENCES `categorie` (`Idcategoria`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
