-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: 62.149.150.142
-- Generato il: Mar 23, 2021 alle 15:51
-- Versione del server: 5.5.62-38.14-log
-- Versione PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Sql507088_1`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `soci`
--

CREATE TABLE IF NOT EXISTS `soci` (
  `user` varchar(12) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `anno` int(4) NOT NULL,
  `soprannome` varchar(20) NOT NULL,
  `classifica` varchar(3) NOT NULL,
  `stile` varchar(20) NOT NULL,
  `risultato` text NOT NULL,
  `gratis` int(1) NOT NULL,
  `illimitati` int(1) NOT NULL,
  `ricaricato` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `soci`
--

INSERT INTO `soci` (`user`, `nome`, `cognome`, `anno`, `soprannome`, `classifica`, `stile`, `risultato`, `gratis`, `illimitati`, `ricaricato`) VALUES
('admin', 'Circolo', 'Montevarchi', 1930, '', '', '', '', 0, 1, 0),
('guga', 'Marco', 'Catania', 1975, 'catanga', 'D6', 'Pallettaro', '', 0, 0, 0),
('mala', 'Alessandro', 'Malatesta', 1966, '', '', '', '', 0, 0, 0),
('lazze', 'Luca', 'Lazzerini', 1960, '', '', '', '', 0, 0, 0),
('giamma', 'Gianmarco', 'Guerrini', 1965, '', '', ' ', '', 0, 0, 0),
('romeo', 'Lido', 'Ghezzi', 1949, '', '', '', '', 0, 0, 0),
('anto61', 'Antonio', 'Francini', 1961, '', '', '', '', 0, 0, 0),
('super', 'Mario', 'Felloni', 1967, 'spiderman', '4/2', 'Attaccante da fondo', 'consiglio tutti i miei avversari di giocarmi sul diritto!! Il Righi è troppo forte per me ', 0, 0, 0),
('giacomo78', 'Giacomo', 'Stoppielli', 1978, '', '', '', '', 0, 0, 0),
('anto', 'Antonio', 'DeCristofaro', 1965, '', '', 'Serve And Volley', '', 0, 0, 0),
('emanuele', 'Emanuele', 'Cresti', 1966, '', '', '', '', 0, 0, 0),
('ezio00', 'Matteo', 'Cavoto', 2000, '', '', '', '', 0, 0, 0),
('lucio69', 'Luciano', 'Cavoto', 1969, '', '', '', '', 0, 0, 0),
('sabri', 'Sabrina', 'Armi', 1962, '', '', '', '', 0, 0, 0),
('samuele66', 'Samuele', 'Baldini', 1966, '', '', '', '', 0, 0, 0),
('tommy76', 'Tommaso', 'Bargellini', 1976, '', '', ' ', 'Vincitore Torneo Sociale Cat.NC 2010', 0, 0, 0),
('daniele', 'Daniele', 'Boni', 1978, '', '', '', '', 0, 0, 0),
('rapido', 'Marco', 'Mini', 1962, '', '', '', '', 0, 0, 0),
('hanzo_rsv', 'Jois', 'Manetti', 1976, '', '', ' ', '', 0, 1, 0),
('marco70', 'Marco', 'Paolacci', 1970, '', '', '', '', 0, 0, 0),
('riccardino26', 'Riccardo', 'Paolacci', 1999, '', '', '', '', 0, 0, 0),
('renzim', 'Massimiliano', 'Renzi', 1970, '', '4/6', 'Completo', '', 0, 0, 0),
('ale', 'Alessandro', 'Righi', 1975, 'manodepetra', '4.5', 'Completo', 'righi b. jois 6/4 5-0\r\nrighi/rossi b. jois fabbrini 6/3 5/7 6/3 6/4\r\nrighi ribatte jois 6/3 3/2\r\nrighi batte antinori 6/1 2/1 in 45 minuti', 0, 0, 0),
('lucio', 'Luciano', 'Rossetti', 1951, '', '', '', '', 0, 0, 0),
('pitena', 'Romano', 'Scala', 1954, '', '', '', '', 0, 0, 0),
('bigamore', 'Moreno', 'Bigazzi', 1954, '', '', '', '', 0, 0, 0),
('baco 54', 'Stefano', 'Casini', 1954, '', 'NC.', 'Pallettaro', '', 1, 0, 0),
('c83.stella', 'Chiara', 'Gonnelli', 1983, '', '', '', '', 1, 0, 0),
('maurino', 'Mauro', 'Nardi', 1983, 'Maurinchio', '4.1', ' ', 'alla ricerca di un 4.1...', 0, 1, 0),
('alex', 'Alessandro', 'Rosichetti', 1978, '', '', '', '', 0, 0, 0),
('pagliai', 'Roberto', 'Pagliai', 1954, '', '', '', '', 1, 0, 0),
('pieralli', 'Franco', 'Pieralli', 1953, 'tarango', 'ex ', ' ', 'sono il giocatore piu corretto del circolo!!!!e sono il secondo diritto piu forte del circolo dopo "il Taccari (Alberto)"....', 0, 1, 0),
('dona', 'Massimo', 'Donati', 1973, '', '', '', '', 0, 1, 0),
('coscine', 'Maurizio', 'Inghilesi', 1961, '', '', '', '', 0, 0, 0),
('manolo', 'Mauro', 'Manetti', 1946, '', '', '', '', 0, 0, 0),
('nalda', 'Andrea', 'Naldini', 1964, '', '', ' ', '', 0, 0, 0),
('vale', 'Valerio', 'Viticchi', 1940, '', '', '', '', 0, 0, 0),
('nadal', 'Alessandro', 'Aliverti', 1985, '**RAFA**', '4.5', 'Attaccante da fondo', '', 0, 0, 0),
('fainacorso', 'Federico', 'Corsini', 1976, '', '', 'Attaccante da fondo', '', 0, 0, 0),
('delfus', 'Delfo', 'Neri', 1936, '', '', '', '', 0, 0, 0),
('pampa', 'Mauro', 'Pampaloni', 1976, 'il pampa', '4nc', 'Attaccante da fondo', '1turno torneo sociale c\r\n\r\n', 0, 0, 0),
('brax1983', 'Francesco', 'Brandi', 1983, '', '', '', '', 0, 0, 0),
('ricca', 'Riccardo', 'Mazzoni', 1970, '', '', ' ', '', 0, 0, 0),
('giorgia', 'Giorgia', 'Mascolo', 2000, '', '', ' ', '', 0, 0, 1),
('mascolo', 'Riccardo', 'Mascolo', 1968, '', '', ' ', '', 0, 0, 1),
('gaggia', 'Piero', 'Gaggiani', 1948, '', '', ' ', '', 0, 0, 0),
('fernando', 'Fernando', 'Fabbrini', 1965, 'Gambesecche', 'nc', 'Pallettaro', '', 0, 0, 0),
('carlino', 'Carlo', 'Dolfi', 1956, '', '', ' ', '', 0, 0, 0),
('marcus21', 'Alberto', 'Rossi', 1973, '', '', '', '', 0, 0, 0),
('keef', 'Lorenzo', 'Crociani', 1995, '', '', ' ', '', 0, 0, 0),
('elisaedario', 'Elisa', 'Zamboni', 1973, '', '', '', '', 0, 0, 0),
('liso', 'Alessandro', 'Antinori', 1972, '', '', '', '', 0, 0, 0),
('elia2000', 'Elia', 'Baldini', 2000, '', '', ' ', '', 0, 0, 0),
('angela', 'Angela', 'Barone', 1973, '', '', '', '', 0, 0, 0),
('marco', 'Marco', 'Casini', 2001, '', '', ' ', '', 0, 0, 0),
('kalle', 'Luca', 'Bazzanti', 1964, '', '', ' ', '', 0, 0, 0),
('pietro', 'Pietro', 'Bencini', 1951, '', '', ' ', '', 0, 0, 0),
('mabene', 'Mariano', 'Capasso', 1948, '', '', 'Attaccante da fondo', '', 0, 0, 0),
('sergio', 'Sergio', 'Carsughi', 1956, '', '', ' ', '', 0, 0, 0),
('alessandro', 'Alessandro', 'Mazzucco', 1992, '', '', ' ', '', 0, 0, 0),
('serena', 'Serena', 'Gaggiani', 1990, '', '', '', '', 0, 0, 0),
('almer', 'Alessandro', 'Merli', 1959, '', '', ' ', '', 0, 0, 0),
('mugnai', 'Stefano', 'Mugnai', 1969, '', '', ' ', '', 0, 0, 1),
('gabri', 'Gabriele', 'Mugnai', 1998, '', '', ' ', '', 0, 0, 1),
('guest3', 'OSPITE', 'NONSOCIO', 1990, '', '', '', '', 0, 1, 0),
('renzigal', 'Galeazzo', 'Renzi', 1943, '', '', ' ', '', 0, 0, 0),
('andrearapacc', 'Andrea', 'Rapaccini', 1951, '', '', '', '', 0, 0, 0),
('romignano', 'Riccardo', 'Rossi', 1961, '', '', ' ', '', 0, 0, 0),
('tiziano', 'Tiziano', 'Sandroni', 1973, 'tizzy', '', ' ', 'gioco merc/ven pausa pranzo\r\n3357213320', 0, 0, 0),
('simonti', 'Leonardo', 'Simonti', 1973, '', '', ' ', '', 0, 0, 1),
('sinattiroger', 'Matteo', 'Sinatti', 1979, '', '', ' ', '', 0, 0, 0),
('massi', 'Massimiliano', 'Tassi', 1976, '', '4.2', 'Completo', 'Istruttore 1° grado, diploma Isef,     \r\n', 0, 0, 1),
('matri', 'Stefano', 'Toti', 1960, '', '', ' ', '', 0, 0, 0),
('raffa', 'Raffaella', 'Verdi', 1970, '', '', ' ', '', 0, 0, 0),
('marghe', 'Margherita', 'Casprini', 2001, '', '', ' ', '', 0, 0, 0),
('mirio', 'Mirio', 'ButtiFratini', 1945, '', '', ' ', '', 0, 0, 0),
('chella', 'Mario', 'Chellini', 1940, '', '', ' ', '', 0, 0, 0),
('ampelio', 'PierGiorgio', 'Peri', 1946, '', '', ' ', '', 0, 0, 0),
('et', 'Emanuele', 'Tortoli', 1983, '', '', ' ', '', 0, 1, 0),
('ale73', 'Alessandro', 'Bianchi', 1973, '', '', '', '', 0, 0, 0),
('bartu', 'Sergio', 'Bartucci', 1952, '', '', ' ', 'ora come ora vinco solo con il baco.......', 0, 1, 0),
('dosmo', 'Dosmo', 'Borgioli', 1985, '', '', 'Pallettaro', '', 1, 0, 0),
('francescaban', 'Francesca', 'Bani', 1972, '', '', '', '', 0, 0, 0),
('filippo.nomp', 'Filippo', 'Nompari', 1975, '', '', '', '', 0, 0, 0),
('banicarlo', 'Carlo', 'Bani', 1977, '', '', '', '', 0, 0, 0),
('cappelletti', 'Luciano', 'Cappelletti', 1954, '', '', '', '', 1, 0, 0),
('claudioc', 'Claudio', 'Chiassai', 1950, '', '', ' ', '', 1, 0, 0),
('cora', 'Alessandro', 'Coradeschi', 1957, '', '', ' ', '', 1, 0, 0),
('cristofani', 'Alberto', 'Cristofani', 1953, '', '', ' ', '', 1, 0, 0),
('mgrifoni', 'Marco', 'Grifoni', 1976, '', '', '', '', 0, 0, 0),
('giamma25', 'Giammarco', 'Sicuro', 1983, '', '', ' ', '', 1, 0, 0),
('falcio', 'Francesco', 'Falcioni', 1969, '', '', ' ', '', 1, 0, 0),
('cristina03', 'Cristina', 'Bardelloni', 1975, '', '', '', '', 0, 0, 0),
('mazinga', 'Giovanni', 'Guerrini', 1960, '', '', ' ', '', 0, 1, 0),
('villapetrea', 'Rodolfo', 'Mannini', 1946, '', '', ' ', '', 0, 1, 0),
('flamig', 'Flavia', 'Migliorini', 1971, '', '', ' ', '', 0, 1, 0),
('manfri', 'Rudi', 'Migliorini', 1958, '', '', ' ', '', 1, 0, 0),
('jocri', 'Johnny', 'Caneschi', 1971, '', '', '', '', 0, 0, 0),
('numerouno', 'Leonardo', 'Paterniti', 1957, '', '', ' ', '', 1, 0, 0),
('giomax', 'Massimiliano', 'Renai', 1973, '', '', ' ', '', 0, 1, 0),
('patagonia', 'PaoloAntonio', 'Ricci', 1958, '', '', ' ', '', 1, 0, 0),
('quercia', 'Andrea', 'Rossi', 1970, '', '', 'Serve And Volley', '', 0, 1, 0),
('fitodado', 'Corrado', 'Salvini', 1966, '', '', ' ', '', 1, 0, 0),
('buccia86', 'Alberto', 'Buccianti', 1986, '', '', '', '', 0, 0, 0),
('vucinic', 'Alberto', 'Taccari', 1989, 'scott', '3.1', 'Attaccante da fondo', 'sul diritto... del bassini maiiiii....gaaaaaaaaaaaaaaaaaaa!!!', 0, 1, 0),
('corrado', 'Corrado', 'Cattabiani', 1959, '', '', ' ', '', 0, 0, 0),
('dudano4', 'Giuliano', 'Franceschetti', 1942, '', '', ' ', '', 0, 0, 1),
('verdelli', 'Roberto', 'Verdelli', 1946, '', '', ' ', '', 0, 0, 0),
('batigol', 'Alfredo', 'Ferrini', 1968, '', '', ' ', '', 0, 0, 0),
('sauro56', 'Sauro', 'Innocenti', 1956, '', '', ' ', '', 0, 0, 0),
('riccardocion', 'Riccardo', 'Cioncolini', 1975, '', '', '', '', 0, 0, 0),
('mosconi', 'Francesca', 'Mosconi', 1972, '', '', ' ', '', 0, 0, 0),
('fabio', 'Fabio', 'Nizzoli', 1964, '', '', ' ', '', 0, 0, 0),
('viviana', 'Vivenz', 'Nesi', 1976, '', '', '', '', 0, 0, 0),
('gianmarco', 'gianmarco', 'rosseti', 1978, '', '', '', '', 0, 0, 0),
('MonteTinacci', 'Alessandro', 'Tinacci', 1968, '', '', '', '', 0, 0, 0),
('', 'Riccardo', 'Cioncolini', 1930, '', '', '', '', 0, 0, 0),
('150965', 'Daniele', 'Visani', 1965, '', '4/4', 'Completo', '', 0, 0, 0),
('tommi', 'Tommaso', 'Fei', 1999, '', '', ' ', '', 0, 0, 0),
('gino', 'Daniele ', 'Bernacchioni', 1982, '', '4.6', ' ', '', 0, 0, 0),
('gnnterranova', 'Giovanni', 'Terranova', 1959, '', '', ' ', '', 0, 0, 0),
('elena', 'Elena', 'Romoli', 1997, '', '', ' ', '', 0, 0, 0),
('guest1', 'NonSocio', 'Under', 2011, '', '', '', '', 0, 0, 0),
('guest2', 'NonSocio', 'Over', 1945, '', '', '', '', 0, 0, 0),
('guest3', 'OSPITE', 'NONSOCIO', 1990, '', '', '', '', 0, 0, 0),
('baro', 'Roberto', 'Barone', 1960, '', '', '', '', 0, 1, 0),
('calvettina', 'Margherita', 'Calvetti', 1998, '', '', '', '', 0, 0, 0),
('alberto3', 'Tennis', '2', 1975, '', '', '', '', 0, 1, 0),
('more', 'Moreno', 'Capanni', 1957, '', '', '', '', 0, 0, 0),
('allen', 'allenamento', 'agonistica', 1975, '', '', '', '', 0, 1, 0),
('matteo87', 'Matteo', 'Leggio', 1987, '', '', '', '', 0, 0, 0),
('albe2', 'Tennis', 'Junior', 1969, '', '', '', '', 0, 1, 0),
('albe1', 'Tennis', 'Adulti', 1969, '', '', '', '', 0, 1, 0),
('alberto', 'Tennis', '1', 1969, '', '', '', '', 0, 1, 0),
('spigola', 'Paolo', 'Panichi', 1940, '', '', '', '', 0, 0, 0),
('laura', 'Laura', 'Carbonai', 1974, '', '', '', '', 0, 0, 0),
('ricca94', 'Riccardo', 'Guerrini', 2004, '', '', ' ', '', 0, 0, 0),
('valeria', 'Valeria', 'Pieralli', 1994, '', '', '', '', 0, 1, 0),
('scatenotti', 'Andrea', 'Tata', 1963, '', '', '', '', 0, 0, 0),
('', 'Andjelic', 'Mia', 1999, '', '', '', '', 0, 0, 0),
('lori', 'Lorenzo', 'Matteini', 2000, '', '', '', '', 0, 0, 0),
('lala', 'Alice', 'Ferrini', 2001, '', '', '', '', 0, 0, 0),
('massimo70', 'Massimo', 'Vilardi', 1970, '', '', 'Pallettaro', '', 0, 0, 0),
('serenella', 'Roberto', 'Lucaccini', 1950, '', '', '', '', 0, 0, 0),
('rossi94', 'Jacopo', 'Rossi', 1994, '', '', '', '', 0, 0, 0),
('rossi61', 'Maurizio', 'Rossi', 1961, '', '', '', '', 0, 0, 0),
('fede', 'Federico', 'Ariano', 1968, '', '', '', '', 0, 0, 0),
('prova', 'prova', 'prova', 1975, '', '', '', '', 0, 0, 0),
('Chiara', 'Chiara', 'Scarnicci', 1975, '', '', '', '', 0, 0, 0),
('oliva', 'Oliva', 'Primo', 1948, '', '', '', '', 0, 0, 0),
('edoardo', 'Edoardo', 'Templari', 1993, '', '4.6', ' ', '', 0, 0, 0),
('andjelic', 'Mia', 'Andjelic', 1999, '', '', '', '', 0, 0, 0),
('france', 'Francesco', 'Barone', 1997, '', '', '', '', 1, 0, 0),
('andrea1976', 'Andrea', 'Morbidelli', 1976, '', '', '', '', 0, 0, 0),
('pier', 'Piergiovanni', 'Rossi', 2007, '', '', '', '', 1, 0, 0),
('fabrizio ', 'Fabrizio', 'Renzi', 1972, '', '', '', '', 0, 0, 0),
('niki', 'Niccolò', 'Rossi', 1998, '', '', '', '', 0, 0, 0),
('fiorentina', 'Paolo', 'Donzellini', 1950, '', '', '', '', 0, 1, 0),
('gago', 'Leonardo', 'BaldiniTosi', 1970, '', '', '', '', 0, 0, 0),
('toro', 'Giancarlo', 'Nardi', 1948, '', '', '', '', 1, 0, 0),
('giulina89', 'Giulia', 'Baldi', 1989, '', '', '', '', 0, 0, 0),
('veronica', 'Veronica', 'Mascolo', 2002, '', '', '', '', 0, 0, 0),
('brodo', 'Mario', 'Baldini', 1955, '', '', '', '', 0, 0, 0),
('loredero', 'Lorenzo', 'Derobertis', 1969, '', '', '', '', 0, 0, 0),
('fededero', 'Federico', 'Derobertis', 2006, '', '', '', '', 0, 0, 0),
('bex64', 'Stefano', 'Berti', 1964, '', '', '', '', 0, 0, 0),
('paolino', 'Paolo', 'Menci', 1982, '', '', '', '', 0, 0, 0),
('armchen', 'Guido', 'Braccini', 2005, '', '', ' ', '', 0, 0, 0),
('ferdi', 'Ferdinando', 'Bianchi', 2002, '', '', '', '', 0, 0, 0),
('lcu24', 'Luca', 'Arrotini', 1965, '', '', '', '', 0, 0, 0),
('armchen2', 'Roberto', 'Braccini', 1967, '', '', '', '', 0, 0, 0),
('lucapini', 'Luca', 'Pinizzotto', 1984, '', '', '', '', 0, 0, 0),
('fm77', 'Francesca', 'Mazziotti', 1977, '', '', '', '', 0, 0, 0),
('claudiodelv', 'Claudio', 'Delvita', 1968, '', '', '', '', 0, 0, 0),
('', 'Gianluca', 'Biagioni', 0, '', '', '', '', 0, 0, 0),
('bubu', 'Gianluca', 'Biagioni', 2005, '', '', '', '', 0, 0, 0),
('federico bru', 'Federico', 'Bruschi', 1976, '', '', '', '', 0, 0, 0),
('bronzi marco', 'Marco', 'Bronzi', 1984, '', '', '', '', 0, 0, 0),
('paolo arturo', 'Paolo', 'Calvo', 1946, '', '', '', '', 0, 0, 0),
('alberto74', 'Stefano', 'Calvo', 1974, '', '', '', '', 0, 0, 0),
('richelieu', 'Marco', 'Taccari', 1953, '', '', '', '', 0, 1, 0),
('losiflores', 'Lorenzo', 'Losi', 1991, '', '', '', '', 0, 0, 0),
('lollo', 'Lorenzo', 'Dolfi', 1981, '', '', '', '', 0, 0, 0),
('logan86', 'Tiziano', 'Meoni', 1986, '', '', '', '', 0, 0, 0),
('ina', 'Valentina', 'Billi', 1984, '', '', '', '', 0, 0, 0),
('tlin', 'Andrea', 'Otelli', 1981, '', '', '', '', 0, 0, 0),
('sere', 'Serena', 'Bonechi', 1985, '', '', '', '', 0, 0, 0),
('taribo', 'Massimo', 'Rinaldi', 1968, '', '', '', '', 0, 0, 0),
('lobrill', 'Lorenzo', 'Brilli', 1971, '', '', '', '', 0, 0, 0),
('viola', 'Giorgio', 'Biagianti', 1959, '', '', '', '', 0, 0, 0),
('fabry7', 'Fabrizio', 'Frosinini', 1973, '', '', '', '', 0, 0, 0),
('paolo', 'Paolo', 'Pieraccini', 1955, '', '', '', '', 0, 0, 0),
('gatto', 'marco', 'faenzi', 1959, '', '', '', '', 1, 0, 0),
('kkimi', 'Alessandro', 'Innocenti', 1971, '', '', '', '', 0, 0, 0),
('melissa', 'Francesco', 'Tronci', 1944, '', '', '', '', 0, 0, 0),
('trinità', 'Simone', 'Becattini', 1969, '', '', '', '', 0, 0, 0),
('cambo', 'Marco', 'Camiciottoli', 1976, '', '', '', '', 0, 0, 0),
('milan', 'Luciano', 'Fabbri', 1961, '', '', '', '', 0, 0, 0),
('maurizio', 'Maurizio', 'Ciabatti', 1965, '', '', '', '', 0, 0, 0),
('cristian296', 'Cristian', 'Ravagni', 1976, '', '', '', '', 0, 0, 0),
('mario', 'Mario', 'Soldani', 1971, '', '', '', '', 0, 0, 0),
('geppetto', 'Marco', 'Serboli', 1976, '', '', '', '', 0, 0, 0),
('fgobbini', 'Fabrizio', 'Gobbini', 1974, '', '3.5', 'Attaccante da fondo', '', 0, 0, 0),
('igala', 'Tommaso', 'Galassini', 1981, '', '', '', '', 0, 0, 0),
('roberto', 'Roberto', 'Corsini', 1962, '', '', '', '', 0, 0, 0),
('alex1', 'Alessandro', 'Biagioni', 1966, '', '', '', '', 0, 0, 0),
('paolos', 'Paolo', 'Semplici', 1966, '', '', '', '', 0, 0, 0),
('giocoli', 'Marco', 'Cannoni', 1975, '', '', '', '', 0, 0, 0),
('claudia', 'Alessio', 'Fantini', 1981, '', '', '', '', 0, 0, 0),
('', 'CurrÃ²', 'Aldo', 1957, '', '', '', '', 0, 0, 0),
('nizzoli', 'Niccolò', 'Nizzoli', 1999, '', '', '', '', 0, 0, 0),
('', 'Aldo', 'Curro''', 1957, '', '', '', '', 0, 0, 0),
('febo79', 'Andrea', 'Ferrini', 1979, '', '', '', '', 0, 0, 0),
('marcociolli', 'Marco', 'Ciolli', 1969, '', '', '', '', 0, 0, 0),
('tobia', 'Marcello', 'Merlini', 1947, '', '', '', '', 0, 0, 1),
('melissa', 'Francesco', 'Tronci', 1944, '', '', '', '', 0, 0, 0),
('matteto', 'Angela', 'Caraccia', 1974, '', '', '', '', 0, 0, 0),
('fatai', 'Marco', 'Fatai', 1966, '', '', '', '', 0, 0, 0),
('fiaffia', 'simone', 'fabianelli', 1992, '', '', '', '', 0, 0, 0),
('leo', 'Raffaella', 'Rossi', 1974, '', '', '', '', 0, 0, 0),
('jek', 'Giacomo', 'Buffoni', 1976, '', '', '', '', 1, 0, 0),
('max1', 'Massimo', 'Gaggiani', 1957, '', '', '', '', 0, 0, 0),
('miniati1970', 'Samuele', 'Miniati', 1970, '', '', '', '', 0, 0, 0),
('gallo', 'Mario', 'Galletti', 1946, '', '', '', '', 1, 0, 0),
('matteto', 'Angela', 'Caraccia', 1974, '', '', '', '', 0, 0, 0),
('albe68', 'Alberto', 'Corsi', 1968, '', '', '', '', 0, 0, 0),
('pmolinu', 'Pietro', 'Molinu', 1958, '', '', '', '', 0, 0, 0),
('lanini', 'Fabio', 'Lanini', 1969, '', '', '', '', 0, 0, 0),
('mumelter', 'Romano', 'Mumelter', 1963, '', '', '', '', 0, 0, 0),
('tborgia', 'Teresa', 'Borgia', 1956, '', '', '', '', 0, 1, 0),
('giovanna', 'Giovanna', 'Matteini', 1958, '', '', '', '', 0, 0, 0),
('andrearapacc', 'Andrea', 'Rapaccini', 1951, '', '', '', '', 0, 0, 0),
('lucab', 'Luca', 'Bencini', 1966, '', '', '', '', 0, 0, 0),
('afranci', 'Alessandro', 'Franci', 1973, '', '', '', '', 0, 0, 0),
('jayjay70', 'Luigi', 'Matteini', 1970, '', '', '', '', 0, 0, 0),
('mstennis', 'Marco', 'Sani', 1982, '', '', '', '', 0, 0, 0),
('fil.tan', 'Filippo', 'Tanzi', 1979, '', '', '', '', 0, 0, 0),
('badii', 'Francesco', 'Badii', 1970, '', '', '', '', 0, 0, 0),
('deasystem', 'Andrea', 'Fratini', 1979, '', '', '', '', 0, 0, 0),
('robertoboyer', 'Roberto', 'Boyer', 1947, '', '', '', '', 0, 1, 0),
('kandokan', 'Maurizio', 'Baldi', 1970, '', '', '', '', 0, 0, 0),
('', 'Fei', 'Annalisa', 1988, '', '', '', '', 0, 0, 0),
('annalisa', 'Annalisa', 'Fei', 1988, '', '', '', '', 0, 0, 0),
('andrea', 'Andrea', 'Rossi', 1984, '', '', '', '', 0, 0, 0),
('fiorai', 'Giorgio', 'Fiorai', 2004, '', '', '', '', 0, 0, 0),
('fiorai1', 'Franco', 'Fiorai', 1967, '', '', '', '', 0, 0, 0),
('banchelli', 'Massimo', 'Banchelli', 1959, '', '', '', '', 0, 0, 0),
('zoe', 'Giovanni', 'Tracchi', 1957, '', '', '', '', 0, 0, 0),
('tiezzi', 'Filippo', 'Tiezzi', 1974, '', '', '', '', 0, 0, 0),
('Massimo', 'Massimo', 'Maccioni', 1969, '', '', '', '', 0, 0, 0),
('gracesanto7', 'Graziano', 'Santopietro', 1984, '', '', '', '', 0, 0, 0),
('LStennis', 'Lorenzo', 'Sani', 1989, '', '', '', '', 0, 0, 0),
('', 'Ilaria', 'Mannini', 1974, '', '', '', '', 0, 1, 0),
('sampdoria', 'Andrea', 'Evangelisti', 1972, '', '', '', '', 0, 0, 0),
('saniste', 'Stefano', 'Sani', 1981, '', '', '', '', 0, 0, 0),
('carresi', 'Stefano', 'Carresi', 1961, '', '', '', '', 0, 0, 0),
('alessandro71', 'Alessandro', 'Tosi', 1971, '', '', '', '', 0, 0, 0),
('alfonso', 'Alfonso', 'Pecoraro', 1970, '', '', '', '', 0, 0, 0),
('mcappe19', 'Margherita', 'Cappelletti', 1989, '', '', '', '', 0, 1, 0),
('albertoricci', 'Alberto', 'Ricci', 1984, '', '', '', '', 0, 0, 0),
('rome.61@libe', 'Fulvia', 'Romei', 1961, '', '', '', '', 0, 0, 0),
('emanuelepala', 'Emanuele', 'Palai', 1992, '', '', '', '', 0, 0, 0),
('massi72', 'Massimiliano', 'Sargentelli', 1972, '', '', '', '', 0, 0, 0),
('torricelli', 'Maurizio', 'Torricelli', 1973, '', '', '', '', 0, 0, 0),
('rine', 'Rinaldo', 'Melzi', 1957, '', '', '', '', 0, 0, 0),
('bea', 'Beatrice', 'Panichi', 1970, '', '', '', '', 0, 0, 0),
('Tassi88', 'Francesco', 'Tassi', 1988, '', '', '', '', 0, 0, 0),
('rapa', 'Lorenzo', 'Rapaccini', 1981, '', '', '', '', 0, 0, 0),
('greme', 'Riccardo', 'Grementieri', 1986, '', '', '', '', 0, 0, 0),
('petramazzo', 'Petra', 'Mazzola', 1981, '', '', '', '', 0, 0, 0),
('lorenzo', 'Lorenzo', 'Albizzi', 1993, '', '', '', '', 0, 0, 0),
('borri', 'Stefano', 'Borri', 1978, '', '', '', '', 0, 0, 0),
('stella', 'Stella', 'Scarnicci', 1972, '', '', '', '', 0, 0, 0),
('max3', 'Max', 'Gaggiani', 1957, '', '', '', '', 0, 0, 0),
('peter', 'Pietro Antonio', 'Molinu', 1958, '', '', '', '', 0, 0, 0),
('', 'Maurizio', 'Ciabatti', 1965, '', '', '', '', 0, 0, 0),
('ciabatti', 'Eleonora', 'Ciabatti', 2001, '', '', '', '', 0, 0, 0),
('lapo', 'Lapo', 'Prisinzano', 2003, '', '', '', '', 0, 0, 0),
('trava', 'Daniele', 'Travaglini', 1964, '', '', '', '', 0, 0, 0),
('andreap', 'Andrea', 'Patricolo', 1999, '', '', '', '', 0, 0, 0),
('ggioli', 'Gianluca', 'Gioli', 1977, '', '', '', '', 0, 0, 0),
('teo76', 'Matteo', 'Del Sala', 1976, '', '', '', '', 0, 0, 0),
('rotesi', 'Elisabetta', 'Rotesi', 1963, '', '', '', '', 0, 0, 0),
('vannini', 'Alessio', 'Vannini', 1987, '', '', '', '', 0, 0, 0),
('bardelloni', 'Luca', 'bardelloni', 1972, '', '', '', '', 0, 0, 0),
('rubrigi', 'Nilo', 'Rubrigi', 1947, '', '', '', '', 0, 0, 0),
('meucci', 'Leonardo', 'Meucci', 2002, '', '', '', '', 0, 0, 0),
('matteini', 'Francesco', 'Matteini', 1989, '', '', '', '', 0, 0, 0),
('', 'Simona', 'Agostini', 1930, '', '', '', '', 0, 0, 0),
('agostini', 'Simona', 'Agostini', 1972, '', '', '', '', 0, 0, 0),
('innocenti', 'Gianluca', 'Innocenti', 1988, '', '', '', '', 0, 0, 0),
('massini', 'Lorenzo', 'Massini', 1988, '', '', '', '', 0, 0, 0),
('orlandi', 'Ugo', 'Orlandi', 1963, '', '', '', '', 0, 0, 0),
('mannini', 'Simona', 'Mannini', 1980, '', '', '', '', 0, 1, 0),
('', 'roberto', 'corsini', 1962, '', '', '', '', 0, 0, 0),
('minatti', 'Nicola', 'Minatti', 1991, '', '', '', '', 0, 0, 0),
('bencivenni', 'Gian Carlo', 'Bencivenni', 1955, '', '', '', '', 0, 0, 0),
('ornani', 'Alfonso', 'Ornani', 1985, '', '', '', '', 0, 0, 0),
('scop66', 'Massimo', 'Scopelliti', 1966, '', '', '', '', 0, 0, 0),
('cirigni', 'Alessandro', 'Cirigni', 1987, '', '', '', '', 0, 0, 0),
('lalli', 'Massimiliano', 'Lalli', 1990, '', '', '', '', 0, 0, 0),
('valenti', 'Matteo', 'Valenti', 1994, '', '', '', '', 0, 0, 0),
('delvita', 'Claudio ', 'Del Vita', 1968, '', '', '', '', 0, 0, 0),
('forzoni', 'Mario', 'Forzoni', 1962, '', '', '', '', 0, 0, 0),
('leone', 'Mauro', 'Leone', 1986, '', '', '', '', 0, 0, 0),
('desantis', 'marco', 'de santis', 1984, '', '', '', '', 0, 0, 0),
('mosca', 'Matteo', 'Mosca', 1976, '', '', '', '', 0, 0, 0),
('chienni', 'Marco', 'Chienni', 1981, '', '', '', '', 0, 0, 0),
('grassi', 'Tommaso', 'Grassi', 1971, '', '', '', '', 0, 0, 0),
('', 'Evmorfiadis', 'Emmanouil', 1986, '', '', '', '', 0, 0, 0),
('mevmo86', 'Emmanouil', 'Evmorfiadis', 1986, '', '', '', '', 0, 0, 0),
('gianni ', 'Gianni', 'Cappelletti', 1981, '', '', '', '', 1, 0, 0),
('parivir', 'Mattia', 'Parivir', 1991, '', '', '', '', 0, 0, 0),
('parivir', 'Mattia', 'Parivir', 1991, '', '', '', '', 0, 0, 0),
('giovanni', 'Giovanni', 'Taccari', 1991, '', '', '', '', 0, 0, 0),
('riccardo', 'Riccardo', 'Orlandi', 1985, '', '', '', '', 0, 0, 0),
('righeschi', 'Mirko', 'Righeschi', 1973, '', '', '', '', 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
