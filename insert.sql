CREATE TABLE books(
`author` VARCHAR(255),
`title` VARCHAR(255),
`subject` VARCHAR(100),
`keywords` VARCHAR(100),
`desc` TEXT,
`read_time` INT(10),
`pages` INT(10),
`year_pub` INT(10),
`lang` VARCHAR(8),
`ISBN` INT(11),
`image` VARCHAR(255),
`content` TEXT
;

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Jozef Hvišč, Viliam Marčok, Mária Bátorová, Vladimír Petrík', 'Biele miesta v slovenskej literatúre', 'SJL', 'literatúra, medzivojnová literatúra, povojnová literatúra, spisovatelia, katolícka moderna, kultúra, literárne diela', 'Spoznajte tvorbu básnikov, prozaikov a kritikov, ktorí boli pre svoj nekompromisný postoj voči komunistickému systému z náśho života a literatúry vyradení.', '510', '258', '1991', 'sk', '8008015772', 'Biele miesta v slovenskej literatúre.png', 'Úvod; I.; II. Literárne portréty; III. Z literárnych diel');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Milan Kolcun', 'Košická čítanka - Lieterárne potulky mestom Košice (3)', 'SJL', 'autori, udalosti Košíc, Košice, košické dejiny, literatúra', 'Obľúbení i menej známi autori (vyše 90) literárne zvečnili slávne udalosti mesta i jeho všedné chvíle. 10 národných literatúr, ktoré sa dotkli Košíc (americká, francúzska, turecká, rakúska, ruská, nemecká, židovská, maďarská, česká a slovenská).', '720', '358', '2010', 'SK', '9.7881E+12', 'Potulky mestom Košice.png', '');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Jaroslav Rezník', 'Túry do literatúry - Po literárnych stopách Slovenska', 'SJL', 'Slovensko, literatúra, spisovatelia', 'Kniha o literárnych potulkách po Slovensku, pri ktorých sa čitateľ zoznámi s našimi najvýznamnejšími literátmi od historických čias až po súčasnosť.', '1110', '640', '2012', 'sk', '9.7886E+12', 'Osudy umeleckých diel a ich tvorcov.png', 'Z Bratislavy do Trnavy; Z Trnavy až na Záhorie; Popod Bradlo naspäť k Váhu; Popri Váhu do Nového Mesta; Popod Javorinu; V meste Matúša Čáka a jeho okolí; Hore Považím s malými odbočkami; Zo Žiliny do Prievidze; Okolo brehov priezranej rieky a jej prítokov; V meste slova a literatúry; Pomedzi ďalšie hriadky Turčianskej záhradky; Z Kraľovian až na ""Oravské more""; Malebná cesta hore Váhom; Popod Tatry na Spiš a do Šariša; Popod Duklu do Zemplína; Kľukatá cesta po Gemeri; Dolu Hronom; Cez Detvu do Novohradu; Z Novohradu krížom cez Hont; Popod Sitno až do Kremnice; Dolu Nitrou až do Nitry; Cez Tekov až do Komárna; Z Nitry do Bratislavy; V hlavnom meste Slovenska; Slovenskí spisovatelia krajania, narodení, žijúci a tvoriaci v materských krajinách; Menný register; Miestny register; Výber z použitej encyklopedickej a slovníkovej literatúry');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Stephan King', 'O písaní', 'SJL', 'literatúra, písanie, začínajúci autor, tipy, rady, životopis', 'Napriek svojmu názvu je táto kniha najmä o životnom príbehu, ako sa z chlapca, ktorý vyrastal bez otca, stal milionár. ', '540', '288', '2020', 'SK', '9.7886E+12', 'Stephen King.png', '');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Monica Prince, Kevin Walsh', 'Príroda do vrecka - Horniny a minerály', 'BIO', 'minerály, horniny, identifikácia minerálov, identifikácia hornín, geológia', 'V tomto petrografickom sprievodcovi nájdete informácie o širokom spektre hornín a minerálov z celého sveta. ', '448', '224', '2006', 'SK', '9.7886E+12', 'Horniny a minerály.png', 'Ako používať knihu; Čo sú mierály?; Čo sú horniny?; Identifikácia hornín; Určovanie minerálov; Sedimentárne horniny; Vyvreté horniny; Metamorfované horniny; Rudné minerály; Horninotvorné minerály; Slovníček; Register; Poďakovanie');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Jaroslav Smrž', 'Biologie živočichů pro gymnázia', 'BIO', 'biológia, živočíchy, prvoky', 'V učebnici nájdete prehľad živočíchov a heterotrofných jednobunkovcov. ', '416', '208', '2004', 'CZ', '8071689092', 'Biologie živočichu.png', '1 Úvod; 2 Říše prvoci; 3 Říše živočichové; 4 Živočichové s druhotnou tělní dutinou; 5 Kmen strunatci');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Ivan Novotný, Michal Hruška', 'Biologie člověka pro gymnázia', 'BIO', 'biológia, človek, anatómia, fyziológia', 'V učebnici nájdete učivo o ľudskom tele, ktoré je predstavené ako jeden funkčný a fungujúci celok. ', '480', '240', '2015', 'CZ', '9.7887E+12', 'Biologie človeka.png', '1 Bilogie člověka-úvod; 2 Soustavy lidského tela-anatomie a fyziologie; 3 Vývoj vajíčka, těhotenství, antikoncepce; 4 Období lidského života; 5 Zdraví člověka; Praktická část; Příloha');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Peter Szolcsányi', 'Súkromný život molekúl', 'CHE', 'chémia, vôňa, chuť, rastliny, molekuly', 'Kniha jednoduchou, pútavou a často aj vtipnou formou vysvetľuje základné princípy živého aj neživého sveta – od palív a drahokamov cez lieky či doping a končiac trebárs oplodnením alebo ohňostrojom.', '448', '224', '2016', 'SK', '9.7889E+12', 'Súkromný život molekúl.png', 'Molekulárna parfuméria-svet bizarných vôní; Molekulárna gastronómia-vášnivé chute; Molekulárna botanika-čo rastliny vedia; Molekulárna zoológia-ako to tie zvery robia?; Molekulárna anatómia-biochémia à la homo; Molekulárna toxikológia-jed či liek?; Molekulárne materiály-inšpiratívna chémia');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Hana Kolářová, Roman Kubínek ', 'Fyzika stručně a jasně', 'FYZ', 'fyzika, príklady, testové otázky, výpočty, príprava na prijímacie skúšky', 'Prehľad fyziky v príkladoch a testových otázkach.', '444', '222', '2017', 'CZ', '9.7882E+12', 'Fyzika.png', 'Význam fyziky; Fyzikální veličiny a jejích jednotky; Mechanika; Gravitační pole; Mechanické kmitání a vlnění; Molekulová fyzika a termodynamika; Elektřina a magnetismus; Optika; Fyzika atomového jádra; Astrofyzika; Nositelé Nobelovy Ceny; Výsledky testových otázek; Literatura');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Pavol Petrovič', 'Fyzika I.', 'FYZ', 'fyzika, mechanika, termodynamika, elektromagnetizmus, počítačová fyzika', 'Vybrané kapitoly zo základov klasickej a počítačovej fyziky.', '520', '260', '2012', 'SK', '9.7888E+12', 'Fyzika I..png', 'Predslov; I Klasická fyzika; II Fyzika interdisciplinárnych oblastí; Register');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Pavol Petrovič', 'Fyzika II.', 'FYZ', 'fyzika, moderná fyzika, relativistická fyzika, kvantová fyzika, atóm, kvantové počítače ', 'Vybrané kapitoly zo základov modernej fyziky a kvantových počítačov', '900', '450', '2012', 'SK', '9.7888E+12', 'Fyzika II..png ', 'Predslov; I Moderná fyzika; II Fyzika interdisciplinárnych oblastí; Register');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Charles Seife', 'Nula', 'MAT', 'matematika, nula, história, absolútna nula, paradoxy', 'Tato kniha je historií nuly. Zrodila se ve starověku a posléze se jí podařilo vybojovat si místo na slunci na Východě, s prosazením na Západě to však měla mnohem obtížnější. Možná proto se naší civilizaci dodnes mstí a neustále působí nové a nové potíže od havárií řídících systémů až po fundamentální problémy v moderní fyzice.', '526', '263', '2005', 'CZ', '8073630486', 'Nula.png', 'Poděkování; O. Nula a prázdnota; 1. Nic se neděje; 2. Nic nepochází z ničeho; 3. Zaručený postup; 4. Nekonečný Bůh Ničeho; 5. Nekonečné nuly nevěřící matematikové; 6. Dvojče nekonečna; 7. Absolutní nuly; 8. Čas nula v epicentru; 9. Konečné vítězství nuly');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Ian Stewart', 'Truhlice matematických pokladů profesora Stewarta', 'MAT', 'matematika, kuriozity, čísla, úsečky, integrály', 'Kuriozity, hádanky, vážné úlohy, příběhy z historie vědy, matematické vtipy i historky o slavných matematicích jsou zde poskládány s lehkostí a šarmem do vytříbené mozaiky, kterou lze číst po řadě i na přeskáčku, ale která vás nudit rozhodně nebude.', '688', '344', '2013', 'CZ', '9.7887E+12', 'Truhlice matematických pokladu.png', '');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Clifford A. Pickover', 'Matematická kniha (Od Pythagora po 57. dimenzi: 250 milníků v dějinách matematiky)', 'MAT', 'matematika, história, dejiny, záhady', 'Autor nás ve 250 stručných kapitolách provádí důležitými milníky historie matematiky a otevírá před námi svět plný nesmírných záhad a krásy.', '1088', '544', '2012', 'CZ', '9.7887E+12', 'Matematická kniha.png', '');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Leopold Moravčík ', 'Bastardi v politike', 'DEJ', 'dejiny, politika, história, diktátori, tyrania, životopisy', 'Príbehy tých, ktorí zneužili moc', '496', '248', '2013', 'SK', '9.7888E+12', 'Bastardi v politike.png', 'Úvod; Anastasio Somoza a jeho dynastia; Odvrhnutý spojenec Pahlaví; Pol Pot a jeho vražedné polia; Idi Amin Dada-slon so slepačím mozgom; Bokassa-bohatý cisár chudobného ľudu; Ferdinand Marcos a ružencová revolúcia; Opľutý Augusto Pinochet; Koniec Karpatského génia; Manuel Noriega-spojenec i vyvrheľ; Prehraté vojny Saddáma Husajna; Usáma bin Ládin a semeno terorizmu; Osamelý bežec Muammar Kaddáfí; Použitá literatúra ');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Norman Friedman', 'Studená válka', 'DEJ', 'dejiny, politika, história, prezidenti, Rusko, USA, vojna, 20. storočie', 'Koniec druhej svetovej vojny vyústil do ďalšieho, desiatky rokov trvajúceho boja o svetovú nadvládu medzi západným a východným blokom, ktorý vošiel do dejín pod názvom studená vojna.', '54', '64', '2005', 'CZ', '8025106276', 'Studená válka.png', 'Předmluva; Zmařený mír; Železná opona; Trumanova doktrína...; Blokáda Berlína; Čína a zánik koloniálního systému; Mccarthismus; Korejská válka; Jaderná bomba; Evropa v pohybu: Povstání v NDR a Polsku; Evropa v pohybu: Povstání v Maďarsku; Trhliny v oponě; Východní tajné služby; Západní tajné služby; Sputnik a raketová éra; Kuba: Zátoka sviní; Berlinská zeď; Kubánská raketová krize; Vietnamská válka; Pražské jaro; Politika uvolňování: vrchol sovětské moci; Válka v Afghanistánu; Disidenti; Vývoj v Polsku; Reaganova ofenziva; Život s jadernou bombou; Gorbačov: muž, se kterým bylo třeba jednat; Strhněte zeď! Revoluce ve východní Evropě; Zánik Sovětského svazu; Překlady; Rejstřík; Poděkování');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('František Emmert', '1918: Vznik ČSR', 'DEJ ', 'dejiny, politika, história, prezidenti, Československo, Beneš, Masaryk, štát, revolúcia', 'Poznajte cestu, ktorá viedla ku vzniku samostatného Československa', '54', '64', '2009', 'CZ', '9.7883E+12', 'csr.jpg', 'Předmluva; Česi v Rakousku-Uhersku; Státoprávní otázka; Pozitivní politika; Velká válka; Mým národům!; Rusofilství; Tomáš Gariggue Masaryk; Domácí dvojí hra; Masarykova zahraniční akce; Tajný výbor maffie; Edvard Beneš; Vznik Československých legií; Bitva u Zborova; Radikalizace domácí politiky; Slovensko před rokem 1918; Milan Rastislav Štefánik; Československé legie v Rusku; Rok 1918; Národní revoluce; 28. Říjen 1918; Mužové 28. Října; Uspořádání poměrů; Boj o pohraničí; Boj o Slovensko; Odrakouštění; Vlastní měna; Vlajka; Společná hymna; Pařížské smlouvy; Ukotvení nového státu');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Zora Mintalová Zubercová', 'Ako sme kedysi žili', 'DEJ ', 'dejiny, história, umenie, kultúra, zvyky, tradície, Slovensko, folklór', 'Obrazy každodenného života našich predkov', '656', '328', '2018', 'SK', '9.7886E+12', 'ako sme kedysi zili.jpg', 'Úvod; Z južných nížin do dedín, mestečiek a rodín; Zo severných hôr do dolín, dedín a rodín; Záver; Slovníček; Použitá a odporúčaná literatúra; Zoznam obrazového materiálu; O autorke; Poďakovania');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('František Emmert', 'Václav Havel (1936 - 2011)', 'DEJ ', 'dejiny, história, prezidenti, Václav Havel, Československo, životopisy, politika', 'Jeden z najvýznamnejších českých súčasníkov, dramatik, disident, prezident. Spoznajte životný osud osobnosti, ktorá sa dokázala tak výrazne zapísať do našej novodobej histórie. ', '54', '64', '2012', 'CZ', '9.7883E+12', 'havel.jpg', 'Rodinný původ; Dětství a mladá léta; Bratr Ivan; Dramatikem v Divadle Na Zábradlí; Olga Havlová; Veřejná vystoupení koncem 60. let; Zakázaný autor; Na Hrádečku; Zakladatel Charty 77; VONS; Ve vězení; Disidentem v 80. letech; Za sametové revoluce; Havel na Hrad! Poslední Čechoslovák; Lidé v okolí Václava Havla; První prezident ČR; Dagmar Havlová; Václav Havel ve fotografiích; Vztah s Václavem Klausem; Odpůrci a kritici; Zahraničněpolitické úspěchy; Slavné výroky Václava Havla; Divadelní hry; Odcházení; Prosinec 2011');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Slavomír Michálek', 'História zadnými dverami ', 'DEJ ', 'dejiny, história, králi, politici, vojny, Uhorsko', 'Nezvyčajné príbehy zo slovenských a svetových dejín. V príbehoch siahajúcich od stredoveku po najnovšie dejiny 20. storočia sa dozvie zaujímavosti, ktoré sa do učebníc dejepisu nedostali. ', '1200', '600', '2018', 'SK', '9.7888E+12', 'História zadnými dverami.png', 'Časť I. Menej vážna tvár zákonníkov a kroník; Časť II. Cherchez la femme; Časť III. Nič ľudské im nebolo cudzie; Časť IV. Keď zbrane rinčia; Časť V. Veľká a malá politika; Časť VI. Irónia a satira v službách politiky; Časť VII. Péle-méle z domova a zo sveta; Časť VIII. Trapasy, ktoré pohli dejinami; Časť IX. Ľudské (a neľudské) tváre politikov');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Winston S. Churchill ', 'Veľké demokracie-Dejiny po anglicky hovoriacich národov', 'DEJ ', 'dejiny, história, anglické národy, demokracia, politika', 'Dejiny anglicky hovoriacich národov. Štvrtý a záverečný zväzok výnimočnej historiografickej práce nositeľa Nobelovej ceny za literatúru sira Winstona S. Churchilla.', '534', '267', '2007', 'SK', '8089111268', 'Veľké demokracie.png', 'Predslov; 10. kniha-Obnova a reforma; 11. kniha-Veľká republika; 12. kniha: Viktoriánska éra; Register');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Tim Marshall', 'V zajatí geografie', 'GEO', 'dejiny, geografia, politika, geopolitika, geokonfliktológia, štát, vojny, revolúcie', 'Desať máp, ktoré vám povedia všetko, čo chcete vedieť o globálnej politike. ', '496', '248', '2017', 'SK', '9.7888E+12', 'V zajatí.png', 'O autorovi; Predslov sir John Scarlett; Úvod; 1 Rusko; 2 Čína; 3 USA; 4 Západná Európa; 5 Afrika; 6 Blízky východ; 7 India a Pakistan; 8 Kórea a Japonsko; 9 Latinská Amerika; 10 Arktída; Záver; Poďakovanie; Bibliografia');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Martin Piko ', '59 inšpiratívnych podnikateľských príbehov ', 'EKO', 'ekonómia, podnikanie, životopisy, podnikatelia, firmy', 'Ako vybudovať úspešnú firmu na Slovensku', '504', '252', '2013', 'SK', '9.7881E+12', '59.png', '');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Mary Hollingsworthová', 'Umenie v dejinách sveta', 'UKL', 'umenie, dejiny, história, maľby, sochy, portréty', '30 000 rokov dejín umenia všetkých období, krajín, národov a kultúr', '1022', '511', '2006', 'SK', '801000796X', 'Umenie v dejinách sveta.png', '');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Milan Vároš ', 'Osudy umeleckých diel a ich tvorcov', 'UKL', 'umenie, dejiny, história, maľby, sochy, portréty, Slovensko', 'O nevšedných osudoch umelcov a umeleckých diel, ktoré mali alebo majú súvis so Slovenskom – od starších období až po osudy diel slovenskej výtvarnej moderny, ktoré končievali v rukách komunistických pohlavárov.', '1084', '332', '2011', 'SK', '9.7888E+12', 'Osudy umeleckých diel a ich tvorcov.png', '');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Stephen Little', '...izmy, ako rozumieť umeniu', 'UKL', 'umenie, dejiny, história, maľby, sochy, portréty', 'Publikácia ... izmy, ako rozumieť umeniu je užitočným a praktickým sprievodcom bohatou škálou umeleckých smerov, štýlov či hnutí.', '320', '160', '2012', 'SK', '9.7886E+12', '...izmy, ako rozumieť.png', '');

INSERT INTO books(`author`, `title`, `subject`, `keywords`, `desc`, `read_time`, `pages`, `year_pub`, `lang`, `ISBN`, `image`, `content`)
VALUES ('Sam Philips', '...izmy, ako rozumieť modernému a súčasnému umeniu ', 'UKL', 'umenie, dejiny, história, maľby, sochy, portréty, moderné umenie', 'Publikácia ... izmy, ako rozumieť modernému a súčasnému umeniu nemôže byť vyčerpávajúcim súhrnom, ale predstavuje veľmi dobrého sprievodcu izmami (napr. fauvizmus, expresionizmus, rayonizmus, precizionizmus, fluxus, multikultiralizmus) a ich hlavnými predstaviteľmi. ', '320', '160', '2013', 'SK', '9.7886E+12', '...izmy.png', '');
