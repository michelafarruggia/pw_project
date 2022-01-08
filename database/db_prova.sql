-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 10, 2021 alle 16:02
-- Versione del server: 10.4.19-MariaDB
-- Versione PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_prova`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `director`
--

CREATE TABLE `director` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `immagine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `director`
--

INSERT INTO `director` (`id`, `firstname`, `lastname`, `immagine`, `descrizione`) VALUES
(1, 'Quentin', 'Tarantino', 'quentin_tarantino.jpg', 'Quentin Jerome Tarantino (nato il 27 marzo 1963) è un regista, sceneggiatore, produttore, direttore della fotografia e attore americano. All\'inizio degli anni \'90 era un regista indipendente i cui film utilizzavano trame non lineari e l\'estetizzazione della violenza. I suoi film gli sono valsi una serie di premi Oscar, Golden Globe, BAFTA e Palme d\'Or ed è stato nominato per Emmy e Grammy Awards. Nel 2007, Total Film lo ha nominato il dodicesimo più grande regista di tutti i tempi.\r\n\r\nTarantino è nato a Knoxville, nel Tennessee, figlio di Connie McHugh Tarantino Zastoupil, dirigente sanitario e infermiera nata a Knoxville, e Tony Tarantino, attore e musicista dilettante nato a Queens, New York. La madre di Tarantino gli ha permesso di lasciare la scuola all\'età di 17 anni, per frequentare un corso di recitazione a tempo pieno. Tarantino ha smesso di recitare mentre frequentava la scuola di recitazione, dicendo che ammirava i registi più degli attori. Tarantino ha anche lavorato in un negozio di noleggio video prima di diventare un regista, ha prestato molta attenzione ai tipi di film che le persone amavano noleggiare e ha citato quell\'esperienza come ispirazione per la sua carriera di regista.\r\n\r\nDescrizione presa dall\'articolo di Wikipedia Quentin Tarantino, con licenza CC-BY-SA, elenco completo dei contributori su Wikipedia.'),
(2, 'Martin', 'Scorsese', 'martin_scorsese.jpg', 'Martin Charles Scorsese (nato il 17 novembre 1942) è un regista, produttore, sceneggiatore e attore americano. Una delle figure principali dell\'era New Hollywood, è ampiamente considerato come uno dei registi più grandi e influenti della storia del cinema. Il corpo del lavoro di Scorsese esplora temi come l\'identità italo-americana, i concetti cattolici di colpa e redenzione, fede, machismo, nichilismo, crimine e settarismo. Molti dei suoi film sono noti per la loro rappresentazione della violenza e per l\'uso liberale della volgarità. Scorsese ha anche dedicato la sua vita alla conservazione e al restauro dei film fondando l\'organizzazione no-profit The Film Foundation nel 1990, così come la World Cinema Foundation nel 2007 e l\'African Film Heritage Project nel 2017.\r\n\r\nScorsese ha studiato alla New York University (NYU), dove ha conseguito una laurea in letteratura inglese nel 1964, e ha conseguito un master in belle arti cinematografiche presso la Tisch School of the Arts della NYU nel 1968. Nel 1967 il primo lungometraggio di Scorsese Who\'s That Knocking at My Door è uscito ed è stato accettato al Chicago Film Festival, dove il critico Roger Ebert lo ha visto e lo ha definito \"una meravigliosa evocazione della vita cittadina americana, annunciando l\'arrivo di un nuovo importante regista\".\r\n\r\nHa stabilito una storia cinematografica che coinvolge ripetute collaborazioni con attori e tecnici cinematografici, inclusi nove film realizzati con Robert De Niro. I suoi film con De Niro sono il thriller psicologico Taxi Driver (1976), il dramma sportivo biografico Toro scatenato (1980), la commedia nera satirica Il re della commedia (1982), il dramma musicale New York, New York (1977), il il thriller psicologico Cape Fear (1991) e i film polizieschi Mean Streets (1973), Goodfellas (1990), Casino (1995) e The Irishman (2019). Scorsese è stato anche notato per le sue collaborazioni con l\'attore Leonardo DiCaprio, avendolo diretto in cinque film: l\'epico storico Gangs of New York (2002), la biografia di Howard Hughes The Aviator (2004), il thriller The Departed (2006), il thriller psicologico Shutter Island (2010) e la commedia nera di Wall Street The Wolf of Wall Street (2013). The Departed ha fatto vincere a Scorsese un Academy Award come miglior regista e come miglior film. Scorsese è anche noto per la sua collaborazione di lunga data con l\'editore Thelma Schoonmaker, che ha montato tutti i film di Scorsese a partire da Raging Bull. L\'altro lavoro cinematografico di Scorsese include la commedia nera After Hours (1985), il dramma romantico The Age of Innocence (1993), il dramma d\'avventura per bambini Hugo (2011) e l\'epica religiosa L\'ultima tentazione di Cristo (1988), Kundun (1997). ) e Silenzio (2016).'),
(3, 'Steven', 'Spielberg', 'steven_spielberg.jpg', 'Steven Allan Spielberg KBE (nato il 18 dicembre 1946) è un regista, produttore e sceneggiatore americano. È considerato uno dei pionieri fondatori della New Hollywood era e uno dei registi e produttori più popolari nella storia del cinema. Spielberg ha iniziato a dirigere la televisione a Hollywood e diverse uscite cinematografiche minori. È diventato un nome familiare come regista di Lo squalo (1975), che ha avuto successo di critica e commerciale ed è considerato il primo blockbuster estivo. Le sue uscite successive si sono concentrate tipicamente su film di fantascienza/avventura come Incontri ravvicinati del terzo tipo (1977), I predatori dell\'arca perduta (1981), E.T. l\'Extra-Terrestre (1982) e Jurassic Park (1993), che divennero gli archetipi del moderno cinema hollywoodiano di evasione.\r\n\r\nSpielberg è passato ad affrontare problemi seri nel suo lavoro successivo con Il colore viola (1985), L\'impero del sole (1987), Schindler\'s List (1993), Amistad (1997) e Salvate il soldato Ryan (1998). Ha ampiamente aderito a questa pratica durante il 21° secolo, con Munich (2005), Lincoln (2012), Bridge of Spies (2015) e The Post (2017).\r\n\r\nHa co-fondato Amblin Entertainment e DreamWorks Pictures, dove è stato anche produttore o produttore esecutivo per diverse trilogie cinematografiche di successo, tetralogie e altro, tra cui i Gremlins, Ritorno al futuro, Men in Black e la serie Transformers. Successivamente è passato alla produzione di diversi videogiochi.\r\n\r\nSpielberg è uno dei registi di maggior successo dell\'industria cinematografica americana, con elogi per il suo talento registico e la sua versatilità, e ha vinto due volte l\'Oscar come miglior regista. Alcuni dei suoi film sono anche tra i film di maggior incasso, mentre il suo lavoro totale lo rende il regista con il maggior incasso della storia.\r\n\r\nDescrizione sopra dall\'articolo di Wikipedia Steven Spielberg, con licenza CC-BY-SA, elenco completo dei contributori su Wikipedia.'),
(4, 'Pierre', 'Morel', 'pierre_morel.jpg', 'Pierre Morel è un regista, produttore, fotografo, è nato il 12 maggio 1964 Pierre Morel ha oggi 57 anni ed è del segno zodiacale Toro.\r\n\r\n'),
(5, 'Ahn', 'Byeong-ki', 'ahn_byeong_ki.jpg', 'Ahn Byeong-ki (5 novembre 1966) è un regista, produttore cinematografico e sceneggiatore sudcoreano, specializzato nel cinema dell\'orrore.\r\n\r\nLaureatosi al Seoul Institute of the Arts, inizia la propria carriera negli anni novanta come assistente alla regia di Chung Ji-young. Nel 2000, dopo aver lavorato come montatore in Jukgeona hokeun nabbeugeona, esordisce come regista e sceneggiatore in Ga-wi. Tra il 2002 e il 2004 raggiunge la notorietà dirigendo e scrivendo i film Phone (che produce con la sua neonata casa di produzione Toilet Pictures) e Bunsinsaba (2004), . Nel 2006 è regista, sceneggiatore e produttore del suo quarto film, Apateu, e produce una serie di quattro film horror (ognuno diretto da un diverso regista esordiente) intitolata 4 Horror Tales. In seguito produce i film drammatici di Kang Hyeong-cheol Kwa-sok-seu-kaen-deul (2008) e Sseo-ni (2011). Nel 2012 torna alla regia con Bi Xian, dirigendone anche i due sequel usciti nei successivi due anni.'),
(6, 'Malcolm D.', 'Lee', 'malcom_d_lee.jpg', 'Malcolm D. Lee (nato l\'11 gennaio 1970) è un attore, regista e sceneggiatore americano. Ha diretto film come Undercover Brother, The Best Man, Roll Bounce, Welcome Home Roscoe Jenkins e Soul Men. Ha anche diretto un episodio della sitcom Everybody Hates Chris. È cugino del regista Spike Lee e si è laureato al Packer Collegiate Institute e alla Georgetown University.'),
(7, 'Callan', 'Brunker', 'callan_brunker.jpg', 'Callan Brunker si è laureato seguendo il programma di animazione dello Sheridan College in Canada e in seguito ha lavorato per diverse major, tra cui Warner Bros., Disney, 20th Century Fox (Blue Sky), Universal (Illumination) e Weinstein Company. Ha curato la messa in scena di alcune sequenze memorabili per i film di animazione Ortone e il mondo dei chi, Cattivissimo me e L\'era glaciale 4 - Continenti alla deriva. Prima di entrare nel mondo del cinema, Brunker ha creato e venduto la serie televisiva Betty Banner Party Planner. Agli inizi della sua carriera è stato il responsabile creativo di uno studio commerciale, per cui ha diretto alcuni spot in animazione e live action.\r\nNel 2013 ha diretto il suo primo film, Fuga dal pianeta Terra.\r\n\r\n'),
(8, 'Samuel', 'Tourneux', 'samuel_tourneux.jpg', 'Un regista con un film nella sua filmografia'),
(9, 'Antoine', 'Fuqua', 'antoine_fuqua.jpg', 'Fuqua ha iniziato la sua carriera dirigendo video musicali per artisti famosi come Toni Braxton, Coolio, Stevie Wonder e Prince. Dal 1998 in poi, ha iniziato a dirigere lungometraggi, anche se da allora ha lavorato ad alcuni video musicali. In un articolo tributo per la rivista TIME, Fuqua ha espresso il suo primo rispetto per Kurosawa come regista e come Kurosawa abbia influenzato la sua prospettiva sul cinema affermando: \"(lo sceneggiatore Hashimoto) ... lavorare con Akira Kurosawa e Hideo Oguni, è stato così bello, poetico e potente e straziante. Era tutta una questione di giustizia, era tutta una questione di sacrificio e mi ha fatto desiderare di essere uno di quei ragazzi\".\r\n\r\nIl suo primo lungometraggio è stato il film d\'azione prodotto da John Woo The Replacement Killers (1998), con Chow Yun Fat. Ha poi diretto il thriller poliziesco Training Day (2001), per il quale la star Denzel Washington ha vinto un Oscar come miglior attore. I suoi film successivi sono stati il ​​dramma di guerra d\'azione Tears of the Sun (2003), il film leggendario arturiano King Arthur (2004), il thriller d\'azione sulla cospirazione Shooter (2007), il film poliziesco Brooklyn\'s Finest (2009) e i thriller d\'azione Olympus Has Fallen (2013) e The Equalizer (2014), l\'ultimo dei quali accoppia nuovamente Fuqua con Denzel Washington.\r\n\r\nHa co-creato la miniserie di fumetti After Dark con Wesley Snipes, scritta da Peter Milligan e illustrata da Jeff Nentrup. Fuqua doveva dirigere Prisoners, basato su un libro di fiabe di Aaron Guzikowski, ma ha lasciato il progetto. Doveva dirigere il film biografico ufficiale di Tupac Shakur. Il progetto è stato rinviato per consentire a Fuqua di dirigere il secondo lungometraggio del rapper Eminem, Southpaw. Tuttavia, Eminem ha sospeso Southpaw per concentrarsi sulla musica ed è stato sostituito con Jake Gyllenhaal. Nel 2010, la CBS Films ha assunto Fuqua per dirigere un nuovo film basato su un romanzo di Vince Flynn, Consent to Kill. Nel maggio 2014, la 20th Century Fox ha incaricato Fuqua di dirigere un film thriller sul traffico di droga Narco Sub, sceneggiato da David Guggenheim.\r\n\r\n'),
(10, 'Masahiko', 'Murata', 'masahiko_murata.jpg', 'È direttore dell\'animazione. Nato l\'8 agosto. Nato nella prefettura di Saitama. Albero passante libero e virata di gruppo. È stato il primo regista di OVA \"Mazinkaiser\". Le opere del regista principale sono il film \"The Naruto Shippuden: The Successor of the Fire\", \"The Naruto Shippuden The Lost Tower\" e \"The Naruto Blood Prison\". Nella serie TV ci sono “Gilgamesh”, “Tatsumi Hime”, “Tsubaki Hime Gen”, “NARUTO-SD Rock Lee Youth Full Power Shinobu”'),
(11, 'James', 'Wan', 'james_wan.jpg', 'James Wan (nato il 26 febbraio 1977) è un regista, sceneggiatore, produttore e scrittore di fumetti australiano nato in Malesia. Ha lavorato principalmente nel genere horror come co-creatore dei franchise \"Saw\" e \"Insidious\" e creatore dell\'universo \"The Conjuring\". Wan è anche il fondatore di Atomic Monster Productions, che ha prodotto progetti cinematografici e televisivi.\r\n\r\nDopo aver diretto il film a micro-budget \"Stygian\" (2000), Wan ha esordito alla regia di un lungometraggio professionale con \"Saw\" (2004). Il film è stato un successo e ha lanciato un franchise che ha incassato più di 1 miliardo di dollari a livello globale. Dopo un periodo di battute d\'arresto con i titoli poco performanti \"Dead Silence\" e \"Death Sentence\" (entrambi del 2007), Wan è tornato al successo commerciale con il fantasy horror soprannaturale PG-13 \"Insidious\" (2010), e ha continuato a dirigere \" Insidious: Part 2\" (2013) e per produrre ulteriori sequel della serie. Tra i suoi due progetti \"Insidious\", Wan ha diretto il più tradizionale film horror soprannaturale \"The Conjuring\" (2013), che ha ottenuto un enorme successo di critica e commerciale e ha generato una serie tentacolare di sequel e spin-off noti collettivamente come The Conjuring Universe. Wan è stato il regista di \"The Conjuring 2\" (2016) mentre produceva film successivi del franchise come \"Annabelle\" (2014) e \"The Nun\" (2018). The Conjuring Universe è il secondo franchise horror con il maggior incasso con oltre 2 miliardi di dollari.\r\n\r\nAl di fuori dell\'horror, Wan ha diretto \"Furious 7\" (2015), il settimo capitolo della serie \"Fast & Furious\" e il film di supereroi del DC Extended Universe \"Aquaman\" (2018). Entrambi hanno incassato oltre 1 miliardo di dollari, rendendo Wan l\'ottavo regista con due film a raggiungere il traguardo. È il 20° regista con il maggior incasso di tutti i tempi nel 2021, con i suoi film che hanno incassato oltre 3,6 miliardi di dollari in tutto il mondo.'),
(12, 'Ron', 'Howard', 'ron_howard.jpg', 'Ronald William Howard (nato il 1 marzo 1954) è un regista e attore americano. Howard è diventato famoso per la prima volta come attore bambino, recitando come guest star in diverse serie televisive, incluso un episodio di Ai confini della realtà. Ha guadagnato l\'attenzione nazionale per aver interpretato il giovane Opie Taylor, figlio dello sceriffo Andy Taylor (interpretato da Andy Griffith) nella sitcom The Andy Griffith Show dal 1960 al 1968. Durante questo periodo, è anche apparso nel film musicale The Music Man (1962). ), un successo di critica e commerciale. È stato accreditato come Ronny Howard nelle sue apparizioni cinematografiche e televisive dal 1959 al 1973.\r\n\r\nHoward è stato scelto per uno dei ruoli principali nel film di formazione American Graffiti (1973), che ha ricevuto ampi consensi ed è diventato uno dei film più redditizi della storia. L\'anno successivo, Howard è diventato un nome familiare per aver interpretato Richie Cunningham nella sitcom Happy Days, un ruolo che avrebbe interpretato dal 1974 al 1984. Howard ha continuato ad apparire in film durante questo periodo, come il film western The Shootist (1976) e il film commedia Grand Theft Auto (1977), che ha segnato anche il suo debutto alla regia.\r\n\r\nNel 1984, Howard lasciò Happy Days per concentrarsi sulla regia, la produzione e occasionalmente la scrittura di film di varietà e serie televisive. I suoi film includono il fantasy/fantascienza Cocoon (1985), il fantasy Willow (1988), il thriller Backdraft (1991), lo storico docudramma Apollo 13 (1995), la commedia natalizia How the Grinch Stole Christmas (2000), il dramma biografico A Beautiful Mind (2001), il dramma sportivo biografico Cinderella Man (2005), il thriller Il codice Da Vinci (2006), il dramma storico Frost/Nixon (2008), Solo: A Star Wars Story (2018) e il documentario Pavarotti (2019). Per A Beautiful Mind, Howard ha vinto l\'Oscar per il miglior regista e l\'Oscar per il miglior film. È stato nuovamente nominato per gli stessi premi per Frost/Nixon.\r\n\r\nNel 2003, Howard è stato insignito della National Medal of Arts. È stato inserito nella Television Hall of Fame nel 2013. Howard ha due stelle sulla Hollywood Walk of Fame per i suoi contributi nell\'industria televisiva e cinematografica.\r\n\r\nDescrizione presa dall\'articolo di Wikipedia Ron Howard, con licenza CC-BY-SA, elenco completo dei contributori su Wikipedia.'),
(13, 'Andy', 'Serkis', 'andy_serkis.jpg', 'Andrew \"Andy\" Clement Serkis (nato il 20 aprile 1964) è un attore e regista inglese. È noto soprattutto per i suoi ruoli di acquisizione delle prestazioni che comprendono recitazione in motion capture, animazione e lavoro vocale per personaggi generati al computer come Gollum nella trilogia cinematografica de Il Signore degli Anelli (2001-2003) e Lo Hobbit: un viaggio inaspettato (2012), King Kong nell\'omonimo film del 2005, Caesar in the Planet of the Apes serie reboot (2011-17), Captain Haddock / Sir Francis Haddock in Le avventure di Tintin di Steven Spielberg (2011), e il leader supremo Snoke in Star Wars: The Force Risveglio (2015). I prossimi ruoli di acquisizione delle prestazioni includono il leader supremo Snoke in Star Wars: Gli ultimi Jedi (2017) e Baloo in Il libro della giungla (2018).\r\n\r\nIl lavoro cinematografico di Serkis in motion capture è stato acclamato dalla critica. Ha ricevuto un Empire Award e due Saturn Awards per la sua recitazione in motion-capture. Ha ottenuto una nomination ai Golden Globe per la sua interpretazione del serial killer Ian Brady nel film televisivo britannico Longford (2006) ed è stato nominato per un BAFTA per la sua interpretazione del musicista new wave e punk rock Ian Dury nel film biografico Sex & Drugs & Rock & Rotolo (2010).\r\n\r\nNel 2015, ha iniziato a interpretare Ulysses Klaue nel Marvel Cinematic Universe a partire da Avengers: Age of Ultron. Serkis ha il suo laboratorio di motion capture, The Imaginarium Studios a Londra, che ha usato per Il libro della giungla. Ha esordito alla regia con il film Breathe del 2017.\r\n\r\nDescrizione sopra dall\'articolo di Wikipedia Andy Serkis, con licenza CC-BY-SA, elenco completo dei contributori su Wikipedia.'),
(14, 'Makoto', 'Shinkai', 'makoto_shinkay.jpg', 'Makoto Shinkai (nato come Makoto Niitsu) è un regista e animatore di anime giapponese. Traccia la sua passione per la creazione nei manga, negli anime e nei romanzi a cui è stato esposto durante le scuole medie. È sposato con Mika Shinohara.'),
(15, 'Hayao', 'Miyazaki', 'hayao_miyazaki.jpg', 'Hayao Miyazaki (Miyazaki Hayao, nato il 5 gennaio 1941) è un artista manga giapponese e un importante regista e animatore di molti famosi film di anime. Attraverso una carriera che dura da quasi cinque decenni, Miyazaki ha ottenuto riconoscimenti internazionali come produttore di lungometraggi animati e, insieme a Isao Takahata, ha co-fondato Studio Ghibli, uno studio di animazione e una società di produzione. Il successo dei film di Miyazaki ha invitato a confrontarsi con l\'animatore americano Walt Disney, l\'animatore britannico Nick Park e Robert Zemeckis, che ha aperto la strada all\'animazione Motion Capture, ed è stato nominato una delle persone più influenti da Time Magazine.'),
(16, 'Bong', 'Joon-ho', 'bong_joon_ho.jpg', 'Bong Joon-ho (coreano: 봉준호), nato il 14 settembre 1969, è un regista, produttore e sceneggiatore sudcoreano. I suoi film sono caratterizzati dall\'enfasi su temi sociali, mescolanza di generi, umorismo nero e improvvisi cambiamenti di tono.\r\n\r\nÈ diventato noto al pubblico per la prima volta e ha raggiunto un seguito di culto con il suo film d\'esordio alla regia, la commedia nera Barking Dogs Never Bite (2000), prima di raggiungere il successo sia di critica che commerciale con i suoi film successivi: il thriller poliziesco Memories of Murder (2003), il film di mostri The Host (2006), il film d\'azione di fantascienza Snowpiercer (2013) e il thriller sociale commedia nera vincitore dell\'Oscar Parasite (2019), tutti tra i film di maggior incasso in Corea del Sud, con Parasite essendo anche il film sudcoreano con il maggior incasso nella storia.\r\n\r\nTutti i film di Bong sono stati produzioni sudcoreane, sebbene sia Snowpiercer che Okja (2017) siano per lo più in lingua inglese. Due dei suoi film sono stati proiettati in concorso al Festival di Cannes: Okja nel 2017 e Parasite nel 2019; quest\'ultimo ha vinto la Palma d\'oro, la prima per un film sudcoreano. Parasite è diventato anche il primo film sudcoreano a ricevere nomination all\'Oscar, con Bong che ha vinto come miglior film, miglior regista e miglior sceneggiatura originale, rendendo Parasite il primo film non in inglese a vincere come miglior film. Nel 2017, Bong è stato incluso nella lista di Metacritic dei 25 migliori registi del 21° secolo. Nel 2020, Bong è stato incluso nell\'elenco annuale di Time delle 100 persone più influenti e di Bloomberg 50.'),
(17, 'Robert', 'Zemeckis', 'robert_zemeckis.jpg', 'Robert Lee Zemeckis (nato il 14 maggio 1952) è un regista, produttore e sceneggiatore americano. Zemeckis è venuto all\'attenzione del pubblico per la prima volta negli anni \'80 come regista della serie di film comici Ritorno al futuro sul viaggio nel tempo, così come del film epico live-action / animazione vincitore di un Oscar Chi ha incastrato Roger Rabbit (1988), anche se nel Negli anni \'90 si è diversificato in piatti più drammatici, incluso Forrest Gump del 1994, per il quale ha vinto un Academy Award come miglior regista.'),
(18, 'Elizabeth Chai', 'Vasarhelyi', 'elizabeth_chai_vasarhelyi.jpg', 'Elizabeth Chai Vasarhelyi è una regista e produttrice, nota per Meru (2015), Youssou Ndour: I Bring What I Love (2008) e Incorruptible (2015). È sposata con Jimmy Chin dal 26 maggio 2013.'),
(19, 'Haruo', 'Sotozaki', 'haruo_sotazaki.jpg', 'Non abbiamo una biografia per Haruo Sotozaki.'),
(20, 'James', 'Cameron', 'james_cameron.jpg', 'James Cameron è nato a Kapuskasing, Ontario, Canada, il 16 agosto 1954. Si è trasferito negli Stati Uniti nel 1971. Figlio di un ingegnere, si è laureato in fisica alla California State University ma, dopo la laurea, ha guidato un camion per sostenere i suoi ambizione di sceneggiatura. Ha ottenuto il suo primo lavoro cinematografico professionale come direttore artistico, costruttore di set di miniature e supervisore della proiezione del processo in Battle Beyond the Stars (1980) di Roger Corman e ha debuttato come regista con Piranha Part Two: The Spawning (1981) l\'anno successivo. Nel 1984 ha scritto e diretto Terminator (1984), un thriller d\'azione futuristico con Arnold Schwarzenegger, Michael Biehn e Linda Hamilton. È stato un enorme successo. Dopo questo è arrivata una serie di film d\'azione di fantascienza di successo come Aliens (1986) e Terminator 2: Judgment Day (1991). Cameron è ora uno dei registi più ricercati di Hollywood. In precedenza era sposato con il produttore Gale Anne Hurd, che ha prodotto molti dei suoi film. Ha sposato Kathryn Bigelow nel 1989.');

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anno` int(11) NOT NULL,
  `trama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locandina` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `durata` int(10) UNSIGNED NOT NULL,
  `director_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`id`, `titolo`, `anno`, `trama`, `locandina`, `categoria_id`, `durata`, `director_id`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Indiana Jones e il regno del teschio di cristallo', 2008, 'Diciannove anni dopo Indiana Jones e l\'ultima crociata l\'eroe con frusta e Fedora creato da Lucas e Spielberg ricomincia la sua attività di archeologo in corsa.\r\nGli anni sono passati per lui come per gli spettatori e quindi lo ritroviamo nel 1957 nel bel mezzo di un deserto del Sudovest degli Usa mentre la Guerra Fredda domina la scena politica con il terrore del conflitto nucleare e al cinema fanno la loro comparsa gli \'esseri venuti dallo spazio\'. Questa volta quindi i \'cattivi\' sono i russi e il professor Jones, dopo essere sfuggito alle loro grinfie nella sequenza iniziale, si trova preso di mira dalla CIA la quale non si fida di lui al punto di fargli togliere la cattedra. Indiana è allora pronto per farsi sollecitare da un giovane atteggiato \'alla Marlon Brando\' e a lanciarsi in una nuova avventura carica di azione e con una nemica implacabile alle calcagna: Irina Spalko, una sensitiva affamata, come ormai è tradizione, di potere.', 'indiana_jones_e_il_regno_del_teschio.jpg', 2, 125, 3, 'https://www.youtube.com/embed/S1TLVjudQkI', NULL, NULL),
