--
-- Struttura della tabella `utenti`
--

CREATE TABLE IF NOT EXISTS `utentiold` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `ob_username` varchar(12) NOT NULL,
  `ob_password` varchar(12) NOT NULL,
  `ob_nome` varchar(20) NOT NULL,
  `ob_cognome` varchar(20) NOT NULL,
  `ob_indirizzo_email` varchar(40) NOT NULL,
  `telefono` varchar(14) NOT NULL,
  `credito` float NOT NULL,
  `ob_amici` int(1) NOT NULL,
  `ob_anno_nascita` int(4) NOT NULL,
  `privilegi` int(1) NOT NULL,
  `prenota` int(1) NOT NULL,
  `certificato` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utentiold` (`ob_username`, `ob_password`, `ob_nome`, `ob_cognome`, `ob_indirizzo_email`, `telefono`, `credito`, `ob_amici`, `ob_anno_nascita`, `privilegi`, `prenota`, `certificato`) VALUES
('admin', '11752', 'Circolo', 'Montevarchi', 'tennisclubmontevarchi@alice.it', '0559102248', 0.5, 0, 1930, 0, 12, NULL),
('pagliai', 'Robino', 'Roberto', 'Pagliai', 'pagliai.roberto@virgilio.it', '3392736210', 42, 1, 1954, 0, 0, '2020-09-19'),
('guga', 'coltricat', 'Marco', 'Catania', 'coltricat75@gmail.com', '393 5078790', -1.25, 1, 1975, 0, 0, '2019-09-24'),
('giamma', 'gefar', 'Gianmarco', 'Guerrini', 'g.guerrini@gefar.it', '', 15, 0, 1965, 0, 0, '2019-09-20'),
('mala', '123456', 'Alessandro', 'Malatesta', 'alessandromalatesta123@gmail.com', '393 9723599', 24.5, 0, 1966, 0, 0, NULL),
('pieralli', 'broccolo', 'Franco', 'Pieralli', 'pieralli.franco@gmail.com', '3473436616', 0, 1, 1953, 2, 0, '2020-04-08'),
('hanzo_rsv', 'apriliarsv', 'Jois', 'Manetti', 'hanzo_rsv@yahoo.it', '3289434972', -1.75, 1, 1976, 0, 0, NULL),
('anto', '13061965', 'Antonio', 'DeCristofaro', 'antoniodecri@msn.com', '327/1497258', 0.75, 1, 1965, 0, 0, NULL),
('nalda', '170225', 'Andrea', 'Naldini', 'a.naldini@areassociati.it', '3473788531', 1, 1, 1964, 0, 0, '2021-04-03'),
('super', 'mario', 'Mario', 'Felloni', 'fellonimario@gmail.com', '3483864931', 44.5, 1, 1967, 0, 0, '2020-01-25'),
('tommy76', 'feliciano76', 'Tommaso', 'Bargellini', 'tbpersonal@virgilio.it', '', 8, 0, 1976, 0, 0, NULL),
('marco70', 'wilson70', 'Marco', 'Paolacci', 'marchino240170@gmail.com', '329/8570763', 41, 1, 1970, 0, 0, '2020-03-15'),
('dona', 'donatennis', 'Massimo', 'Donati', 'donati6060@gmail.com', '3356119334', 1, 1, 1973, 2, 0, '2020-03-07'),
('lazze', 'lela61', 'Luca', 'Lazzerini', 'lazzeriniluca@alice.it', '335/5422487', 29.5, 1, 1960, 0, 0, '2020-06-27'),
('baco 54', '11081954', 'Stefano', 'Casini', 'stefano-casini@alice.it', '335361255', 0, 1, 1954, 7, 0, '2019-10-01'),
('delfus', '1936', 'Delfo', 'Neri', 'delfus1936@gmail.com', '3381579923', 0, 1, 1936, 0, 0, NULL),
('daniele', 'extreme', 'Daniele', 'Boni', 'daniele.boni@hotmail.it', '3470855898', 39.5, 1, 1978, 0, 0, '2020-03-11'),
('bigamore', 'FINESTRA', 'Moreno', 'Bigazzi', 'moreno.bigazzi@yahoo.it', '3474490200', 27, 1, 1954, 0, 0, '2020-09-29'),
('ale', '1231975', 'Alessandro', 'Righi', 'righialessandro752@gmail.com', '349/3058928', 27.5, 1, 1975, 0, 0, '2022-01-08'),
('fiorai', 'fiorai', 'Giorgio', 'Fiorai', 'tennisclubmontevarchi@alice.it', '0559789366', 12.5, 1, 2004, 0, 0, NULL),
('romeo', '4649', 'Lido', 'Ghezzi', 'tania1955@libero.it', '3490960269', 1.5, 1, 1949, 0, 0, '2019-10-10'),
('riccardino26', 'Riccardino', 'Riccardo', 'Paolacci', 'luciaserboli@alice.it', '3313454885', 0, 1, 1999, 0, 0, NULL),
('nadal', '#rafa#', 'Alessandro', 'Aliverti', 'Oliva85@katamail.com', '3483659608', 0, 1, 1985, 0, 0, '2019-09-11'),
('brax1983', 'figa123', 'Francesco', 'Brandi', 'brax83@hotmail.it', '3498956632', 1, 1, 1983, 0, 0, NULL),
('pampa', 'mauro1976', 'Mauro', 'Pampaloni', 'mauropampaloni@hotmail.com', '338/8852878', 6, 1, 1976, 0, 0, NULL),
('coscine', 'allegra1', 'Maurizio', 'Inghilesi', 'maurizio.inghilesi@enel.com', '3208440539', 13.5, 1, 1961, 0, 0, NULL),
('fainacorso', 'fainacorso', 'Federico', 'Corsini', 'fainacorso@gmail.com', '3388116057', -0.75, 1, 1976, 0, 0, '2020-06-15'),
('emanuele', 'camilla', 'Emanuele', 'Cresti', 'emanuele.cresti@tin.it', '339 6868452', 1, 0, 1966, 0, 0, NULL),
('renzim', 'Blu232', 'Massimiliano', 'Renzi', 'massimiliano.renzi@power-one.com', '335-1007937', 20.5, 1, 1970, 0, 0, '2020-05-12'),
('lucio', '210251', 'Luciano', 'Rossetti', 'rossetti.luci@tiscali.it', '335/7703530', 38, 1, 1951, 0, 0, '2019-09-24'),
('rapido', 'rapidissimo', 'Marco', 'Mini', 'marcomini62@libero.it', '3396623957', 1, 1, 1962, 0, 0, NULL),
('anto61', '17031961', 'Antonio', 'Francini', 'antonio.francini@coldiretti.it', '055981207', 1.5, 0, 1961, 0, 0, NULL),
('manolo', 'rodica72', 'Mauro', 'Manetti', 'mauro-manetti@libero.it', '3383557119', 17.5, 0, 1946, 0, 0, '2020-10-09'),
('c83.stella', 'ciuchino', 'Chiara', 'Gonnelli', 'chiara.gonnelli@gmail.com', '3397206706', 0, 1, 1983, 7, 0, NULL),
('vale', '123', 'Valerio', 'Viticchi', 'viticchivalerio@yahoo.it', '055.940651', 24.5, 1, 1940, 0, 0, '2020-06-04'),
('lucio69', 'astor', 'Luciano', 'Cavoto', 'cavoto@libero.it', '3483825369', 26, 1, 1969, 0, 0, '2020-10-03'),
('ezio00', 'auditore', 'Matteo', 'Cavoto', 'cavoto69@gmail.com', '3483825369', 6, 1, 2000, 0, 0, '2020-06-11'),
('samuele66', 'elisasiro', 'Samuele', 'Baldini', 'samuele.baldini@alice.it', '3351846447', 8.5, 1, 1966, 0, 0, NULL),
('maurino', 'mau6240', 'Mauro', 'Nardi', 'Mauronardi1@gmail.com', '3936933693', 0.5, 1, 1983, 4, 0, NULL),
('guest1', '123', 'NonSocio', 'Under', 'guest@guest.com', '05500000000', 28, 0, 2011, 0, 0, NULL),
('guest2', '123', 'NonSocio', 'Over', 'guest2@guest.com', '0550000000', 2, 0, 1945, 0, 0, NULL),
('guest3', 'GUEST', 'OSPITE', 'NONSOCIO', 'TENNISCLUBMONTEVARCHI@ALICE.IT', '', 0, 0, 1990, 0, 0, NULL),
('liso', 'liso72', 'Alessandro', 'Antinori', 'a.antinori@nuovautospa.com', '347/1434833', 28.5, 1, 1972, 0, 0, '2020-02-13'),
('angela', '260497', 'Angela', 'Barone', 'angygianca5@aliceposta.it', '3287633196', 0, 1, 1973, 0, 0, NULL),
('giomax', 'wilson73', 'Massimiliano', 'Renai', 'info@villaggioparadiso.it', '', -9.5, 1, 1973, 0, 0, '2019-11-07'),
('gabri', 'nadal', 'Gabriele', 'Mugnai', 'stefano.mugnai@libero.it', '3466900575', 0, 1, 1998, 0, 0, NULL),
('tommi', 'tennis', 'Tommaso', 'Fei', 'tommitennis@hotmail.com', '331/8255373', 0, 1, 1999, 0, 0, NULL),
('elena', 'elena', 'Elena', 'Romoli', 'graziano60@yahoo.com', '3332696788', 2, 1, 1997, 0, 0, NULL),
('marco', '260497', 'Marco', 'Casini', 'angygianca5@aliceposta.it', '3287633196', 20, 1, 2001, 0, 0, NULL),
('mabene', '488764', 'Mariano', 'Capasso', 'soluzionimutuo@capassomariano.191.it', '333/7664709', 0, 1, 1948, 0, 0, NULL),
('alberto', 'francalanci1', 'Tennis', '1', 'hjghjhjgj@tin.it', '3933361183', 0, 0, 1969, 7, 0, NULL),
('albe1', 'franca2', 'Tennis', 'Adulti', 'sdfsadf@tin.it', '', 0, 0, 1969, 0, 0, '2020-10-30'),
('albe2', 'franca3', 'Tennis', 'Junior', 'asdw@tin.it', '', 0, 0, 1969, 3, 0, NULL),
('carlino', 'carlino56', 'Carlo', 'Dolfi', 'eccomiqua3@libero.it', '393/5656777', 0, 1, 1956, 0, 0, '2019-10-08'),
('gaggia', 'golfman10', 'Piero', 'Gaggiani', 'piero.gaggiani@gmail.com', '334/3153776', 2, 1, 1949, 0, 0, NULL),
('giovanna', 'matteini', 'Giovanna', 'Matteini', 'andrea.rapaccini@gmail.com', '3356218461', 0.5, 0, 1958, 0, 0, '2019-10-09'),
('allen', '123', 'allenamento', 'agonistica', 'dffòtin.it', '', 0, 0, 1975, 7, 0, NULL),
('alberto3', 'francalanci4', 'Tennis', '2', 'sfaFRWE@TIN.IT', '', 0, 0, 1975, 7, 0, NULL),
('mirio', '230645', 'Mirio', 'ButtiFratini', 'mibutti.@virgilio.it', '3475767111', 0, 1, 1945, 0, 0, '2020-10-06'),
('bartu', 'sergi', 'Sergio', 'Bartucci', 's.bartucci1@alice.it', '3291104815', 5.5, 0, 1952, 0, 0, '2020-07-04'),
('raffa', 'gima', 'Raffaella', 'Verdi', 'raffaverdi@yahoo.it', '335/6562586', 0, 1, 1970, 0, 0, NULL),
('more', 'inter', 'Moreno', 'Capanni', 'moreno.capanni@libero.it', '3357764048', 10.5, 0, 1957, 0, 0, '2020-05-07'),
('marghe', 'ma01', 'Margherita', 'Casprini', 'raffaverdi@yahoo.it', '366/53616829', 2.5, 1, 2001, 0, 0, NULL),
('quercia', '170170', 'Andrea', 'Rossi', 'dreftthh@tre.it', '348/7785118', 11, 1, 1970, 0, 0, NULL),
('et', 'mipiace', 'Emanuele', 'Tortoli', 'r_tortoli@yahoo.it', '3288135054', 50, 1, 1983, 0, 0, NULL),
('cristofani', 'piccia44', 'Alberto', 'Cristofani', 'alberto.cristofani@alice.it', '3355204125', 3.5, 1, 1953, 4, 0, NULL),
('mugnai', '28121969', 'Stefano', 'Mugnai', 'stefano.mugnai@libero.it', '3346809830', 1, 1, 1969, 0, 0, '2020-03-18'),
('massi', '050176', 'Massimiliano', 'Tassi', 'tassi.massimiliano76@gmail.com', '328/4784507', 2, 1, 1976, 0, 0, '2020-09-03'),
('giorgia', 'giorgia', 'Giorgia', 'Mascolo', 'r.mascolo@findomestic.com', '3355767784', 0.5, 1, 2000, 0, 0, NULL),
('corrado', 'catta', 'Corrado', 'Cattabiani', 'corrado.cattabiani@vegatech.it', '', 0, 1, 1959, 0, 0, '2019-10-26'),
('dosmo', '23051985', 'Dosmo', 'Borgioli', 'b.dosmo85@virgilio.it', '334/6859128', 0, 1, 1985, 7, 0, NULL),
('fabio', 'nizzoli', 'Fabio', 'Nizzoli', 'fabiocristiana@alice.it', '338/2175686', 3, 1, 1964, 0, 0, NULL),
('renzigal', 'renzigal', 'Galeazzo', 'Renzi', 'renzigal@libero.it', '3332935582', 0, 1, 1943, 0, 0, NULL),
('vucinic', 'squalene', 'Alberto', 'Taccari', '180289@virgilio.it', '3472287071', 2, 1, 1989, 1, 0, '2020-01-11'),
('matri', 'faregoal', 'Stefano', 'Toti', 'sabina.massetti@saponartfi.it', '055/958263', 61.5, 1, 1960, 0, 0, '2020-01-15'),
('spigola', 'orata', 'Paolo', 'Panichi', 'panichi.paolo@gmail.com', '3357764171', 25.5, 1, 1940, 0, 0, '2020-10-29'),
('chella', '123', 'Mario', 'Chellini', 'nonlaso@tre.it', '', 0, 0, 1940, 0, 0, NULL),
('mascolo', 'giorgia', 'Riccardo', 'Mascolo', 'r.mascolo@findomestic.com', '3355767784', 22.5, 1, 1968, 0, 0, NULL),
('villapetrea', '130946', 'Rodolfo', 'Mannini', 'info@villapetrea.com', '347/3323537', 0.5, 1, 1946, 1, 0, '2019-10-12'),
('ampelio', 'barabba', 'PierGiorgio', 'Peri', 'pg.peri@alice.it', '335/6914168', 28, 1, 1946, 0, 0, '2019-10-17'),
('ricca', '16021970', 'Riccardo', 'Mazzoni', 'rcr.mazzoni@gmail.com', '333/2652870', 1, 1, 1970, 0, 0, '2020-03-08'),
('laura', 'niccolo', 'Laura', 'Carbonai', 'laura.carbonai@carifirenze.it', '338/9600129', 17, 1, 1974, 0, 0, '2022-02-04'),
('scatenotti', 'pantera11', 'Andrea', 'Tata', 'a.tata@inwind.it', '3313695268', 33, 1, 1963, 0, 0, '2020-08-08'),
('150965', '230609', 'Daniele', 'Visani', 'visani@parigi-spa.it', '3394298588', 11, 1, 1965, 0, 0, NULL),
('valeria', 'tennis94', 'Valeria', 'Pieralli', 'vapieralli@gmail.com', '3482528338', 0, 1, 1994, 0, 0, '2020-05-24'),
('patagonia', 'patagonia', 'PaoloAntonio', 'Ricci', 'pricci3@yahoo.it', '338/8878718', 16.5, 1, 1958, 0, 0, NULL),
('gnnterranova', 'giacomett', 'Giovanni', 'Terranova', 'gnn.terranova@gmail.com', '3355248421', 5.75, 1, 1959, 0, 0, '2019-10-01'),
('verdelli', 'bobo', 'Roberto', 'Verdelli', 'verdellibobo@gmail.com', '3498121396', 21.5, 1, 1946, 0, 0, '2019-07-06'),
('sinattiroger', 'quiquosk79', 'Matteo', 'Sinatti', 'sinatti@gmail.com', '3287436399', 13.5, 1, 1979, 0, 0, NULL),
('baro', 'redevil', 'Roberto', 'Barone', 'baroner@aou-careggi.toscana.it', '328/1755190', -1, 1, 1960, 2, 0, '2020-09-25'),
('tiziano', 'juventus', 'Tiziano', 'Sandroni', 'tizianosandroni@yahoo.it', '3357213320', 6.5, 1, 1973, 0, 0, NULL),
('dudano4', 'luisa', 'Giuliano', 'Franceschetti', 'luisa.giuliano@libero.it', '328/4620002', 17, 1, 1942, 0, 0, NULL),
('mazinga', 'blucerchiato', 'Giovanni', 'Guerrini', 'giovanni.guerrini@gmail.com', '', 0, 1, 1960, 0, 0, '2019-09-27'),
('simonti', 'Simonti18', 'Leonardo', 'Simonti', 'leonardo.simonti@gmail.com', '3355996390', 20.5, 1, 1973, 0, 0, '2019-09-28'),
('claudioc', 'tenniscc50', 'Claudio', 'Chiassai', 'studio@chiassaiclaudio.it', '3292255079', 16, 0, 1950, 0, 0, '2020-05-27'),
('kalle', 'tennis5486', 'Luca', 'Bazzanti', 'lucabazzanti@alice.it', '3333422927', 4.5, 0, 1964, 0, 0, NULL),
('manfri', 'manfri', 'Rudi', 'Migliorini', 'info@italianaccessori.com', '335/306445', 37.75, 1, 1958, 0, 0, NULL),
('sergio', '23011956', 'Sergio', 'Carsughi', 'sergio.carsughi@gmail.com', '329/8151563', 7.5, 1, 1956, 0, 0, '2020-09-24'),
('tborgia', 'tennis', 'Teresa', 'Borgia', 'mtb56@libero.it', '3405439373', 0, 0, 1956, 3, 0, NULL),
('fernando', 'forzainter', 'Fernando', 'Fabbrini', 'fernando.fabbrini@alice.it', '3398067952    ', 0, 1, 1965, 0, 0, NULL),
('romignano', 'romignano', 'Riccardo', 'Rossi', 'romignano@gmail.com', '329/2161691', 0.5, 1, 1961, 0, 0, NULL),
('batigol', 'af290168', 'Alfredo', 'Ferrini', 'alfredoferrini@alice.it', '3381751352', 8.5, 1, 1968, 0, 0, '2019-11-01'),
('almer', 'lavoro3', 'Alessandro', 'Merli', 'photoshop@libero.it', '3475831089', 15.5, 1, 1959, 0, 0, '2020-01-30'),
('lori', '123', 'Lorenzo', 'Matteini', 'ggftred@tre.it', '', 0, 0, 2000, 0, 0, NULL),
('numerouno', 'leopat', 'Leonardo', 'Paterniti', 'leopat@inwind.it', '055901523', 22.5, 1, 1957, 0, 0, NULL),
('giamma25', 'giamma2501', 'Giammarco', 'Sicuro', 'Giammarcosicuro@gmail.com', '3288694768', 0, 1, 1983, 6, 0, NULL),
('elia2000', '25092000', 'Elia', 'Baldini', 'samuele.baldini@alice.it', '3931370797', 7.5, 1, 2000, 0, 0, '2022-01-29'),
('keef', 'bonzinamia', 'Lorenzo', 'Crociani', 'dipxi@hotmail.it', '', 4, 0, 1995, 0, 0, '2019-09-18'),
('cora', '123', 'Alessandro', 'Coradeschi', 'adfgtre@tre.it', '', 44.5, 0, 1957, 0, 0, NULL),
('mosconi', 'Ginetta', 'Francesca', 'Mosconi', 'francesca.mosconi@alice.it', '3356613313', -5, 1, 1972, 0, 0, '2021-10-24'),
('pietro', 'cristina', 'Pietro', 'Bencini', 'pietrobencini@.it', '347/4840170', 0, 1, 1951, 0, 0, '2019-10-02'),
('flamig', '26101971', 'Flavia', 'Migliorini', 'flaviamigliorini@studiocantinimigliorini', '3356001109', 17, 1, 1971, 2, 0, '2020-09-25'),
('lala', '080601', 'Alice', 'Ferrini', 'alfredoferrini@alice.it', '', 1, 0, 2001, 0, 0, NULL),
('sauro56', '105610', 'Sauro', 'Innocenti', 'sauro.inno@libero.it', '', 60.5, 1, 1956, 0, 0, '2020-09-30'),
('massimo70', 'pluto70', 'Massimo', 'Vilardi', 'barvil@inwind.it', '3334776348', 45.5, 1, 1970, 0, 0, NULL),
('calvettina', 'viola', 'Margherita', 'Calvetti', 'daniele.calvetti@hotmail.it', '393/2553253', -7, 1, 1998, 0, 0, NULL),
('bubu', '0306', 'Gianluca', 'Biagioni', 'agenziabiagioni@gmail.com', '3355890252', 19, 0, 2005, 0, 0, '2020-03-31'),
('buccia86', 'bucciabro', 'Alberto', 'Buccianti', 'dilanvega21@gmail.com', '3382690200', 0, 0, 1986, 0, 0, NULL),
('mgrifoni', 'Daddy-08', 'Marco', 'Grifoni', 'mgrifoni76@gmail.com', '3488858092', 29, 0, 1976, 0, 0, '2019-03-16'),
('lanini', '22052003', 'Fabio', 'Lanini', 'falcolanarius@gmail.com', '3393405597', -11, 0, 1969, 0, 0, NULL),
('falcio', '123', 'Francesco', 'Falcioni', 'treygfe@tre.it', '', 0, 0, 1969, 7, 0, NULL),
('prova', '123', 'prova', 'prova', 'ghdfghgh@gmail.com', '', 0, 1, 1975, 0, 0, NULL),
('ricca94', 'ricca94', 'Riccardo', 'Guerrini', 'g.guerrini@gefar.it', '', 0.5, 1, 2004, 0, 0, NULL),
('rossi61', 'wolf2005', 'Maurizio', 'Rossi', 'mrossi@edbusiness.it', '', 49.5, 1, 1961, 0, 0, NULL),
('rossi94', 'reds94', 'Jacopo', 'Rossi', 'mrossi@edbusiness.it', '', 2.5, 1, 1994, 0, 0, NULL),
('alessandro', 'nanopiombo', 'Alessandro', 'Mazzucco', 'alessandromazzucco92@gmail.com', '3934079809', 41, 1, 1992, 0, 0, NULL),
('fitodado', 'camomilla', 'Corrado', 'Salvini', 'Info@farmaciasoldanisalvini.it', '0559707127', 23.5, 0, 1966, 0, 0, '2020-09-26'),
('fede', 'gemelli', 'Federico', 'Ariano', 'fariano@studiocosmo.it', '335/5739227', 34.5, 1, 1968, 0, 0, '2020-06-07'),
('oliva', 'oliva', 'Oliva', 'Primo', 'faifaifoite@tre.it', '', 8.5, 0, 1948, 0, 0, '2020-09-24'),
('edoardo', '72750372310', 'Edoardo', 'Templari', 'templariedoardo@hotmail.it', '3474537732', 14, 1, 1993, 0, 0, '2020-02-27'),
('gago', 'Bubbole', 'Leonardo', 'BaldiniTosi', 'gago@me.com', '3356812270', 25, 1, 1970, 0, 0, '2019-09-24'),
('alex', '060178', 'Alessandro', 'Rosichetti', 'alessandro.rosichetti@alleanza.it', '3287525652', 30, 1, 1978, 0, 0, NULL),
('jek', 'jekpass', 'Giacomo', 'Buffoni', 'jekmail@tin.it', '3939090389', 99.5, 1, 1976, 0, 0, NULL),
('ina', '123', 'Valentina', 'Billi', 'viticchivalerio@yahoo.it', '', 0.5, 0, 1984, 0, 0, NULL),
('paolo', 'fiore', 'Paolo', 'Pieraccini', 'paolopieraccini@inwind.it', '393/0901688', 3.5, 1, 1955, 0, 0, NULL),
('gatto', '123', 'marco', 'faenzi', 'dfghh@tri.it', '', 0, 1, 1959, 5, 0, '2020-03-18'),
('kkimi', 'corally29', 'Alessandro', 'Innocenti', 'corally29@alice.it', '3338265383', 29.5, 1, 1971, 0, 0, '2020-02-17'),
('fabry7', '055942436', 'Fabrizio', 'Frosinini', 'frosa7@libero.it', '3404006036', 19.5, 1, 1973, 0, 0, '2022-01-27'),
('melissa', 'imola2011', 'Francesco', 'Tronci', 'f.tronci@alice.it', '335/6681073', 0, 1, 1944, 0, 0, '2020-01-14'),
('trinità', 'trinità', 'Simone', 'Becattini', 'simobeca43@gmail.com', '334/1115293', 0, 1, 1969, 0, 0, NULL),
('france', '123', 'Francesco', 'Barone', 'tennisclubmontevarchi@alice.it', '', 0, 0, 1997, 7, 0, NULL),
('andrea1976', 'REBECCAEVIOL', 'Andrea', 'Morbidelli', 'andrea@mcmsrl.com', '3355776615', 16.5, 1, 1976, 0, 0, NULL),
('cristian296', 'siamaia', 'Cristian', 'Ravagni', 'r.cristian296@virgilio.it', '3386860729', 15.5, 1, 1976, 0, 0, '2019-10-03'),
('mario', 'Superuno11', 'Mario', 'Soldani', 'Essebi.bombardi@alice.it', '3398349496', 40.25, 1, 1971, 0, 0, '2020-04-26'),
('geppetto', 'asia61101', 'Marco', 'Serboli', 'tranceriasm@virgilio.it', '3398960162', 17.5, 1, 1976, 0, 0, NULL),
('fabrizio', 'fedone', 'Fabrizio', 'Renzi', 'fabrirenzi@yahoo.it', '055973481', -0.5, 1, 1972, 0, 0, NULL),
('alex1', 'bubu0306', 'Alessandro', 'Biagioni', 'agenziabiagioni@gmail.com', '3355890252', 28.5, 1, 1966, 0, 0, '2020-01-06'),
('fatai', 'michy2009', 'Marco', 'Fatai', 'marco.fatai@libero.it', '338/5959275', 29, 1, 1966, 0, 0, '2020-10-18'),
('cappelletti', 'cappe7', 'Luciano', 'Cappelletti', 'Ndrcappelletti@gmail.com', '3357446716', 0, 0, 1954, 7, 0, NULL),
('paolos', 'donoratico76', 'Paolo', 'Semplici', 'paolos66@hotmail.com', '3473436619', 22, 1, 1966, 0, 0, '2020-09-27'),
('niki', 'tobia2000', 'Niccolò', 'Rossi', 'mrossi@edbusiness.it', '', -3, 0, 1998, 0, 0, NULL),
('roberto', 'corsini', 'Roberto', 'Corsini', 'tennisclubmontevarchi@virgilio.it', '000000000', 10, 0, 1962, 0, 0, NULL),
('igala', 'tg.13.phoo', 'Tommaso', 'Galassini', 'tommaso.galassini@gmail.com', '3465036380', 47, 1, 1981, 0, 0, '2020-01-02'),
('fgobbini', '15071974', 'Fabrizio', 'Gobbini', 'fago1507@gmail.com', '3355723012', 2.5, 1, 1974, 0, 0, '2020-01-24'),
('nizzoli', 'nizzoli', 'Niccolò', 'Nizzoli', 'fabiocristiana@alice.it', '333/2303383', 1, 1, 1999, 0, 0, '2019-12-06'),
('giocoli', 'Sciupamost0', 'Marco', 'Cannoni', 'info@poderegiocoli', '3896894737', 0.5, 1, 1975, 0, 0, NULL),
('maurizio', 'leonardo', 'Maurizio', 'Ciabatti', 'www.lauramagi@gimail.it', '0559172076', 0, 0, 1965, 0, 0, '2020-01-09'),
('mstennis', 'mstennis', 'Marco', 'Sani', 'sani.marco@alice.it', '3345294738', 21.5, 1, 1982, 0, 0, '2020-02-13'),
('lobrill', 'musica', 'Lorenzo', 'Brilli', 'lobrill9@gmail.com', '393/3358137', 0, 1, 1971, 0, 0, NULL),
('tobia', '5264', 'Marcello', 'Merlini', 'marcello.m@bmsnc.com', '335/7505264', 0, 1, 1947, 0, 0, NULL),
('lorenzo', 'albizzi', 'Lorenzo', 'Albizzi', 'lorenzo.albizzi@gmail.com', '3335731448', 5, 1, 1993, 0, 0, '2019-11-21'),
('fiaffia', 'suzuki', 'simone', 'fabianelli', 'sfabianelli@virgilio.it', '3331067486', 2, 1, 1992, 0, 0, NULL),
('viola', '111159', 'Giorgio', 'Biagianti', 'TENNISCLUBMONTEVARCHI@ALICE.IT', '335/5229656', 27, 1, 1959, 0, 0, NULL),
('loredero', 'bmwr850r', 'Lorenzo', 'Derobertis', 'avvlorenzoderobertis@gmail.com', '3387661462', 28.5, 1, 1969, 0, 0, '2019-11-07'),
('federico bru', 'Lindatiamo3', 'Federico', 'Bruschi', 'federico.bruschi@gmsrl.it', '349-6629758', 0, 1, 1976, 0, 0, NULL),
('ferdi', 'Dodo2002', 'Ferdinando', 'Bianchi', 'ale73bianchi@gmail.com', '3355915868', 17.5, 1, 2002, 0, 0, NULL),
('max1', '1957gymax', 'Massimo', 'Gaggiani', 'massimo.gaggiani@gmail.com', '3356611442', 0.5, 1, 1957, 0, 0, '2020-09-18'),
('andrearapacc', 'rapaccini', 'Andrea', 'Rapaccini', 'andrea.rapaccini@gmail.com', '3356218461', 0, 0, 1951, 0, 0, NULL),
('leo', '130174', 'Raffaella', 'Rossi', 'raffaella.rossi1974@gmail.com', '388/0425712', 0.5, 1, 1974, 0, 0, NULL),
('miniati1970', 'memello', 'Samuele', 'Miniati', 'miniati1970@alice.it', '347/2410916', 16.5, 1, 1970, 0, 0, '2021-11-12'),
('richelieu', 'forzamilan53', 'Marco', 'Taccari', 'marcotaccari@virgilio.it', '', 18.5, 1, 1953, 2, 0, NULL),
('pmolinu', 'oliverino', 'Pietro', 'Molinu', 'pietromolinu@hotmail.it', '335/7764156', 41.5, 1, 1958, 0, 0, '2022-01-22'),
('albe68', 'alberto', 'Alberto', 'Corsi', 'acorsi68@alice.it', '347/8309081', 2.5, 1, 1968, 0, 0, '2020-02-08'),
('matteto', '170174', 'Angela', 'Caraccia', 'angelacaraccia@gmail.com', '339/8249277', 3, 1, 1974, 0, 0, NULL),
('Massimo', '1969', 'Massimo', 'Maccioni', 'massimo.maccioni@bnlmail.com', '3346065321', 29.5, 1, 1969, 0, 0, NULL),
('bronzi marco', 'giulio', 'Marco', 'Bronzi', 'marco.bronzi84@gmsrl.it', '3929105579', 16.5, 1, 1984, 0, 0, NULL),
('jocri', 'kimkim', 'Johnny', 'Caneschi', 'johcaneschi@gmail.com', '366/3203097', -59.5, 1, 1971, 0, 0, '2020-07-27'),
('cristina03', 'jocri', 'Cristina', 'Bardelloni', 'bardelloni.cristina@gmail.com', '328/0684441', -2.5, 1, 1975, 0, 0, '2020-06-21'),
('emanuelepala', 'emanuelepala', 'Emanuele', 'Palai', 'emanuele.palai@yahoo.it', '3925849309', 0, 1, 1992, 0, 0, NULL),
('milan', 'cinzia', 'Luciano', 'Fabbri', 'fuminojunior@tiscali.it', '3475762561', 20, 1, 1961, 0, 0, '2019-06-29'),
('cambo', 'pietro2013', 'Marco', 'Camiciottoli', 'marcocamiciottoli1@gmail.com', '333/2347679', 8, 1, 1976, 0, 0, NULL),
('gino', '040882', 'Daniele ', 'Bernacchioni', 'bernacchionidaniele@gmail.com ', '3290672094', 15.5, 1, 1982, 0, 0, NULL),
('matteo87', 'gora37', 'Matteo', 'Leggio', 'matteo.leggio132@gmail.com', '3335753177', -0.5, 1, 1987, 0, 0, NULL),
('ale73', 'Guccio73', 'Alessandro', 'Bianchi', 'ale73bianchi@gmail.com', '3355915868', 17.5, 1, 1973, 0, 0, NULL),
('taribo', '181268', 'Massimo', 'Rinaldi', 'massimo.rinaldi@ymail.com', '338/6961103', 37.5, 1, 1968, 0, 0, '2021-05-14'),
('sere', 'labonechi', 'Serena', 'Bonechi', 'bonechi.serena@gmail.com', '3282785525', 0, 1, 1985, 0, 0, '2019-11-17'),
('serena', '060990', 'Serena', 'Gaggiani', 'sere.ga@libero.it', '3394415463', 0, 1, 1990, 0, 0, NULL),
('fm77', '261175', 'Francesca', 'Mazziotti', 'francesca.mazziotti@gmail.com', '3406013115', 3.5, 0, 1977, 0, 0, NULL),
('gianmarco', 'giammy', 'gianmarco', 'rosseti', 'gmrosseti@gmail.com', '3298119040', -1, 1, 1978, 0, 0, NULL),
('sampdoria', 'sampdoria', 'Andrea', 'Evangelisti', 'evangelistiandrea1972@gmail.com', '3473354940', 20, 1, 1972, 0, 0, '2019-10-24'),
('bex64', 'fiorello6', 'Stefano', 'Berti', 'stefanoberti111@gmail.com', '', 0.5, 1, 1964, 0, 0, '2019-10-26'),
('alberto74', '475070', 'Stefano', 'Calvo', 'stefano.cp@fattoriadirimaggio.it', '3331148075', 99, 1, 1974, 0, 0, NULL),
('paolo arturo', '896331', 'Paolo', 'Calvo', 'calvopa@fattoriadirimaggio.it', '3483205310', 0, 1, 1946, 0, 0, NULL),
('max3', 'max3', 'Max', 'Gaggiani', 'massimo.gaggiani@gmail.com', '3356611442', 12, 1, 1957, 0, 0, NULL),
('armchen', 'lcbcc000', 'Guido', 'Braccini', 'armchen@me.com', '3473226803', 27, 1, 2005, 0, 0, '2019-12-04'),
('armchen2', 'lcbcc000', 'Roberto', 'Braccini', 'armchen@me.com', '3473226803', 42.25, 1, 1967, 0, 0, '2019-12-21'),
('lcu24', '24965luca', 'Luca', 'Arrotini', 'luca.arrotini@alice.it', '3339721752', 23.75, 1, 1965, 0, 0, '2020-10-01'),
('tlin', 'aaOeLa13', 'Andrea', 'Otelli', 'geotelli@libero.it', '3392114135', 12, 1, 1981, 0, 0, '2020-04-01'),
('torricelli', 'torricelli', 'Maurizio', 'Torricelli', 'commerciale@torricellisrl.com', '3402358063', -1, 1, 1973, 0, 0, '2019-09-23'),
('banicarlo', 'sabax1', 'Carlo', 'Bani', 'banicarlo@gmail.com', '338/8318208', 1.75, 1, 1977, 0, 0, '2019-12-26'),
('veronica', 'veronica', 'Veronica', 'Mascolo', 'r.mascolo@findomestic.com', '3897852840', -0.5, 1, 2002, 0, 0, NULL),
('giulina89', '24121989', 'Giulia', 'Baldi', 'baldi.giulia@virgilio.it', '3281970564', 0.75, 0, 1989, 0, 0, '2019-11-10'),
('mumelter', '18041981', 'Romano', 'Mumelter', 'mumelter63@gmail.com', '3931841981', 0, 1, 1963, 0, 0, NULL),
('toro', 'carlo6240', 'Giancarlo', 'Nardi', 'info@pellicceriaeva.it', '338/6022869', 208, 1, 1948, 0, 0, '2021-05-19'),
('fiorentina', '03061972', 'Paolo', 'Donzellini', 'magialpa@gmail.com', '3471964642', 0, 1, 1950, 7, 0, NULL),
('fededero', 'bmwr850r', 'Federico', 'Derobertis', 'avvlorenzoderobertis@gmail.com', '3387661462', 9.5, 1, 2006, 0, 0, '2020-05-19'),
('brodo', '1234', 'Mario', 'Baldini', 'mario.baldini@astrazeneca.com', '3351323466', 41, 1, 1955, 0, 0, '2020-08-01'),
('paolino', '300582', 'Paolo', 'Menci', 'paolo.menci@alice.it', '346/2175141', 13.5, 1, 1982, 0, 0, NULL),
('francescaban', '260572', 'Francesca', 'Bani', 'francescabani@hotmail.com', '3388752293', -2, 0, 1972, 0, 0, NULL),
('afranci', 'pomodoro', 'Alessandro', 'Franci', 'afranci1973@gmail.com', '3487634192', 8, 1, 1973, 0, 0, '2020-11-08'),
('lucab', 'SIRIO', 'Luca', 'Bencini', 'luca66bencini@gmail.com', '3358353594', 17, 1, 1966, 0, 0, NULL),
('viviana', 'viviana', 'Vivenz', 'Nesi', 'tennisclubmontevarchi@alice.it', '3703182027', 44, 0, 1976, 0, 0, '2020-01-14'),
('MonteTinacci', '68Tina17', 'Alessandro', 'Tinacci', 'tinaccialessandro@aliceposta.it', '3356151468', 1, 1, 1968, 0, 0, '2020-05-20'),
('riccardocion', '090975', 'Riccardo', 'Cioncolini', 'riccardo.cioncolini@gmail.com', '3385291347', 15, 1, 1975, 0, 0, NULL),
('claudia', '210881', 'Alessio', 'Fantini', 'alessio.fantini81@alice.it', '3332489742', 13.5, 1, 1981, 0, 0, NULL),
('marcus21', 'margherita', 'Alberto', 'Rossi', 'tecnodesigneracing@gmail.com', '3929286219', 62, 0, 1973, 0, 0, NULL),
('Chiara', 'chiara75', 'Chiara', 'Scarnicci', 'banicarlo@gmail.com', '3274747839', 0.5, 1, 1975, 0, 0, NULL),
('giacomo78', 'virginia', 'Giacomo', 'Stoppielli', 'giacomo.s1978@libero.it', '3478029719', 1, 1, 1978, 0, 0, NULL),
('elisaedario', '19781973', 'Elisa', 'Zamboni', 'dariobatta78@libero.it', '3406360369', 0, 1, 1973, 0, 0, NULL),
('andjelic', 'andjelic', 'Mia', 'Andjelic', 'mia.andjelic@yahoo.it', '3921012569', -2.5, 1, 1999, 0, 0, NULL),
('logan86', 'Oldmilo86', 'Tiziano', 'Meoni', 'tizianom86@hotmail.it', '3204110290', 16, 1, 1986, 0, 0, NULL),
('febo79', 'posterda79', 'Andrea', 'Ferrini', 'feforini79@hotmail.com', '3332645323', 9.5, 1, 1979, 0, 0, NULL),
('marcociolli', 'marcociolli', 'Marco', 'Ciolli', 'marcociolli@alice.it', '3470529855', 17, 1, 1969, 0, 0, NULL),
('gallo', 'gallo73', 'Mario', 'Galletti', 'alessandroeangela@virgilio.it', '3288260900', 0, 1, 1946, 7, 0, NULL),
('zoe', 'zoe', 'Giovanni', 'Tracchi', 'tracchi1957@gmail.com', '33513452703', 12, 1, 1957, 0, 0, '2020-10-06'),
('serenella', '1924', 'Roberto', 'Lucaccini', 'lucaccini@val.it', '3396415982', 20, 1, 1950, 0, 0, '2020-10-13'),
('filippo.nomp', '261175', 'Filippo', 'Nompari', 'filippo.nompari@gmail.com', '3406013115', 0, 0, 1975, 0, 0, NULL),
('claudiodelv', 'icelandic', 'Claudio', 'Delvita', 'claudio@studiodelvita.it', '055901901', 0, 0, 1968, 0, 0, NULL),
('lucapini', '030911', 'Luca', 'Pinizzotto', 'piniz.luca@gmail.com', '3666392022', 23.5, 1, 1984, 0, 0, '2020-06-21'),
('deasystem', 'deasystem', 'Andrea', 'Fratini', 'a.fratini@fratini.net', '3483310923', 5, 1, 1979, 0, 0, NULL),
('losiflores', 'losiflores', 'Lorenzo', 'Losi', 'lorenzo@losiflores.com', '0559789366', 0, 0, 1991, 0, 0, NULL),
('jayjay70', 'sixxsixx', 'Luigi', 'Matteini', 'tabaccheria.matteini@gmail.it', '3336644777', 4, 1, 1970, 0, 0, NULL),
('fil.tan', 'martind35', 'Filippo', 'Tanzi', 'filippo.tanzi@aifin.it', '3482519614', 8, 1, 1979, 0, 0, '2019-09-24'),
('badii', 'badii', 'Francesco', 'Badii', 'badii.francesco@gmail.com', '3476669217', 7, 1, 1970, 0, 0, '2019-09-27'),
('kandokan', 'kandokan', 'Maurizio', 'Baldi', 'maurizio@tipografialazecca.it', '3398940594', 30, 1, 1970, 0, 0, NULL),
('annalisa', 'tennis', 'Annalisa', 'Fei', 'annalisafei@gmail.com', '3479459017', 0, 1, 1988, 0, 0, NULL),
('andrea', 'tennis', 'Andrea', 'Rossi', 'arossi14@inwind.it', '3280570032', -0.5, 1, 1984, 0, 0, NULL),
('fiorai1', 'fiorai1', 'Franco', 'Fiorai', 'francofiorai@virgilio.it', '3421770490', 14, 0, 1967, 0, 0, '2019-11-26'),
('banchelli', 'banchelli', 'Massimo', 'Banchelli', 'fvmeba@tin.it', '3939638064', 39, 1, 1959, 0, 0, '2019-10-01'),
('tiezzi', 'tiezzi', 'Filippo', 'Tiezzi', 'tiezzifilippo@gmail.com', '3474929363', 20, 1, 1974, 0, 0, '2020-09-29'),
('gracesanto7', 'grace1984', 'Graziano', 'Santopietro', 'santopietro.graziano7@gmail.com', '3347817899', 3, 1, 1984, 0, 0, '2020-03-11'),
('LStennis', 'sanella89', 'Lorenzo', 'Sani', 'lorenzo.sani89@gmail.com', '3927430775', 0, 1, 1989, 0, 0, NULL),
('carresi', 'carresi', 'Stefano', 'Carresi', 'carresistefano@gmail.com', '3492660773', 12, 1, 1961, 0, 0, '2020-04-29'),
('saniste', 'saniste', 'Stefano', 'Sani', 'saniste@msn.com', '3334869190', 20, 1, 1981, 0, 0, NULL),
('alessandro71', 'alessandro71', 'Alessandro', 'Tosi', 'alessandrotosi1971@libero.it', '3357672729', 39.5, 1, 1971, 0, 0, '2021-05-14'),
('alfonso', 'realmadrid', 'Alfonso', 'Pecoraro', 'realfonso70@virgiio.it', '3921911883', 19, 1, 1970, 0, 0, NULL),
('albertoricci', 'albertoricci', 'Alberto', 'Ricci', 'ricci.alberto1984@icloud.com', '3348075866', 58.5, 1, 1984, 0, 0, '2019-09-25'),
('mcappe19', 'mcappe19', 'Margherita', 'Cappelletti', 'margherita.cappelletti@gmail.com', '3358467334', 0, 1, 1989, 5, 0, NULL),
('rome.61@libe', 'cesarino', 'Fulvia', 'Romei', 'rome.61@libero.it', '3355915024', 7.5, 1, 1961, 0, 0, NULL),
('bea', 'bea', 'Beatrice', 'Panichi', 'tennisclubmontevarchi@gmail.com', '349300000000', 0, 1, 1970, 0, 0, '2020-06-26'),
('massi72', '12345', 'Massimiliano', 'Sargentelli', 'massisarge@gmail.com', '3356956590', 0, 1, 1972, 0, 0, NULL),
('Tassi88', 'Batistuta192', 'Francesco', 'Tassi', 'tassi1926@gmail.com', '3337144531', 43.5, 1, 1988, 0, 0, '2020-02-27'),
('rine', '100657', 'Rinaldo', 'Melzi', 'rinaldo.melzi6@gmail.com', '3285315824', 18.5, 1, 1957, 0, 0, '2020-03-29'),
('rapa', 'rapa', 'Lorenzo', 'Rapaccini', 'tennisclubmontevarchi@gmail.com', '3356218461', 14.25, 1, 1981, 0, 0, '2020-07-09'),
('greme', 'greme', 'Riccardo', 'Grementieri', 'riccardo.grementieri@gmail.it', '3337283267', 15.5, 1, 1986, 0, 0, '2019-10-31'),
('petramazzo', 'petramazzo', 'Petra', 'Mazzola', 'petramazzo@hotmail.it', '3382685765', 5.5, 1, 1981, 0, 0, '2019-07-02'),
('borri', 'borri', 'Stefano', 'Borri', 'stefanoborri78@gmail.com', '3498048702', 30, 1, 1978, 0, 0, '2019-10-09'),
('stella', 'stella', 'Stella', 'scarnicci', 'avvstellascarnicci@gmail.com', '3332652870', 15, 1, 1972, 0, 0, '2020-10-26'),
('peter', 'santeo', 'Pietro Antonio', 'Molinu', 'pietromolinu@hotmail.it', '3357764156', 0, 1, 1958, 0, 0, NULL),
('lapo', 'lapo', 'Lapo', 'Prisinzano', 'lapoprisinzano@gmail', '3776879757', 36, 1, 2003, 0, 0, NULL),
('chienni', 'neroblu7', 'Marco', 'Chienni', 'marco.chienni@gmail.com', '3398758282', 0, 1, 1981, 0, 0, NULL),
('andreap', 'andrea', 'Andrea', 'Patricolo', 'andreapatricolo.99@gmail.com', '3311370197', 8.5, 1, 1999, 0, 0, NULL),
('valenti', 'matteo', 'Matteo', 'Valenti', 'matteovalenti8@gmail.com', '3337658504', 0, 0, 1994, 0, 0, NULL),
('ciabatti', 'ciabatti', 'Eleonora', 'Ciabatti', 'lauramagi13@me.com', '3381008683', 46, 1, 2001, 0, 0, NULL),
('rotesi', 'elisabetta', 'Elisabetta', 'Rotesi', 'elisabettina18@gmail.com', '3396160519', 0, 0, 1963, 0, 0, NULL),
('leone', 'mauro', 'Mauro', 'Leone', 'leonem86@hotmail.it', '3295622896', 20, 0, 1986, 0, 0, NULL),
('trava', 'trava', 'Daniele', 'Travaglini', 'travadani@libero.it', '3391065860', 21, 1, 1964, 0, 0, NULL),
('righeschi', 'mirko', 'Mirko', 'Righeschi', 'mirkorigheschi@gmail.com', '3278287236', 0, 0, 1973, 0, 0, NULL),
('riccardo', 'orlandi', 'Riccardo', 'Orlandi', 'riccardo.orlandi@advisors.it', '3397679744', 5.5, 0, 1985, 0, 0, NULL),
('ggioli', 'Gianluca77', 'Gianluca', 'Gioli', 'gianluca.gioli@outlook.it', '3489999074', 44, 1, 1977, 0, 0, NULL),
('bardelloni', 'luca', 'Luca', 'bardelloni', 'luca.bardelloni@gmail.com', '3920250738', 5, 0, 1972, 0, 0, NULL),
('teo76', 'teo76', 'Matteo', 'Del Sala', 'teo76ds@gmail.com', '3355835784', -4, 1, 1976, 0, 0, NULL),
('vannini', 'alessio', 'Alessio', 'Vannini', 'alessino22@hotmail.it', '3491615900', 0, 0, 1987, 0, 0, NULL),
('lalli', 'massimiliano', 'Massimiliano', 'Lalli', 'massimilianolalli@gmail.com', '3355909688', 0, 0, 1990, 0, 0, NULL),
('meucci', 'leonardo', 'Leonardo', 'Meucci', 'leonardomeucci2019@libero.it', '3317481824', 16.5, 0, 2002, 0, 0, NULL),
('matteini', 'francesco', 'Francesco', 'Matteini', 'matte13sgv@hotmail.it', '3339724768', 24.5, 0, 1989, 0, 0, NULL),
('orlandi', 'ugo', 'Ugo', 'Orlandi', 'ugoorlandi@fastwebnet.it', '3397390705', 17, 1, 1963, 0, 0, NULL),
('agostini', 'simona', 'Simona', 'Agostini', 'simonagostini6@gmail.com', '3395484550', 0, 0, 1972, 0, 0, NULL),
('massini', 'lorenzo', 'Lorenzo', 'Massini', 'gino425@hotmail.it', '3490718949', 0, 0, 1988, 0, 0, NULL),
('innocenti', 'gianluca', 'Gianluca', 'Innocenti', 'gianlucainnocenti@libero.it', '3928284570', 10, 0, 1988, 0, 0, NULL),
('mannini', 'simona', 'Simona', 'Mannini', 'tennisclubmontevarchi@gmail.com', '3473323537', 41, 1, 1980, 6, 0, NULL),
('minatti', 'nicola', 'Nicola', 'Minatti', 'nicola@logintegra.it', '3356630740', 52.5, 1, 1991, 0, 0, NULL),
('ornani', 'alfonso', 'Alfonso', 'Ornani', 'alfonsoornani@live.it', '3332789389', 4.5, 0, 1985, 0, 0, NULL),
('bencivenni', 'giancarlo', 'Gian Carlo', 'Bencivenni', 'giancarlo.bencivenni@gmail.com', '3357055326', 0, 0, 1955, 0, 0, NULL),
('scop66', 'scop66', 'Massimo', 'Scopelliti', 'm.scop66@gmail.com', '3345343422', 39, 1, 1966, 0, 0, NULL),
('cirigni', 'alessandro', 'Alessandro', 'Cirigni', 'alecirigni@gmail.com', '3312996694', 13, 0, 1987, 0, 0, NULL),
('delvita', 'claudio', 'Claudio ', 'Del Vita', 'claudio@studiodelvita.it', '3933353780', 29.5, 0, 1968, 0, 0, NULL),
('forzoni', 'mario', 'Mario', 'Forzoni', 'mforzoni@yahoo.it', '335273549', 58.75, 0, 1962, 0, 0, NULL),
('desantis', 'desantis', 'marco', 'de santis', 'marco.desantis84@gmail.com', '3356693307', -0.5, 1, 1984, 0, 0, NULL),
('mosca', 'tennisteo', 'Matteo', 'Mosca', 'mattmos76@tin.it', '3355807579', 10, 1, 1976, 0, 0, NULL),
('giovanni', 'taccari', 'Giovanni', 'Taccari', 'giovannitaccari@gmail.com', '3206631942', 11, 0, 1991, 0, 0, NULL),
('grassi', 'tommaso', 'Tommaso', 'Grassi', 'grassi.tommaso71@gmail.com', '3398182480', 14.5, 0, 1971, 0, 0, '2021-11-18'),
('mevmo86', '40Dpeqi6', 'Emmanouil', 'Evmorfiadis', 'mevmorfiadis@gmail.com', '3282163114', 45, 1, 1986, 0, 0, NULL),
('gianni ', '07Ventitre', 'Gianni', 'Cappelletti', 'gianni.cappelletti@gmail.com', '3357371957', 38, 0, 1981, 0, 0, NULL),
('parivir', 'mattia', 'Mattia', 'Parivir', 'mattia.parivir@live.it', '3498074519', 0, 0, 1991, 0, 0, NULL);