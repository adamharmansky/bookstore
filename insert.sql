CREATE TABLE books(
`isbn` VARCHAR(32) PRIMARY KEY,
`title` VARCHAR(255),
`subject_id` INT(10),
`keywords` VARCHAR(255),
`desc` TEXT,
`read_time` INT(10),
`pages` INT(10),
`year_pub` INT(10),
`lang_id` INT(10),
`image` VARCHAR(255),
`content` TEXT
);

CREATE TABLE projects(
`author_id` INT(10),
`isbn` VARCHAR(32)
);

CREATE TABLE authors(
`author_id` INT(10) AUTO_INCREMENT PRIMARY KEY,
`author_name` VARCHAR(128),
);

CREATE TABLE languages(
`lang_id` INT(10) AUTO_INCREMENT PRIMARY KEY,
`lang_name` VARCHAR(128)
);

CREATE TABLE subjects(
`subject_id` INT(10) AUTO_INCREMENT PRIMARY KEY,
`subject_name` VARCHAR(64),
`subject_color0` VARCHAR(32),
`subject_color1` VARCHAR(32),
`subject_color2` VARCHAR(32),
`subject_background` VARCHAR(255),
);

INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("MAT", "#ffffff", "#fffffa", "#fffff0", "mat_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("FYZ", "#ffffff", "#fffffa", "#fffff0", "fyz_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("CHE", "#ffffff", "#fffffa", "#fffff0", "che_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("BIO", "#ffffff", "#fffffa", "#fffff0", "bio_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("GEO", "#ffffff", "#fffffa", "#fffff0", "geo_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("SJL", "#ffffff", "#fffffa", "#fffff0", "sjl_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("DEJ", "#ffffff", "#fffffa", "#fffff0", "dej_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("OBN", "#ffffff", "#fffffa", "#fffff0", "obn_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("EKO", "#ffffff", "#fffffa", "#fffff0", "eko_bgnd.png");
INSERT INTO subjects(`subject_name`, `subject_color0`, `subject_color1`, `subject_color2`, `subject_background`) VALUES ("UKL", "#ffffff", "#fffffa", "#fffff0", "eko_bgnd.png");


INSERT INTO languages(`lang_name`) VALUES ('sk');
INSERT INTO languages(`lang_name`) VALUES ('cz');
INSERT INTO languages(`lang_name`) VALUES ('en');

INSERT INTO authors (`author_name`) VALUES ('Charles Seife');
INSERT INTO authors (`author_name`) VALUES ('Clifford A. Pickover');
INSERT INTO authors (`author_name`) VALUES ('František Emmert');
INSERT INTO authors (`author_name`) VALUES ('Hana Kolářová');
INSERT INTO authors (`author_name`) VALUES ('Ian Stewart');
INSERT INTO authors (`author_name`) VALUES ('Ivan Novotný');
INSERT INTO authors (`author_name`) VALUES ('Jaroslav Rezník');
INSERT INTO authors (`author_name`) VALUES ('Jaroslav Smrž');
INSERT INTO authors (`author_name`) VALUES ('Jozef Hvišč');
INSERT INTO authors (`author_name`) VALUES ('Kevin Walsh');
INSERT INTO authors (`author_name`) VALUES ('Leopold Moravčík');
INSERT INTO authors (`author_name`) VALUES ('Martin Piko');
INSERT INTO authors (`author_name`) VALUES ('Mary Hollingsworthová');
INSERT INTO authors (`author_name`) VALUES ('Michal Hruška');
INSERT INTO authors (`author_name`) VALUES ('Milan Kolcun');
INSERT INTO authors (`author_name`) VALUES ('Milan Vároš');
INSERT INTO authors (`author_name`) VALUES ('Monica Prince');
INSERT INTO authors (`author_name`) VALUES ('Mária Bátorová');
INSERT INTO authors (`author_name`) VALUES ('Norman Friedman');
INSERT INTO authors (`author_name`) VALUES ('Pavol Petrovič');
INSERT INTO authors (`author_name`) VALUES ('Peter Szolcsányi');
INSERT INTO authors (`author_name`) VALUES ('Roman Kubínek');
INSERT INTO authors (`author_name`) VALUES ('Sam Philips');
INSERT INTO authors (`author_name`) VALUES ('Slavomír Michálek');
INSERT INTO authors (`author_name`) VALUES ('Stephen King');
INSERT INTO authors (`author_name`) VALUES ('Stephen Little');
INSERT INTO authors (`author_name`) VALUES ('Tim Marshall');
INSERT INTO authors (`author_name`) VALUES ('Viliam Marčok');
INSERT INTO authors (`author_name`) VALUES ('Vladimír Petrík');
INSERT INTO authors (`author_name`) VALUES ('Winston S. Churchill');
INSERT INTO authors (`author_name`) VALUES ('Zora Mintalová Zubercová');


INSERT INTO projects (`author_id`, `isbn`) VALUES (10, '8008015772');
INSERT INTO projects (`author_id`, `isbn`) VALUES (28, '8008015772');
INSERT INTO projects (`author_id`, `isbn`) VALUES (18, '8008015772');
INSERT INTO projects (`author_id`, `isbn`) VALUES (29, '8008015772');
INSERT INTO projects (`author_id`, `isbn`) VALUES (15, '9788097023515');
INSERT INTO projects (`author_id`, `isbn`) VALUES (7, '9788055604985');
INSERT INTO projects (`author_id`, `isbn`) VALUES (25, '9788055157627');
INSERT INTO projects (`author_id`, `isbn`) VALUES (17, '9788055608372');
INSERT INTO projects (`author_id`, `isbn`) VALUES (10, '9788055608372');
INSERT INTO projects (`author_id`, `isbn`) VALUES (8, '8071689092');
INSERT INTO projects (`author_id`, `isbn`) VALUES (6, '9788073731694');
INSERT INTO projects (`author_id`, `isbn`) VALUES (14, '9788073731694');
INSERT INTO projects (`author_id`, `isbn`) VALUES (21, '9788089879014');
INSERT INTO projects (`author_id`, `isbn`) VALUES (4, '9788024420837');
INSERT INTO projects (`author_id`, `isbn`) VALUES (22, '9788024420837');
INSERT INTO projects (`author_id`, `isbn`) VALUES (20, '9788081430091');
INSERT INTO projects (`author_id`, `isbn`) VALUES (20, '9788081430107');
INSERT INTO projects (`author_id`, `isbn`) VALUES (1, '8073630486');
INSERT INTO projects (`author_id`, `isbn`) VALUES (5, '9788073635275');
INSERT INTO projects (`author_id`, `isbn`) VALUES (2, '9788073633684');
INSERT INTO projects (`author_id`, `isbn`) VALUES (11, '9788080465889');
INSERT INTO projects (`author_id`, `isbn`) VALUES (19, '8025106276');
INSERT INTO projects (`author_id`, `isbn`) VALUES (3, '9788025122839');
INSERT INTO projects (`author_id`, `isbn`) VALUES (31, '9788055627953');
INSERT INTO projects (`author_id`, `isbn`) VALUES (3, '9788026400608');
INSERT INTO projects (`author_id`, `isbn`) VALUES (24, '9788081596803');
INSERT INTO projects (`author_id`, `isbn`) VALUES (30, '8089111268');
INSERT INTO projects (`author_id`, `isbn`) VALUES (27, '9788081595134');
INSERT INTO projects (`author_id`, `isbn`) VALUES (12, '9788097117214');
INSERT INTO projects (`author_id`, `isbn`) VALUES (13, '801000796X');
INSERT INTO projects (`author_id`, `isbn`) VALUES (16, '9788081280184');
INSERT INTO projects (`author_id`, `isbn`) VALUES (26, '9788055604626');
INSERT INTO projects (`author_id`, `isbn`) VALUES (23, '9788055608594');

INSERT INTO books(`isbn`, `subject_id`, `read_time`, `pages`, `year_pub`, `lang_id`, `image`, `title`, `keywords`, `desc`, `content`)
VALUES ('8008015772', 6, 510, 258, 1991, 1, '', 'Biele miesta v slovenskej literatúre', 'literatúra, medzivojnová literatúra, povojnová literatúra, spisovatelia, katolícka moderna, kultúra, literárne diela', 'Spoznajte tvorbu básnikov, prozaikov a kritikov, ktorí boli pre svoj nekompromisný postoj voči komunistickému systému z náśho života a literatúry vyradení.', 'Úvod; I.; II. Literárne portréty; III. Z literárnych diel');
VALUES ('9788097023515', 6, 720, 358, 2010, 1, '', 'Košická čítanka - Lieterárne potulky mestom Košice (3)', 'autori, udalosti Košíc, Košice, košické dejiny, literatúra', 'Obľúbení i menej známi autori (vyše 90) literárne zvečnili slávne udalosti mesta i jeho všedné chvíle. 10 národných literatúr, ktoré sa dotkli Košíc (americká, francúzska, turecká, rakúska, ruská, nemecká, židovská, maďarská, česká a slovenská).', '');
VALUES ('9788055604985', 6, 1110, 640, 2012, 1, '', 'Túry do literatúry - Po literárnych stopách Slovenska', 'Slovensko, literatúra, spisovatelia', 'Kniha o literárnych potulkách po Slovensku, pri ktorých sa čitateľ zoznámi s našimi najvýznamnejšími literátmi od historických čias až po súčasnosť.', 'Z Bratislavy do Trnavy; Z Trnavy až na Záhorie; Popod Bradlo naspäť k Váhu; Popri Váhu do Nového Mesta; Popod Javorinu; V meste Matúša Čáka a jeho okolí; Hore Považím s malými odbočkami; Zo Žiliny do Prievidze; Okolo brehov priezranej rieky a jej prítokov; V meste slova a literatúry; Pomedzi ďalšie hriadky Turčianskej záhradky; Z Kraľovian až na ""Oravské more""; Malebná cesta hore Váhom; Popod Tatry na Spiš a do Šariša; Popod Duklu do Zemplína; Kľukatá cesta po Gemeri; Dolu Hronom; Cez Detvu do Novohradu; Z Novohradu krížom cez Hont; Popod Sitno až do Kremnice; Dolu Nitrou až do Nitry; Cez Tekov až do Komárna; Z Nitry do Bratislavy; V hlavnom meste Slovenska; Slovenskí spisovatelia krajania, narodení, žijúci a tvoriaci v materských krajinách; Menný register; Miestny register; Výber z použitej encyklopedickej a slovníkovej literatúry');
VALUES ('9788055157627', 6, 540, 288, 2020, 1, '', 'O písaní', 'literatúra, písanie, začínajúci autor, tipy, rady, životopis', 'Napriek svojmu názvu je táto kniha najmä o životnom príbehu, ako sa z chlapca, ktorý vyrastal bez otca, stal milionár. ', '');
VALUES ('9788055608372', 4, 448, 224, 2006, 1, '', 'Príroda do vrecka - Horniny a minerály', 'minerály, horniny, identifikácia minerálov, identifikácia hornín, geológia', 'V tomto petrografickom sprievodcovi nájdete informácie o širokom spektre hornín a minerálov z celého sveta. ', 'Ako používať knihu; Čo sú mierály?; Čo sú horniny?; Identifikácia hornín; Určovanie minerálov; Sedimentárne horniny; Vyvreté horniny; Metamorfované horniny; Rudné minerály; Horninotvorné minerály; Slovníček; Register; Poďakovanie');
VALUES ('8071689092', 4, 416, 208, 2004, 2, '', 'Biologie živočichů pro gymnázia', 'biológia, živočíchy, prvoky', 'V učebnici nájdete prehľad živočíchov a heterotrofných jednobunkovcov. ', '1 Úvod; 2 Říše prvoci; 3 Říše živočichové; 4 Živočichové s druhotnou tělní dutinou; 5 Kmen strunatci');
VALUES ('9788073731694', 4, 480, 240, 2015, 2, '', 'Biologie člověka pro gymnázia', 'biológia, človek, anatómia, fyziológia', 'V učebnici nájdete učivo o ľudskom tele, ktoré je predstavené ako jeden funkčný a fungujúci celok. ', '1 Bilogie člověka-úvod; 2 Soustavy lidského tela-anatomie a fyziologie; 3 Vývoj vajíčka, těhotenství, antikoncepce; 4 Období lidského života; 5 Zdraví člověka; Praktická část; Příloha');
VALUES ('9788089879014', 3, 448, 224, 2016, 1, '', 'Súkromný život molekúl', 'chémia, vôňa, chuť, rastliny, molekuly', 'Kniha jednoduchou, pútavou a často aj vtipnou formou vysvetľuje základné princípy živého aj neživého sveta – od palív a drahokamov cez lieky či doping a končiac trebárs oplodnením alebo ohňostrojom.', 'Molekulárna parfuméria-svet bizarných vôní; Molekulárna gastronómia-vášnivé chute; Molekulárna botanika-čo rastliny vedia; Molekulárna zoológia-ako to tie zvery robia?; Molekulárna anatómia-biochémia à la homo; Molekulárna toxikológia-jed či liek?; Molekulárne materiály-inšpiratívna chémia');
VALUES ('9788024420837', 2, 444, 222, 2017, 2, '', 'Fyzika stručně a jasně', 'fyzika, príklady, testové otázky, výpočty, príprava na prijímacie skúšky', 'Prehľad fyziky v príkladoch a testových otázkach.', 'Význam fyziky; Fyzikální veličiny a jejích jednotky; Mechanika; Gravitační pole; Mechanické kmitání a vlnění; Molekulová fyzika a termodynamika; Elektřina a magnetismus; Optika; Fyzika atomového jádra; Astrofyzika; Nositelé Nobelovy Ceny; Výsledky testových otázek; Literatura');
VALUES ('9788081430091', 2, 520, 260, 2012, 1, '', 'Fyzika I.', 'fyzika, mechanika, termodynamika, elektromagnetizmus, počítačová fyzika', 'Vybrané kapitoly zo základov klasickej a počítačovej fyziky.', 'Predslov; I Klasická fyzika; II Fyzika interdisciplinárnych oblastí; Register');
VALUES ('9788081430107', 2, 900, 450, 2012, 1, '', 'Fyzika II.', 'fyzika, moderná fyzika, relativistická fyzika, kvantová fyzika, atóm, kvantové počítače ', 'Vybrané kapitoly zo základov modernej fyziky a kvantových počítačov', 'Predslov; I Moderná fyzika; II Fyzika interdisciplinárnych oblastí; Register');
VALUES ('8073630486', 1, 526, 263, 2005, 2, '', 'Nula', 'matematika, nula, história, absolútna nula, paradoxy', 'Tato kniha je historií nuly. Zrodila se ve starověku a posléze se jí podařilo vybojovat si místo na slunci na Východě, s prosazením na Západě to však měla mnohem obtížnější. Možná proto se naší civilizaci dodnes mstí a neustále působí nové a nové potíže od havárií řídících systémů až po fundamentální problémy v moderní fyzice.', 'Poděkování; O. Nula a prázdnota; 1. Nic se neděje; 2. Nic nepochází z ničeho; 3. Zaručený postup; 4. Nekonečný Bůh Ničeho; 5. Nekonečné nuly nevěřící matematikové; 6. Dvojče nekonečna; 7. Absolutní nuly; 8. Čas nula v epicentru; 9. Konečné vítězství nuly');
VALUES ('9788073635275', 1, 688, 344, 2013, 2, '', 'Truhlice matematických pokladů profesora Stewarta', 'matematika, kuriozity, čísla, úsečky, integrály', 'Kuriozity, hádanky, vážné úlohy, příběhy z historie vědy, matematické vtipy i historky o slavných matematicích jsou zde poskládány s lehkostí a šarmem do vytříbené mozaiky, kterou lze číst po řadě i na přeskáčku, ale která vás nudit rozhodně nebude.', '');
VALUES ('9788073633684', 1, 1088, 544, 2012, 2, '', 'Matematická kniha (Od Pythagora po 57. dimenzi: 250 milníků v dějinách matematiky)', 'matematika, história, dejiny, záhady', 'Autor nás ve 250 stručných kapitolách provádí důležitými milníky historie matematiky a otevírá před námi svět plný nesmírných záhad a krásy.', '');
VALUES ('9788080465889', 7, 496, 248, 2013, 1, '', 'Bastardi v politike', 'dejiny, politika, história, diktátori, tyrania, životopisy', 'Príbehy tých, ktorí zneužili moc', 'Úvod; Anastasio Somoza a jeho dynastia; Odvrhnutý spojenec Pahlaví; Pol Pot a jeho vražedné polia; Idi Amin Dada-slon so slepačím mozgom; Bokassa-bohatý cisár chudobného ľudu; Ferdinand Marcos a ružencová revolúcia; Opľutý Augusto Pinochet; Koniec Karpatského génia; Manuel Noriega-spojenec i vyvrheľ; Prehraté vojny Saddáma Husajna; Usáma bin Ládin a semeno terorizmu; Osamelý bežec Muammar Kaddáfí; Použitá literatúra ');
VALUES ('8025106276', 7, 54, 64, 2005, 2, '', 'Studená válka', 'dejiny, politika, história, prezidenti, Rusko, USA, vojna, 20. storočie', 'Koniec druhej svetovej vojny vyústil do ďalšieho, desiatky rokov trvajúceho boja o svetovú nadvládu medzi západným a východným blokom, ktorý vošiel do dejín pod názvom studená vojna.', 'Předmluva; Zmařený mír; Železná opona; Trumanova doktrína...; Blokáda Berlína; Čína a zánik koloniálního systému; Mccarthismus; Korejská válka; Jaderná bomba; Evropa v pohybu: Povstání v NDR a Polsku; Evropa v pohybu: Povstání v Maďarsku; Trhliny v oponě; Východní tajné služby; Západní tajné služby; Sputnik a raketová éra; Kuba: Zátoka sviní; Berlinská zeď; Kubánská raketová krize; Vietnamská válka; Pražské jaro; Politika uvolňování: vrchol sovětské moci; Válka v Afghanistánu; Disidenti; Vývoj v Polsku; Reaganova ofenziva; Život s jadernou bombou; Gorbačov: muž, se kterým bylo třeba jednat; Strhněte zeď! Revoluce ve východní Evropě; Zánik Sovětského svazu; Překlady; Rejstřík; Poděkování');
VALUES ('9788025122839', 7, 54, 64, 2009, 2, '', '1918: Vznik ČSR', 'dejiny, politika, história, prezidenti, Československo, Beneš, Masaryk, štát, revolúcia', 'Poznajte cestu, ktorá viedla ku vzniku samostatného Československa', 'Předmluva; Česi v Rakousku-Uhersku; Státoprávní otázka; Pozitivní politika; Velká válka; Mým národům!; Rusofilství; Tomáš Gariggue Masaryk; Domácí dvojí hra; Masarykova zahraniční akce; Tajný výbor maffie; Edvard Beneš; Vznik Československých legií; Bitva u Zborova; Radikalizace domácí politiky; Slovensko před rokem 1918; Milan Rastislav Štefánik; Československé legie v Rusku; Rok 1918; Národní revoluce; 28. Říjen 1918; Mužové 28. Října; Uspořádání poměrů; Boj o pohraničí; Boj o Slovensko; Odrakouštění; Vlastní měna; Vlajka; Společná hymna; Pařížské smlouvy; Ukotvení nového státu');
VALUES ('9788055627953', 7, 656, 328, 2018, 1, '', 'Ako sme kedysi žili', 'dejiny, história, umenie, kultúra, zvyky, tradície, Slovensko, folklór', 'Obrazy každodenného života našich predkov', 'Úvod; Z južných nížin do dedín, mestečiek a rodín; Zo severných hôr do dolín, dedín a rodín; Záver; Slovníček; Použitá a odporúčaná literatúra; Zoznam obrazového materiálu; O autorke; Poďakovania');
VALUES ('9788026400608', 7, 54, 64, 2012, 2, '', 'Václav Havel (1936 - 2011)', 'dejiny, história, prezidenti, Václav Havel, Československo, životopisy, politika', 'Jeden z najvýznamnejších českých súčasníkov, dramatik, disident, prezident. Spoznajte životný osud osobnosti, ktorá sa dokázala tak výrazne zapísať do našej novodobej histórie. ', 'Rodinný původ; Dětství a mladá léta; Bratr Ivan; Dramatikem v Divadle Na Zábradlí; Olga Havlová; Veřejná vystoupení koncem 60. let; Zakázaný autor; Na Hrádečku; Zakladatel Charty 77; VONS; Ve vězení; Disidentem v 80. letech; Za sametové revoluce; Havel na Hrad! Poslední Čechoslovák; Lidé v okolí Václava Havla; První prezident ČR; Dagmar Havlová; Václav Havel ve fotografiích; Vztah s Václavem Klausem; Odpůrci a kritici; Zahraničněpolitické úspěchy; Slavné výroky Václava Havla; Divadelní hry; Odcházení; Prosinec 2011');
VALUES ('9788081596803', 7, 1200, 600, 2018, 1, '', 'História zadnými dverami ', 'dejiny, história, králi, politici, vojny, Uhorsko', 'Nezvyčajné príbehy zo slovenských a svetových dejín. V príbehoch siahajúcich od stredoveku po najnovšie dejiny 20. storočia sa dozvie zaujímavosti, ktoré sa do učebníc dejepisu nedostali. ', 'Časť I. Menej vážna tvár zákonníkov a kroník; Časť II. Cherchez la femme; Časť III. Nič ľudské im nebolo cudzie; Časť IV. Keď zbrane rinčia; Časť V. Veľká a malá politika; Časť VI. Irónia a satira v službách politiky; Časť VII. Péle-méle z domova a zo sveta; Časť VIII. Trapasy, ktoré pohli dejinami; Časť IX. Ľudské (a neľudské) tváre politikov');
VALUES ('8089111268', 7, 534, 267, 2007, 1, '', 'Veľké demokracie-Dejiny po anglicky hovoriacich národov', 'dejiny, história, anglické národy, demokracia, politika', 'Dejiny anglicky hovoriacich národov. Štvrtý a záverečný zväzok výnimočnej historiografickej práce nositeľa Nobelovej ceny za literatúru sira Winstona S. Churchilla.', 'Predslov; 10. kniha-Obnova a reforma; 11. kniha-Veľká republika; 12. kniha: Viktoriánska éra; Register');
VALUES ('9788081595134', 5, 496, 248, 2017, 1, '', 'V zajatí geografie', 'dejiny, geografia, politika, geopolitika, geokonfliktológia, štát, vojny, revolúcie', 'Desať máp, ktoré vám povedia všetko, čo chcete vedieť o globálnej politike. ', 'O autorovi; Predslov sir John Scarlett; Úvod; 1 Rusko; 2 Čína; 3 USA; 4 Západná Európa; 5 Afrika; 6 Blízky východ; 7 India a Pakistan; 8 Kórea a Japonsko; 9 Latinská Amerika; 10 Arktída; Záver; Poďakovanie; Bibliografia');
VALUES ('9788097117214', 9, 504, 252, 2013, 1, '', '59 inšpiratívnych podnikateľských príbehov ', 'ekonómia, podnikanie, životopisy, podnikatelia, firmy', 'Ako vybudovať úspešnú firmu na Slovensku', '');
VALUES ('801000796X', 10, 1022, 511, 2006, 1, '', 'Umenie v dejinách sveta', 'umenie, dejiny, história, maľby, sochy, portréty', '30 000 rokov dejín umenia všetkých období, krajín, národov a kultúr', '');
VALUES ('9788081280184', 10, 1084, 332, 2011, 1, '', 'Osudy umeleckých diel a ich tvorcov', 'umenie, dejiny, história, maľby, sochy, portréty, Slovensko', 'O nevšedných osudoch umelcov a umeleckých diel, ktoré mali alebo majú súvis so Slovenskom – od starších období až po osudy diel slovenskej výtvarnej moderny, ktoré končievali v rukách komunistických pohlavárov.', '');
VALUES ('9788055604626', 10, 320, 160, 2012, 1, '', '...izmy, ako rozumieť umeniu', 'umenie, dejiny, história, maľby, sochy, portréty', 'Publikácia ... izmy, ako rozumieť umeniu je užitočným a praktickým sprievodcom bohatou škálou umeleckých smerov, štýlov či hnutí.', '');
VALUES ('9788055608594', 10, 320, 160, 2013, 1, '', '...izmy, ako rozumieť modernému a súčasnému umeniu ', 'umenie, dejiny, história, maľby, sochy, portréty, moderné umenie', 'Publikácia ... izmy, ako rozumieť modernému a súčasnému umeniu nemôže byť vyčerpávajúcim súhrnom, ale predstavuje veľmi dobrého sprievodcu izmami (napr. fauvizmus, expresionizmus, rayonizmus, precizionizmus, fluxus, multikultiralizmus) a ich hlavnými predstaviteľmi. ', '');