(2, 'The call - non rispondere', 2003, 'Tutto comincia quando la giovane Yoko (Anna Nagata) non riesce a rispondere a una chiamata sul cellulare, proveniente inspiegabilmente dal suo stesso numero. Alla chiamata segue un messaggio in segreteria contenente un urlo angosciante e datato due giorni dopo, esattamente quando la povera Yoko verrà gettata sotto un treno in corsa e morirà. Nei giorni seguenti i cellulari di altri ragazzi cominciano a squillare con la stessa terrificante suoneria e, di nuovo, i messaggi annunciano l’imminente morte dei proprietari o di altri amici presenti in rubrica.', 'the_call.jpg', 9, 112, 5, 'https://www.youtube.com/embed/fEBvehTjEs0', NULL, NULL),
(3, 'Space jam - new legends', 2021, 'LeBron James, campione di pallacanestro che da ragazzino fu in grado di abbandonare la passione per i videogiochi per concentrarsi sul gioco dal vero, sogna un futuro da sportivi per i figli Darius e Dominic. Mentre con il primo le cose vanno come sperato, con il secondo LeBron è costretto a infinite discussioni, per via del desiderio di Dom di diventare progettista di videogiochi. Durante un incontro con i capi della Warner Bros., Dom chiede informazioni sui server degli studios e attira l\'attenzione di uno di questi, Al-G Rhythm. Malvagio e indipendente, Al-G risucchia LeBron e il figlio in un universo parallelo composto da film, cartoni e serie della Warner e costringe il campione a giocare con i Looney Tunes contro la Goon Squad, squadra composta dai cloni computerizzati di alcuni fortissimi giocatori di basket.\r\n\r\n', 'space_jame_new_legend.jpg', 1, 115, 6, 'https://www.youtube.com/embed/8uJih78e4rY', NULL, NULL),
(4, 'Paw Patrol - il Film', 2021, 'Ad Adventure Bay, pacifico villaggio sul mare, il giovane Ryder e la squadra di cuccioli da salvataggio sono sempre pronti a risolvere pericoli e situazioni estreme. Dopo la chiamata d\'emergenza del bassotto Liberty, agente inviato nella vicina Adventure City, Ryder e i suoi cani vengono a sapere che l\'arrogante e vanesio sindaco Humdinger, loro acerrimo nemico, ha avviato una serie di politiche pericolose per gli umani e gli animali della città, dai progetti per una nuova metropolitana o un grattacielo a un folle esperimento scientifico per controllare il tempo che rischia di mettere a repentaglio la sicurezza di tutti..', 'paw_patrol.jpg', 1, 86, 7, 'https://www.youtube.com/embed/HMeipNQ8peU', NULL, NULL),
(5, 'Il giro del mondo in 80 giorni', 2021, 'La giovane scimmia Passepartout, chiusa nella sua cameretta, sogna il giorno in cui potrà avventurarsi, zaino in spalla, sulle orme del suo idolo, l’esploratore Juan Frog De Leon, detentore del record del giro del mondo nel più breve tempo possibile: novanta giorni. Nel mentre, però, vive in una terra popolata di gamberetti, dove l’avventura non ha spazio alcuno, almeno fino al giorno in cui arriva, in infradito su una tavola da surf, il ranocchio Phileas Frog. Simpatico e sbruffone, inseguito dal gerbillo femmina Fix, che lo accusa di aver rubato dieci milioni di vongoloni, Frog non trova di meglio per cavarsi d’impaccio che promettere di battere lo storico record circumnavigando il globo in soli ottanta giorni. È l’occasione che Passepartout aspettava da sempre, e per la quale vale persino la pena di scappare di casa.', 'il_giro_del_mondo_in_80_giorni.jpg', 1, 82, 8, 'https://www.youtube.com/embed/bnUHdYb5Fis', NULL, NULL),
(6, 'Naruto - la prigione insanguinata', 2011, 'La sfida di Naruto per rivendicare il suo onore ha inizio!', 'naruto_la_prigione_insanguinata.jpg', 1, 108, 10, 'https://www.youtube.com/embed/Jd0qOdmfvw0', NULL, NULL),
(7, 'C\'era una volta...a hollywood', 2019, 'Los Angeles, 1969. Sharon Tate, promettente attrice americana e sposa di Roman Polanski, è la nuova vicina di Rick Dalton, star della televisione in declino. Dalton condivide la scena con Cliff Booth, stuntman che si è fatto (e rotto) le ossa nei western girati a Spahn Ranch. Controfigura e chauffeur di Dalton, Cliff vive in una roulotte con una cane disciplinato e fedele proprio come lui che da anni ammortizza le cadute e i rovesci dell\'amico. E l\'ultimo scacco costringe Rick e il suo doppio a traslocare dall\'altra parte dell\'oceano per girare un pugno di spaghetti-western. Sei mesi e una moglie (italiana) dopo, Rick e Cliff tornano a Los Angeles dove li attende la notte più calda del 1969.', 'una_volta_a_hollywood.jpg', 7, 161, 1, 'https://www.youtube.com/embed/TLmHNBmzz84', NULL, NULL),
(8, 'Hugo Cabret', 2011, 'Il piccolo Hugo Cabret vive nascosto nella stazione di Paris Montparnasse. Rimasto orfano, si occupa di far funzionare i tanti orologi della stazione e coltiva il sogno di aggiustare l\'uomo meccanico che conserva nel suo nascondiglio e che rappresenta tutto ciò che gli è rimasto del padre. Per farlo, sottrae gli attrezzi di cui ha bisogno dal chiosco del giocattolaio, un uomo triste e burbero, ma viene colto in flagrante dal vecchio e derubato del prezioso taccuino di suo padre con i disegni dell\'automa. Riavere quel taccuino è per Hugo una questione vitale.', 'hugo_cabret.jpg', 2, 125, 2, 'https://www.youtube.com/embed/LiqKlLHH_z8', NULL, NULL),
(9, 'Lo squalo', 1975, 'Ad Amity, cittadina balneare del New England, si sparge il terrore per gli attacchi di un pescecane. Un poliziotto (Scheider), un ittiologo (Dreyfuss) e un cacciatore di squali (R. Shaw) si mettono in mare per dargli la caccia. Ma è lui che trova loro.', 'lo_squalo.jpg', 8, 125, 3, 'https://www.youtube.com/embed/JC_FRHoXmOM', NULL, NULL),
(10, 'L\'ultima alba', 2003, 'Dopo un colpo di stato in Nigeria, al comandante Walters è affidato il compito di portare in salvo i componenti di una missione, il cui capo è la dottoressa Lendricks, che presta la sua opera di medico volontario nella giungla. La donna non vuole però abbandonare i pazienti al loro destino, e d\'altronde Waters non può imbarcare gli indigeni sul suo elicottero per non incorrere in ritorsioni diplomatiche. Preso da un soprassalto di umanità, l\'ufficiale decide di disobbedire agli ordini e di accompagnare i componenti della missione fino al confine con il Camerun.', 'lultima_alba.jpg', 3, 121, 9, 'https://www.youtube.com/embed/2CLoq_iFYE4', NULL, NULL),
(11, 'Aquaman', 2018, 'Arthur è figlio di Tom, guardiano di un faro, e Atlanna, nientemeno che regina di Atlantide. L\'unione dei due è però clandestina, tanto che per salvare il figlio Atlanna accetterà di farsi giudicare nella città subacquea, che la giustizierà consegnandola al più feroce dei popoli sottomarini. Arthur cresce imparando in segreto da Vulko, consigliere del re e di suo figlio Orm, i segreti di Atlantide, ma da adulto preferisce stare lontano dalla città sommersa e si limita a compiere gesta eroiche in mare, come salvare un sottomarino da un team di pirati. Qui finisce per lasciare morire uno di loro e il figlio giura vendetta, tanto da allearsi con il fratellastro di Arthur, Orm. Nel mentre la figlia di Re Nereus, Mera, cerca di convincere Arthur ad abbracciare il suo retaggio di regale atlantideo per scongiurare una guerra, ma per riuscire in questo piano sarà necessario ritrovare il perduto tridente di Atlan.', 'aquaman.jpg', 3, 143, 11, 'https://www.youtube.com/embed/moNv1SlFneI', NULL, NULL),
(12, 'Peppermint - l\'angelo della vendetta', 2018, 'Riley North, moglie e madre di famiglia di Los Angeles, assiste impotente all\'uccisione del marito e della figlia da parte di una gang di narcotrafficanti. Ferita nell\'attacco, riesce comunque a testimoniare contro gli assalitori, ma a causa di un giudice corrotto le sue dichiarazioni sono invalidate e il processo annullato. Cinque anni dopo, Riley, nel frattempo scomparsa e trasformatasi in una spietata assassina, torna per portare a termine la sua vendetta: a uno a uno cercherà i responsabili impuniti della strage (primo fra tutti il boss della droga Diego Garcia), mentre la polizia di Los Angeles cercherà di fermarla e un\'intera nazione la acclamerà come eroina', 'peppermint.jpg', 3, 102, 4, 'https://www.youtube.com/embed/DGbX7J3dGIA', NULL, NULL),
(13, 'A beautiful mind', 2001, 'Il film si ispira alla vita di John Forbes Nash Jr. Di origini medio borghesi, Forbes nacque in una piccola città della Virginia occidentale il 13 giugno 1928 e, per oltre cinquant\'anni è stato considerato un mito negli ambienti della ricerca matematica. Grazie al suo studio della teoria dei giochi, negli anni 50 diventò l\'astro nascente della \"nuova matematica\". Poco a poco, vittima di una grave forma di schizofrenia, Nash sprofondò in un mondo tutto suo, convinto che le sue allucinazioni fossero realtà. Passò diversi anni in ospedali psichiatrici, ma durante la sua assenza, la teoria dei giochi acquistò un ruolo di importanza fondamentale nei campi dell\'economia e degli affari. Nel 1994, Nash aveva riacquistato il pieno controllo della sua vita e ripreso le ricerche. In quello stesso anno venne insignito del Premio Nobel per l\'economia.', 'a_beautiful_mind.jpg', 4, 135, 12, 'https://www.youtube.com/embed/UT4Oq_dOofY', NULL, NULL),
(14, 'L\'evocazione - The Conjuring', 2013, 'Una famiglia del New England ha degli incontri ravvicinati con i terribili spiriti che infestano la loro casa colonica. Per liberarsi delle presenze maligne, la famiglia è costretta a chiedere l\'aiuto degli investigatori Ed e Lorraine Warren (realmente esistiti), esperti di fenomeni dell\'occulto.', 'The-Conjuring.jpg', 9, 112, 11, 'https://www.youtube.com/embed/qmSkwjZkQ3c', NULL, NULL),
(15, 'Venom - La furia di Carnage', 2021, 'Dopo aver trovato un corpo ospite nel giornalista investigativo Eddie Brock, il simbionte alieno dovrà affrontare un nuovo nemico, Carnage, alter ego del serial killer Cletus Kasady. Nella scena post credits del primo film, infatti, Eddie Brock in sella alla sua moto raggiunge la prigione di San Quentin per intervistare l\'omicida. Durante il loro breve dialogo, Kasady preannuncia che riuscirà a uscire dalla prigione e a compire una nuova carneficina. Il killer, infatti, riesce a evadere dal carcere, ospitando un simbionte alieno, il rosso Carnage, che seminerà il terrore in città. Solo Brock e il suo Venom possono fermarlo.', 'venom_la_furia_di_carnage.jpg', 2, 97, 13, 'https://www.youtube.com/embed/72fjFzUHWPc', NULL, NULL),
(16, 'Your Name', 2016, 'Mitsuha è una studentessa che vive in una piccola città rurale e desidera trasferirsi a Tokyo, nella grande metropoli dove ogni sogno si può realizzare. Taki è uno studente di liceo che vive proprio a Tokyo, ha un lavoro part-time in un ristorante italiano, ma vorrebbe lavorare nel campo dell’arte o dell’architettura. Una notte, Mitsuha sogna di essere un giovane uomo, si ritrova in una stanza che non conosce, ha nuovi amici e lo skyline di Tokyo si apre dinnanzi al suo sguardo. Nello stesso momento Taki sogna di essere una ragazzina che vive in una piccola città di montagna che non ha mai visitato. Ma quale sarà il segreto che si cela dietro questi strani sogni incrociati?', 'your_name.jpg', 1, 106, 14, 'https://www.youtube.com/embed/fk0iJgWpddg', NULL, NULL),
(17, 'Il giardino delle parole', 2013, 'Takao, che si sta preparando per diventare un calzolaio, ha saltato la scuola e disegna scarpe in un giardino alla giapponese. Qui, Takao incontra Yukino, una donna misteriosa e più grande di lui. Senza mai mettersi d\'accordo, i due continuano a vedersi più volte ma sempre e solo nei giorni di pioggia.', 'il_giardino_delle_parole.jpg', 1, 46, 14, 'https://www.youtube.com/embed/49ufwE8vcY8', NULL, NULL),
(18, 'cinque cm al secondo', 2007, 'Takaki e Akari sono due bambini che frequentano la stessa classe alle scuole elementari e che hanno stretto una grande amicizia. La loro relazione viene però messa alla prova quando la famiglia di Akari deve trasferirsi in un\'altra città. Entrambi cercano di mantenere i contatti, ma la distanza e il tempo giocano lentamente e inevitabilmente la loro partita. Quando, alcuni anni dopo, Takaki scopre che anche la sua famiglia dovrà trasferirsi, decide di far visita a Akari per un\'ultima volta.', '5_cm_al_secondo.jpg', 1, 63, 14, 'https://www.youtube.com/embed/E-qCXEh_1Ks', NULL, NULL),
(19, 'Weathering with You', 2019, 'Hodaka è uno studente delle superiori che decide di scappare di casa e da una remota isola si trasferisce a Tokyo. In città inizialmente fa fatica a mantenersi perché non è in grado di lavorare legalmente a causa del suo status di minorenne in fuga, ma finalmente trova un lavoro come scrittore per una piccola rivista sull\'occulto. Dopo aver iniziato il suo lavoro, il tempo diventa sempre più piovoso giorno dopo giorno. In un angolo della città affollata e frenetica, Hodaka incontra una ragazza di nome Hina. Costretti dalle circostanze, Hina e il fratello minore vivono insieme, anche se accettano la situazione allegramente. Hina ha anche un potere: è in grado di fermare la pioggia e schiarire il cielo.', 'weathering_with_you.jpg', 1, 111, 14, 'https://www.youtube.com/embed/QP54fafhb5k', NULL, NULL),
(20, 'La città incantata', 2001, 'La piccola Chihiro non sopporta l\'idea di traslocare e di perdere i propri amici, ma non può far niente per impedirlo. Proprio quando la famiglia è in viaggio verso la nuova casa, il padre imbocca una strada sterrata che termina davanti a un tunnel misterioso. I genitori sceglieranno di attraversarlo nonostante le rimostranze di Chihiro, per giungere a un parco dei divertimenti abbandonato, almeno apparentemente.', 'la_citta_incantata.jpg', 1, 125, 15, 'https://www.youtube.com/embed/Fg0mKl5Ekek', NULL, NULL),
(21, 'Il mio vicino Totoro', 1988, 'Le sorelline Satsuki e Mei si trasferiscono insieme al padre in una nuova casa in campagna. Per le due bambine inizia un viaggio alla scoperta di un nuovo mondo, abitato da creature fantastiche: dai nerini del buio, spiritelli della fuliggine, a buffi esseri di pelo di varie dimensioni, tra cui Totoro, lo spirito buono della foresta! Insieme a lui, Satsuki e la piccola Mei vivranno una magica e straordinaria avventura all’insegna dell’amicizia!', 'il_mio_vicino_totoro.jpg', 1, 86, 15, 'https://www.youtube.com/embed/kgaqt9iBHGc', NULL, NULL),
(22, 'Parasite', 2019, 'Tutta la famiglia di Ki-taek è senza lavoro. Ki-taek è particolarmente interessata allo stile di vita della ricchissima famiglia Park. Un giorno, suo figlio riesce a farsi assumere dai Park e le due famiglie si ritrovano così intrecciate da una serie di eventi incontrollabili.', 'parasite.jpg', 10, 134, 16, 'https://www.youtube.com/embed/koiB4unMLvo', NULL, NULL),
(23, 'Snowpiercer', 2013, '2031. Dopo il fallimento di un esperimento per contrastare il riscaldamento globale, una vera e propria Era Glaciale stermina tutti gli abitanti del pianeta. Gli unici sopravvissuti sono i viaggiatori che hanno lottato con tutte le loro forze per procurarsi un biglietto ed aggiudicarsi un posto a bordo dello Snowpiercer, un treno ad alta velocità che fa il giro del mondo e che trae energia da un motore in moto perpetuo. Questo treno è l’unico mezzo che garantisce la sopravvivenza, diventando un microcosmo di società umana diviso in classi sociali: i più poveri stipati nelle ultime carrozze; i più ricchi nei lussuosi vagoni anteriori. La difficile convivenza ed i delicati equilibri tra classi non potranno che sfociare inevitabilmente in lotte e rivoluzioni.', 'snowpiercer.jpg', 7, 136, 16, 'https://www.youtube.com/embed/pKlwliI9Li4', NULL, NULL),
(24, 'Forrest Gump', 1994, 'Forrest Gump - un ragazzo non proprio idiota, ma dal basso coefficiente d\'intelligenza - racconta la sua storia a coloro che, uno dopo l\'altro, si siedono vicino a lui in attesa dell\'autobus. È stato in Vietnam, ha stretto la mano a tre presidenti, ha incontrato Elvis, ha assistito ai movimenti studenteschi, ha casualmente fatto esplodere il Watergate, ha suggerito le parole di \"Imagine\" a John Lennon e per tutta la vita è stato innamorato di una ragazza conosciuta fin da bambino.', 'forrest_gump.jpg', 5, 137, 17, 'https://www.youtube.com/embed/bLvqoHBptjg', NULL, NULL),
(25, 'The Rescue - Il salvataggio dei ragazzi', 2021, 'Segue il salvataggio di una squadra di calcio thailandese intrappolata in una grotta per 16 giorni.', 'the_rescue.jpg', 6, 107, 18, 'https://www.youtube.com/embed/_-Kw5kAPSbk', NULL, NULL),
(26, 'Demon Slayer - Il treno Mugen', 2020, 'Enmu, recentemente liberato dalle celle Muzan, si propone di attaccare un misterioso treno in movimento. Nel corso dell\'attacco, il demone consuma molti passeggeri. Tanjiro Kamado viene in soccorso, ma questo treno in movimento trasporta più di un cattivo demone da combattere.', 'demon_slayer.jpg', 1, 117, 19, 'https://www.youtube.com/embed/9hY8Ih_Z6Hw', NULL, NULL),
(27, 'Titanic', 1997, 'Rose ha diciassette anni, una madre egoista, un fidanzato facoltoso e una vita pianificata. Imbarcata sul Titanic e insoddisfatta della propria subalternità al futuro sposo incontra Jack, romantico disegnatore della terza classe che ha vinto a poker un biglietto per l\'America. Contro le convenzioni e il destino, che chiederà il conto in una notte senza luna, Rose e Jack si innamorano, spiegando il loro spirito come i motori del più grande transatlantico del mondo. Lanciato nella sua prima traversata oceanica il Titanic è colpito al cuore da un iceberg, \'affondando\' millecinquecento persone e il futuro dei due giovani amanti. Ottantaquattro anni dopo l\'ultracentenaria Rose, scampata al naufragio e sopravvissuta a Jack, racconterà a un gruppo di scienziati la meraviglia di un amore interclassista e la stupidità di un mondo diviso in classi. Un mondo che il Titanic inabisserà in un oceano nero il 15 aprile del 1912.', 'titanic.jpg', 7, 194, 20, 'https://www.youtube.com/embed/IhTpfdA8EJU', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `genre`
--

CREATE TABLE `genre` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome_categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `genre`
--

INSERT INTO `genre` (`id`, `nome_categoria`) VALUES
(1, 'Animazione'),
(2, 'Avventura'),
(3, 'Azione'),
(4, 'Biografico'),
(5, 'Commedia'),
(6, 'Documentario'),
(7, 'Drammatico'),
(8, 'Fantastico'),
(9, 'Horror'),
(10, 'Thriller');

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_16_133946_create_sessions_table', 2),
(6, '2021_11_15_174202_create_film_table', 3),
(7, '2021_11_15_174417_create_director_table', 3),
(8, '2021_11_15_174507_create_genre_table', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_to_watch`
--

CREATE TABLE `movie_to_watch` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `movie_to_watch`
--

INSERT INTO `movie_to_watch` (`id`, `user_id`, `film_id`) VALUES
(72, 10, 1),
(73, 10, 6),
(74, 10, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mmichela2903@gmail.com', '$2y$10$QnBpqwqDg6Tuc9uBy7lPNe11Pye01T7RKCqpntJRKYm3IEqXw10te', '2021-12-06 20:21:17');

-- --------------------------------------------------------

--
-- Struttura della tabella `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `numStelle` int(11) NOT NULL,
  `testo` text DEFAULT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `titolo_film` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nomeUtente` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `review`
--

INSERT INTO `review` (`id`, `titolo`, `numStelle`, `testo`, `film_id`, `titolo_film`, `user_id`, `nomeUtente`, `created_at`) VALUES
(61, 'Una pellicola riuscita', 4, 'Quando si dice che un film \"riesce\" si può capire bene che in oni punto di vista quel film ha dei buoni risultati.Questo accade proprio nel caso della suddetta pellicola,nella quale si alternano momenti di vario tipo: ironici,inquietanti,avventurosi,sentimentali e riflessivi.', 1, 'Indiana Jones e il regno del teschio di cristallo', 10, 'Michela', '2021-12-10 09:57:24'),
(63, 'Bellissimo', 5, 'Diciamo la verità...se questo film fosse uscito prima tutti gli \"affezionati\" di Indiana Jones lo avrebbero apprezzato di più!! Guardandolo attentamente non c\'è dubbio: non si discosta nemmeno un po\' dallo spirito dei primi tre film e Spielberg è sempre innamorato del suo personaggio, in questa sua nuova grandiosa avventura che non stride neanche un po\'.', 1, 'Indiana Jones e il regno del teschio di cristallo', 11, 'Mattia', '2021-12-10 13:35:19'),
(66, 'Molto deludente', 1, 'Dopo dei capolavori come i primi tre film della saga del mitico Indiana Jones mi aspettavo un capolavoro anche questa volta, e invece? Un film assai deludente e mediocre che ti lascia l\'amaro in bocca. La trama non è un granchè e il film è noiosissimo, anche se qualche battuta divertente ogni tanto salva un po\' il film.', 1, 'Indiana Jones e il regno del teschio di cristallo', 12, 'Asia', '2021-12-10 13:15:14'),
(67, 'Divertente', 3, 'Qui mi sa che nessuno ha capito che questo film è una parodia a tutti i film di Spielberg e alla saga di Indiana Jones, infatti a me questo film è piaciuto e mi ha fatto ridere.', 1, 'Indiana Jones e il regno del teschio di cristallo', 13, 'Federica', '2021-12-10 13:16:41'),
(68, 'Discreto', 3, 'La storia è un po\' commerciale con alieni, misteri e poca archeologia. Una rivisitazione un po\' troppo banale, però per fortuna sono stati mantenuti molti aspetti dei vecchi film (anche troppo uguali). Personalmente tutto quello che era copiare dai vecchi film l\'ho trovato bello mentre i nuovi spunti di fantascienza li ho trovati fuori posto.', 1, 'Indiana Jones e il regno del teschio di cristallo', 14, 'Anna', '2021-12-10 13:33:42'),
(69, 'Un ottimo film', 5, 'Un prodotto di ottima fattura e senza intoppi. Indiana Jones nel 2000 regge bene il peso degli anni e non sfigura rispetto ai film precedenti. Anche se non è a quel livello resta comunque un\'opera che celebra la sua grandezza e rinsalda una figura del cinema.', 1, 'Indiana Jones e il regno del teschio di cristallo', 15, 'Alfonso', '2021-12-10 13:37:30'),
(70, 'Il capolavoro di martin scorsese', 5, 'Ci sono alcuni film destinati a rimanere impressi nel cuore e nella mente. La storia del piccolo Hugo che, dopo la morte del padre (la madre era già deceduta qualche tempo prima), si trasferisce assieme allo zio nella stazione dei treni di Parigi. Qui, anche dopo la scomparsa del suo ultimo parente, continua ad occuparsi della manutenzione degli orologi. Come il padre, anche Hugo possiede abilità nel riparare congegni metallici e, nel tempo libero, cerca di assemblare un automa ereditato dal genitore. Legame ultimo del loro splendido rapporto, l\'automa nasconde un piccolo mistero.', 8, 'Hugo Cabret', 10, 'Michela', '2021-12-10 13:40:23'),
(71, 'Un grandissimo capolavoro! immenso!', 5, 'Che dire, si tratta senza dubbio di un capolavoro unico nel suo genere. Tocca gli eventi principali della storia americana recente, analizzando grandi problematiche ancora attuali, come la discriminazione verso i diversi (che sia per etnia o per disabilità), la devastazione e l\'inutilità della guerra, il pericolo della droga e dell\'Aids, la violenza nella famiglia, ma anche l\'amore per la vita, l\'amicizia, la forza di inseguire i propri sogni, e potrei continuare ancora se non avessi un limite di spazio. Qualsiasi tentativo di rinchiuderlo nei canoni stabiliti per un film risulterebbe riduttivo. Vedendolo lo spettatore proverà un\'ampia gamma di emozioni, che in base alla propria sensibilità spazieranno dalla tristezza e malinconia alla gioia e al divertimento.', 24, 'Forrest Gump', 10, 'Michela', '2021-12-10 13:42:08'),
(72, 'La tragedia del titanic', 5, 'La nave piu grande mai costruita, il trasatlantico che tutti credevano inaffondabile, costata un sacco di soldi e considerata la piu sicura di allora. Il film ci racconta nel modo piu delicato, overro attraverso i ricordi di una anziana donna che parla della sua avventura da ragazza con il giovane Jack, la vicenda della tragica fine del Titanic. Il film potrei dire che si divide in due meta\' :la prima e\' l\'incontro tra Jack e Rose e la loro avventura mentre la seconda e\' il drammatico accaduto al titanic dallo scontro con l\'iceberg fino al affondamento.', 27, 'Titanic', 10, 'Michela', '2021-12-10 13:44:48'),
(74, 'Quando la paura è atmosfera pura', 4, 'Ormai se ne sente parlare ovunque: \"The conjuring\" è il miglior film horror degli ultimi anni. La cosa mi ha incuriosito, così sono andato a vederlo anche io. Ho raccattato un paio di amici e ci siamo fiondati nel cinema più vicino. Ispirato alla vera storia della famiglia Perron, che, trasferitasi in una spettrale casa di campagna, si accorgono ben presto che non sono i soli ad abitare quelle fatiscenti mura; chiedono così aiuto ai coniugi Warren, demonologi di professione, sperando che questi siano in grado di liberare la loro casa dall\'oscura presenza che infesta la dimora. Sulle prime sono un po\' scettico sulla riuscita del film, eppure, andando avanti nella visione, devo ammettere che anche questa volta il regista James Wan (che già avevo apprezzato con il primo Saw) ha fatto centro.', 14, 'L\'evocazione - The Conjuring', 14, 'Anna', '2021-12-10 13:49:30'),
(75, 'Capolavoro', 5, 'Un film toccante, che guida lo spettatore in un percorso di montagne russe emotive degne di rilievo. Grande regia, grande sceneggiatura, ottima colonna sonora. Un film perfetto, credo: sicuramente il migliore di Ron Howard.', 13, 'A beautiful mind', 10, 'Michela', '2021-12-10 13:54:49'),
(76, 'L\'evocazione - the conjuring', 3, 'Chiunque mastichi un poco il genere ha sentito parlare di James Wan, oppure ha sentito parlare di Saw – L’enigmista e non sa che il regista è James Wan. Il film d’esordio del giovane malese ha fatto discutere il mondo intero e grazie a una maschera e un triciclo ha creato l’unica icona horror seriale del nuovo millennio. Saw possedeva una certa originalità e si innestava in una corrente dell’orrore ai tempi ancora poco diffusa. Dopo di che, gli interessi di Wan sono stati di stampo più tradizionale e tra bambolotti e oscuri demoni ha dimostrato agilità e competenza dietro la macchina da presa, senza però doppiare l’influenza e l’eco del primo lungometraggio.', 14, 'L\'evocazione - The Conjuring', 10, 'Michela', '2021-12-10 14:59:31');

-- --------------------------------------------------------

--
-- Struttura della tabella `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Ea4UD0ZKhwI0ZV7x8dm0ndVMKU7OjWebDhLgAqMi', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVUhjajdOd3ZJTmNSYmRDbTdWd05Kb1k2Vnp1eTZvTkw3dVRsb2dIeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwO30=', 1639148096),
('mf8DGnCqx8yPvIXxQ9Bt0f3wEmvQyyCwkXtf1laK', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibkt0M1dSemRadzhzakw5a0ZwS2MwdWs4OEY4M3dLYWxLRGJLSU94dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwO30=', 1639148527),
('O7aWowwQcwjT4DoGTJrRtobqDENybnNm1n4QsFmL', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoianJxbVhMNlJla1RraE82NnJuY0pXT0VwalFiM1BBOGN0TkNHZU5BUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleD9wYWdlPTIiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMDt9', 1639146812);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'Michela', 'michela@email.com', NULL, '$2y$10$dZ3gXp6gdy/qsp3ch2KuH.HXBKRASa487BP2HBV35xp1V1HMCRMbm', NULL, '2021-12-10 08:52:40', '2021-12-10 08:52:40'),
(11, 'Mattia', 'mattia@email.com', NULL, '$2y$10$Ge3jcENtUhv.ywwCfNcpHuxW6P4y9t9ELg9GFHOnj4/m0k9Ov/u.m', NULL, '2021-12-10 08:53:25', '2021-12-10 08:53:25'),
(12, 'Asia', 'asia@email.com', NULL, '$2y$10$Z/K2qjWL.PFJHVgjq9aQu.Mad8SS8yA3g7zOnFTYfL2BjTiSWPp9a', NULL, '2021-12-10 08:53:52', '2021-12-10 08:53:52'),
(13, 'Federica', 'federica@email.com', NULL, '$2y$10$vaonjj0w5ZkFR2WeiT/FVeSUxatgpTVKk.rM7u/w7NOeWYdcSPYfu', NULL, '2021-12-10 08:54:22', '2021-12-10 08:54:22'),
(14, 'Anna', 'anna@email.com', NULL, '$2y$10$6sVMKeGDdacEYdEU6/bG2umn6g5cBL2D3lSQR2EiDFzPsVwEv4.5O', NULL, '2021-12-10 08:54:46', '2021-12-10 08:54:46'),
(15, 'Alfonso', 'alfonso@email.com', NULL, '$2y$10$cpUW5NzLmRrfML4FAfLMhOd3kcXoWFATqZhYdECqcrcziwzIgnyXu', NULL, '2021-12-10 08:55:08', '2021-12-10 08:55:08');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_categoria_id_foreign` (`categoria_id`),
  ADD KEY `film_director_id_foreign` (`director_id`);

--
-- Indici per le tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `movie_to_watch`
--
ALTER TABLE `movie_to_watch`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indici per le tabelle `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Indici per le tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `director`
--
ALTER TABLE `director`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `film`
--
ALTER TABLE `film`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT per la tabella `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `movie_to_watch`
--
ALTER TABLE `movie_to_watch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`);

--
-- Limiti per la tabella `movie_to_watch`
--
ALTER TABLE `movie_to_watch`
  ADD CONSTRAINT `movie_to_watch_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `movie_to_watch_ibfk_4` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`);

--
-- Limiti per la tabella `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
