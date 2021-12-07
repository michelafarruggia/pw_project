-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 07, 2021 alle 10:47
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
(12, 'Ron', 'Howard', 'ron_howard.jpg', 'Ronald William Howard (nato il 1 marzo 1954) è un regista e attore americano. Howard è diventato famoso per la prima volta come attore bambino, recitando come guest star in diverse serie televisive, incluso un episodio di Ai confini della realtà. Ha guadagnato l\'attenzione nazionale per aver interpretato il giovane Opie Taylor, figlio dello sceriffo Andy Taylor (interpretato da Andy Griffith) nella sitcom The Andy Griffith Show dal 1960 al 1968. Durante questo periodo, è anche apparso nel film musicale The Music Man (1962). ), un successo di critica e commerciale. È stato accreditato come Ronny Howard nelle sue apparizioni cinematografiche e televisive dal 1959 al 1973.\r\n\r\nHoward è stato scelto per uno dei ruoli principali nel film di formazione American Graffiti (1973), che ha ricevuto ampi consensi ed è diventato uno dei film più redditizi della storia. L\'anno successivo, Howard è diventato un nome familiare per aver interpretato Richie Cunningham nella sitcom Happy Days, un ruolo che avrebbe interpretato dal 1974 al 1984. Howard ha continuato ad apparire in film durante questo periodo, come il film western The Shootist (1976) e il film commedia Grand Theft Auto (1977), che ha segnato anche il suo debutto alla regia.\r\n\r\nNel 1984, Howard lasciò Happy Days per concentrarsi sulla regia, la produzione e occasionalmente la scrittura di film di varietà e serie televisive. I suoi film includono il fantasy/fantascienza Cocoon (1985), il fantasy Willow (1988), il thriller Backdraft (1991), lo storico docudramma Apollo 13 (1995), la commedia natalizia How the Grinch Stole Christmas (2000), il dramma biografico A Beautiful Mind (2001), il dramma sportivo biografico Cinderella Man (2005), il thriller Il codice Da Vinci (2006), il dramma storico Frost/Nixon (2008), Solo: A Star Wars Story (2018) e il documentario Pavarotti (2019). Per A Beautiful Mind, Howard ha vinto l\'Oscar per il miglior regista e l\'Oscar per il miglior film. È stato nuovamente nominato per gli stessi premi per Frost/Nixon.\r\n\r\nNel 2003, Howard è stato insignito della National Medal of Arts. È stato inserito nella Television Hall of Fame nel 2013. Howard ha due stelle sulla Hollywood Walk of Fame per i suoi contributi nell\'industria televisiva e cinematografica.\r\n\r\nDescrizione presa dall\'articolo di Wikipedia Ron Howard, con licenza CC-BY-SA, elenco completo dei contributori su Wikipedia.');

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
(14, 'L\'evocazione - The Conjuring', 2013, 'Una famiglia del New England ha degli incontri ravvicinati con i terribili spiriti che infestano la loro casa colonica. Per liberarsi delle presenze maligne, la famiglia è costretta a chiedere l\'aiuto degli investigatori Ed e Lorraine Warren (realmente esistiti), esperti di fenomeni dell\'occulto.', 'The-Conjuring.jpg', 9, 112, 11, 'https://www.youtube.com/embed/qmSkwjZkQ3c', NULL, NULL);

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
(47, 5, 7),
(48, 6, 13),
(49, 6, 11),
(52, 5, 1),
(54, 5, 13);

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
  `nomeUtente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `review`
--

INSERT INTO `review` (`id`, `titolo`, `numStelle`, `testo`, `film_id`, `titolo_film`, `user_id`, `nomeUtente`) VALUES
(19, 'gwgege5', 1, 'h5t4h6h6', 1, '', 6, 'Mattia'),
(20, 'gegrtgtr', 1, 'hryhhy', 11, '', 6, 'Mattia'),
(21, 'htrhrhryyr', 1, 'jytjytjtyjtjut', 13, '', 6, 'Mattia'),
(22, 't5t54t54', 2, NULL, 8, '', 6, 'Mattia'),
(43, 'nnnnnnnnnn', 1, 'nnnnnnnnnnn', 8, 'Hugo Cabret', 5, 'Michela'),
(44, 'nnnnnnnnnnn', 3, 'nnnnnnnnnn', 4, 'Paw Patrol - il Film', 5, 'Michela'),
(45, 'njn', 0, 'kbhbhb', 11, 'Aquaman', 5, 'Michela');

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
('KFvK8ioIOubZiMFlDBriEFZsQXiggK4tTA9TAlhw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjBUQ1NwQ25QbWtrZ09ya2pvTlpnMU1qbGs1ZTBocGp6YjRrNVF3TiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmRleCI7fX0=', 1638826551);

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
(5, 'Michela', 'mmichela2903@gmail.com', NULL, '$2y$10$f54OijX8ixMXp4sglUN5heDiYmOj/0UK3JldFBF4CN2dNg310PB2e', NULL, '2021-11-27 14:15:51', '2021-11-27 14:15:51'),
(6, 'Mattia', 'prova@email.com', NULL, '$2y$10$y94t/qAZ05efWrgs1MBy5unAcIODHZsyBaUDQx9XMeazoG5UYtQ.2', NULL, '2021-11-28 17:09:03', '2021-11-28 17:09:03'),
(7, 'Anna', 'provaproa@email.com', NULL, '$2y$10$2uTQPDfFO156KBpv1I/.0O/6JUp/8nxRB3LAg6hHIGo/r3PlfhTQS', NULL, '2021-12-06 10:38:31', '2021-12-06 10:38:31');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `film`
--
ALTER TABLE `film`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
