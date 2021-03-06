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
INSERT INTO authors (`author_name`) VALUES ('Franti??ek Emmert');
INSERT INTO authors (`author_name`) VALUES ('Hana Kol????ov??');
INSERT INTO authors (`author_name`) VALUES ('Ian Stewart');
INSERT INTO authors (`author_name`) VALUES ('Ivan Novotn??');
INSERT INTO authors (`author_name`) VALUES ('Jaroslav Rezn??k');
INSERT INTO authors (`author_name`) VALUES ('Jaroslav Smr??');
INSERT INTO authors (`author_name`) VALUES ('Jozef Hvi????');
INSERT INTO authors (`author_name`) VALUES ('Kevin Walsh');
INSERT INTO authors (`author_name`) VALUES ('Leopold Morav????k');
INSERT INTO authors (`author_name`) VALUES ('Martin Piko');
INSERT INTO authors (`author_name`) VALUES ('Mary Hollingsworthov??');
INSERT INTO authors (`author_name`) VALUES ('Michal Hru??ka');
INSERT INTO authors (`author_name`) VALUES ('Milan Kolcun');
INSERT INTO authors (`author_name`) VALUES ('Milan V??ro??');
INSERT INTO authors (`author_name`) VALUES ('Monica Prince');
INSERT INTO authors (`author_name`) VALUES ('M??ria B??torov??');
INSERT INTO authors (`author_name`) VALUES ('Norman Friedman');
INSERT INTO authors (`author_name`) VALUES ('Pavol Petrovi??');
INSERT INTO authors (`author_name`) VALUES ('Peter Szolcs??nyi');
INSERT INTO authors (`author_name`) VALUES ('Roman Kub??nek');
INSERT INTO authors (`author_name`) VALUES ('Sam Philips');
INSERT INTO authors (`author_name`) VALUES ('Slavom??r Mich??lek');
INSERT INTO authors (`author_name`) VALUES ('Stephen King');
INSERT INTO authors (`author_name`) VALUES ('Stephen Little');
INSERT INTO authors (`author_name`) VALUES ('Tim Marshall');
INSERT INTO authors (`author_name`) VALUES ('Viliam Mar??ok');
INSERT INTO authors (`author_name`) VALUES ('Vladim??r Petr??k');
INSERT INTO authors (`author_name`) VALUES ('Winston S. Churchill');
INSERT INTO authors (`author_name`) VALUES ('Zora Mintalov?? Zubercov??');


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
VALUES ('8008015772', 6, 510, 258, 1991, 1, '', 'Biele miesta v slovenskej literat??re', 'literat??ra, medzivojnov?? literat??ra, povojnov?? literat??ra, spisovatelia, katol??cka moderna, kult??ra, liter??rne diela', 'Spoznajte tvorbu b??snikov, prozaikov a kritikov, ktor?? boli pre svoj nekompromisn?? postoj vo??i komunistick??mu syst??mu z n????ho ??ivota a literat??ry vyraden??.', '??vod; I.; II. Liter??rne portr??ty; III. Z liter??rnych diel');
VALUES ('9788097023515', 6, 720, 358, 2010, 1, '', 'Ko??ick?? ????tanka - Lieter??rne potulky mestom Ko??ice (3)', 'autori, udalosti Ko????c, Ko??ice, ko??ick?? dejiny, literat??ra', 'Ob????ben?? i menej zn??mi autori (vy??e 90) liter??rne zve??nili sl??vne udalosti mesta i jeho v??edn?? chv??le. 10 n??rodn??ch literat??r, ktor?? sa dotkli Ko????c (americk??, franc??zska, tureck??, rak??ska, rusk??, nemeck??, ??idovsk??, ma??arsk??, ??esk?? a slovensk??).', '');
VALUES ('9788055604985', 6, 1110, 640, 2012, 1, '', 'T??ry do literat??ry - Po liter??rnych stop??ch Slovenska', 'Slovensko, literat??ra, spisovatelia', 'Kniha o liter??rnych potulk??ch po Slovensku, pri ktor??ch sa ??itate?? zozn??mi s na??imi najv??znamnej????mi liter??tmi od historick??ch ??ias a?? po s????asnos??.', 'Z Bratislavy do Trnavy; Z Trnavy a?? na Z??horie; Popod Bradlo nasp???? k V??hu; Popri V??hu do Nov??ho Mesta; Popod Javorinu; V meste Mat????a ????ka a jeho okol??; Hore Pova????m s mal??mi odbo??kami; Zo ??iliny do Prievidze; Okolo brehov priezranej rieky a jej pr??tokov; V meste slova a literat??ry; Pomedzi ??al??ie hriadky Tur??ianskej z??hradky; Z Kra??ovian a?? na ""Oravsk?? more""; Malebn?? cesta hore V??hom; Popod Tatry na Spi?? a do ??ari??a; Popod Duklu do Zempl??na; K??ukat?? cesta po Gemeri; Dolu Hronom; Cez Detvu do Novohradu; Z Novohradu kr????om cez Hont; Popod Sitno a?? do Kremnice; Dolu Nitrou a?? do Nitry; Cez Tekov a?? do Kom??rna; Z Nitry do Bratislavy; V hlavnom meste Slovenska; Slovensk?? spisovatelia krajania, naroden??, ??ij??ci a tvoriaci v matersk??ch krajin??ch; Menn?? register; Miestny register; V??ber z pou??itej encyklopedickej a slovn??kovej literat??ry');
VALUES ('9788055157627', 6, 540, 288, 2020, 1, '', 'O p??san??', 'literat??ra, p??sanie, za????naj??ci autor, tipy, rady, ??ivotopis', 'Napriek svojmu n??zvu je t??to kniha najm?? o ??ivotnom pr??behu, ako sa z chlapca, ktor?? vyrastal bez otca, stal milion??r. ', '');
VALUES ('9788055608372', 4, 448, 224, 2006, 1, '', 'Pr??roda do vrecka - Horniny a miner??ly', 'miner??ly, horniny, identifik??cia miner??lov, identifik??cia horn??n, geol??gia', 'V tomto petrografickom sprievodcovi n??jdete inform??cie o ??irokom spektre horn??n a miner??lov z cel??ho sveta. ', 'Ako pou????va?? knihu; ??o s?? mier??ly?; ??o s?? horniny?; Identifik??cia horn??n; Ur??ovanie miner??lov; Sediment??rne horniny; Vyvret?? horniny; Metamorfovan?? horniny; Rudn?? miner??ly; Horninotvorn?? miner??ly; Slovn????ek; Register; Po??akovanie');
VALUES ('8071689092', 4, 416, 208, 2004, 2, '', 'Biologie ??ivo??ich?? pro gymn??zia', 'biol??gia, ??ivo????chy, prvoky', 'V u??ebnici n??jdete preh??ad ??ivo????chov a heterotrofn??ch jednobunkovcov. ', '1 ??vod; 2 ??????e prvoci; 3 ??????e ??ivo??ichov??; 4 ??ivo??ichov?? s druhotnou t??ln?? dutinou; 5 Kmen strunatci');
VALUES ('9788073731694', 4, 480, 240, 2015, 2, '', 'Biologie ??lov??ka pro gymn??zia', 'biol??gia, ??lovek, anat??mia, fyziol??gia', 'V u??ebnici n??jdete u??ivo o ??udskom tele, ktor?? je predstaven?? ako jeden funk??n?? a funguj??ci celok. ', '1 Bilogie ??lov??ka-??vod; 2 Soustavy lidsk??ho tela-anatomie a fyziologie; 3 V??voj vaj????ka, t??hotenstv??, antikoncepce; 4 Obdob?? lidsk??ho ??ivota; 5 Zdrav?? ??lov??ka; Praktick?? ????st; P????loha');
VALUES ('9788089879014', 3, 448, 224, 2016, 1, '', 'S??kromn?? ??ivot molek??l', 'ch??mia, v????a, chu??, rastliny, molekuly', 'Kniha jednoduchou, p??tavou a ??asto aj vtipnou formou vysvet??uje z??kladn?? princ??py ??iv??ho aj ne??iv??ho sveta ??? od pal??v a drahokamov cez lieky ??i doping a kon??iac treb??rs oplodnen??m alebo oh??ostrojom.', 'Molekul??rna parfum??ria-svet bizarn??ch v??n??; Molekul??rna gastron??mia-v????niv?? chute; Molekul??rna botanika-??o rastliny vedia; Molekul??rna zool??gia-ako to tie zvery robia?; Molekul??rna anat??mia-bioch??mia ?? la homo; Molekul??rna toxikol??gia-jed ??i liek?; Molekul??rne materi??ly-in??pirat??vna ch??mia');
VALUES ('9788024420837', 2, 444, 222, 2017, 2, '', 'Fyzika stru??n?? a jasn??', 'fyzika, pr??klady, testov?? ot??zky, v??po??ty, pr??prava na prij??macie sk????ky', 'Preh??ad fyziky v pr??kladoch a testov??ch ot??zkach.', 'V??znam fyziky; Fyzik??ln?? veli??iny a jej??ch jednotky; Mechanika; Gravita??n?? pole; Mechanick?? kmit??n?? a vln??n??; Molekulov?? fyzika a termodynamika; Elekt??ina a magnetismus; Optika; Fyzika atomov??ho j??dra; Astrofyzika; Nositel?? Nobelovy Ceny; V??sledky testov??ch ot??zek; Literatura');
VALUES ('9788081430091', 2, 520, 260, 2012, 1, '', 'Fyzika I.', 'fyzika, mechanika, termodynamika, elektromagnetizmus, po????ta??ov?? fyzika', 'Vybran?? kapitoly zo z??kladov klasickej a po????ta??ovej fyziky.', 'Predslov; I Klasick?? fyzika; II Fyzika interdisciplin??rnych oblast??; Register');
VALUES ('9788081430107', 2, 900, 450, 2012, 1, '', 'Fyzika II.', 'fyzika, modern?? fyzika, relativistick?? fyzika, kvantov?? fyzika, at??m, kvantov?? po????ta??e ', 'Vybran?? kapitoly zo z??kladov modernej fyziky a kvantov??ch po????ta??ov', 'Predslov; I Modern?? fyzika; II Fyzika interdisciplin??rnych oblast??; Register');
VALUES ('8073630486', 1, 526, 263, 2005, 2, '', 'Nula', 'matematika, nula, hist??ria, absol??tna nula, paradoxy', 'Tato kniha je histori?? nuly. Zrodila se ve starov??ku a posl??ze se j?? poda??ilo vybojovat si m??sto na slunci na V??chod??, s prosazen??m na Z??pad?? to v??ak m??la mnohem obt????n??j????. Mo??n?? proto se na???? civilizaci dodnes mst?? a neust??le p??sob?? nov?? a nov?? pot????e od hav??ri?? ????d??c??ch syst??m?? a?? po fundament??ln?? probl??my v modern?? fyzice.', 'Pod??kov??n??; O. Nula a pr??zdnota; 1. Nic se ned??je; 2. Nic nepoch??z?? z ni??eho; 3. Zaru??en?? postup; 4. Nekone??n?? B??h Ni??eho; 5. Nekone??n?? nuly nev??????c?? matematikov??; 6. Dvoj??e nekone??na; 7. Absolutn?? nuly; 8. ??as nula v epicentru; 9. Kone??n?? v??t??zstv?? nuly');
VALUES ('9788073635275', 1, 688, 344, 2013, 2, '', 'Truhlice matematick??ch poklad?? profesora Stewarta', 'matematika, kuriozity, ????sla, ??se??ky, integr??ly', 'Kuriozity, h??danky, v????n?? ??lohy, p????b??hy z historie v??dy, matematick?? vtipy i historky o slavn??ch matematic??ch jsou zde poskl??d??ny s lehkost?? a ??armem do vyt????ben?? mozaiky, kterou lze ????st po ??ad?? i na p??esk????ku, ale kter?? v??s nudit rozhodn?? nebude.', '');
VALUES ('9788073633684', 1, 1088, 544, 2012, 2, '', 'Matematick?? kniha (Od Pythagora po 57. dimenzi: 250 miln??k?? v d??jin??ch matematiky)', 'matematika, hist??ria, dejiny, z??hady', 'Autor n??s ve 250 stru??n??ch kapitol??ch prov??d?? d??le??it??mi miln??ky historie matematiky a otev??r?? p??ed n??mi sv??t pln?? nesm??rn??ch z??had a kr??sy.', '');
VALUES ('9788080465889', 7, 496, 248, 2013, 1, '', 'Bastardi v politike', 'dejiny, politika, hist??ria, dikt??tori, tyrania, ??ivotopisy', 'Pr??behy t??ch, ktor?? zneu??ili moc', '??vod; Anastasio Somoza a jeho dynastia; Odvrhnut?? spojenec Pahlav??; Pol Pot a jeho vra??edn?? polia; Idi Amin Dada-slon so slepa????m mozgom; Bokassa-bohat?? cis??r chudobn??ho ??udu; Ferdinand Marcos a ru??encov?? revol??cia; Op??ut?? Augusto Pinochet; Koniec Karpatsk??ho g??nia; Manuel Noriega-spojenec i vyvrhe??; Prehrat?? vojny Sadd??ma Husajna; Us??ma bin L??din a semeno terorizmu; Osamel?? be??ec Muammar Kadd??f??; Pou??it?? literat??ra ');
VALUES ('8025106276', 7, 54, 64, 2005, 2, '', 'Studen?? v??lka', 'dejiny, politika, hist??ria, prezidenti, Rusko, USA, vojna, 20. storo??ie', 'Koniec druhej svetovej vojny vy??stil do ??al??ieho, desiatky rokov trvaj??ceho boja o svetov?? nadvl??du medzi z??padn??m a v??chodn??m blokom, ktor?? vo??iel do dej??n pod n??zvom studen?? vojna.', 'P??edmluva; Zma??en?? m??r; ??elezn?? opona; Trumanova doktr??na...; Blok??da Berl??na; ????na a z??nik koloni??ln??ho syst??mu; Mccarthismus; Korejsk?? v??lka; Jadern?? bomba; Evropa v pohybu: Povst??n?? v NDR a Polsku; Evropa v pohybu: Povst??n?? v Ma??arsku; Trhliny v opon??; V??chodn?? tajn?? slu??by; Z??padn?? tajn?? slu??by; Sputnik a raketov?? ??ra; Kuba: Z??toka svin??; Berlinsk?? ze??; Kub??nsk?? raketov?? krize; Vietnamsk?? v??lka; Pra??sk?? jaro; Politika uvol??ov??n??: vrchol sov??tsk?? moci; V??lka v Afghanist??nu; Disidenti; V??voj v Polsku; Reaganova ofenziva; ??ivot s jadernou bombou; Gorba??ov: mu??, se kter??m bylo t??eba jednat; Strhn??te ze??! Revoluce ve v??chodn?? Evrop??; Z??nik Sov??tsk??ho svazu; P??eklady; Rejst????k; Pod??kov??n??');
VALUES ('9788025122839', 7, 54, 64, 2009, 2, '', '1918: Vznik ??SR', 'dejiny, politika, hist??ria, prezidenti, ??eskoslovensko, Bene??, Masaryk, ??t??t, revol??cia', 'Poznajte cestu, ktor?? viedla ku vzniku samostatn??ho ??eskoslovenska', 'P??edmluva; ??esi v Rakousku-Uhersku; St??topr??vn?? ot??zka; Pozitivn?? politika; Velk?? v??lka; M??m n??rod??m!; Rusofilstv??; Tom???? Gariggue Masaryk; Dom??c?? dvoj?? hra; Masarykova zahrani??n?? akce; Tajn?? v??bor maffie; Edvard Bene??; Vznik ??eskoslovensk??ch legi??; Bitva u Zborova; Radikalizace dom??c?? politiky; Slovensko p??ed rokem 1918; Milan Rastislav ??tef??nik; ??eskoslovensk?? legie v Rusku; Rok 1918; N??rodn?? revoluce; 28. ????jen 1918; Mu??ov?? 28. ????jna; Uspo????d??n?? pom??r??; Boj o pohrani????; Boj o Slovensko; Odrakou??t??n??; Vlastn?? m??na; Vlajka; Spole??n?? hymna; Pa??????sk?? smlouvy; Ukotven?? nov??ho st??tu');
VALUES ('9788055627953', 7, 656, 328, 2018, 1, '', 'Ako sme kedysi ??ili', 'dejiny, hist??ria, umenie, kult??ra, zvyky, trad??cie, Slovensko, folkl??r', 'Obrazy ka??dodenn??ho ??ivota na??ich predkov', '??vod; Z ju??n??ch n????in do ded??n, meste??iek a rod??n; Zo severn??ch h??r do dol??n, ded??n a rod??n; Z??ver; Slovn????ek; Pou??it?? a odpor????an?? literat??ra; Zoznam obrazov??ho materi??lu; O autorke; Po??akovania');
VALUES ('9788026400608', 7, 54, 64, 2012, 2, '', 'V??clav Havel (1936 - 2011)', 'dejiny, hist??ria, prezidenti, V??clav Havel, ??eskoslovensko, ??ivotopisy, politika', 'Jeden z najv??znamnej????ch ??esk??ch s????asn??kov, dramatik, disident, prezident. Spoznajte ??ivotn?? osud osobnosti, ktor?? sa dok??zala tak v??razne zap??sa?? do na??ej novodobej hist??rie. ', 'Rodinn?? p??vod; D??tstv?? a mlad?? l??ta; Bratr Ivan; Dramatikem v Divadle Na Z??bradl??; Olga Havlov??; Ve??ejn?? vystoupen?? koncem 60. let; Zak??zan?? autor; Na Hr??de??ku; Zakladatel Charty 77; VONS; Ve v??zen??; Disidentem v 80. letech; Za sametov?? revoluce; Havel na Hrad! Posledn?? ??echoslov??k; Lid?? v okol?? V??clava Havla; Prvn?? prezident ??R; Dagmar Havlov??; V??clav Havel ve fotografi??ch; Vztah s V??clavem Klausem; Odp??rci a kritici; Zahrani??n??politick?? ??sp??chy; Slavn?? v??roky V??clava Havla; Divadeln?? hry; Odch??zen??; Prosinec 2011');
VALUES ('9788081596803', 7, 1200, 600, 2018, 1, '', 'Hist??ria zadn??mi dverami ', 'dejiny, hist??ria, kr??li, politici, vojny, Uhorsko', 'Nezvy??ajn?? pr??behy zo slovensk??ch a svetov??ch dej??n. V pr??behoch siahaj??cich od stredoveku po najnov??ie dejiny 20. storo??ia sa dozvie zauj??mavosti, ktor?? sa do u??ebn??c dejepisu nedostali. ', '??as?? I. Menej v????na tv??r z??konn??kov a kron??k; ??as?? II. Cherchez la femme; ??as?? III. Ni?? ??udsk?? im nebolo cudzie; ??as?? IV. Ke?? zbrane rin??ia; ??as?? V. Ve??k?? a mal?? politika; ??as?? VI. Ir??nia a satira v slu??b??ch politiky; ??as?? VII. P??le-m??le z domova a zo sveta; ??as?? VIII. Trapasy, ktor?? pohli dejinami; ??as?? IX. ??udsk?? (a ne??udsk??) tv??re politikov');
VALUES ('8089111268', 7, 534, 267, 2007, 1, '', 'Ve??k?? demokracie-Dejiny po anglicky hovoriacich n??rodov', 'dejiny, hist??ria, anglick?? n??rody, demokracia, politika', 'Dejiny anglicky hovoriacich n??rodov. ??tvrt?? a z??vere??n?? zv??zok v??nimo??nej historiografickej pr??ce nosite??a Nobelovej ceny za literat??ru sira Winstona S. Churchilla.', 'Predslov; 10. kniha-Obnova a reforma; 11. kniha-Ve??k?? republika; 12. kniha: Viktori??nska ??ra; Register');
VALUES ('9788081595134', 5, 496, 248, 2017, 1, '', 'V zajat?? geografie', 'dejiny, geografia, politika, geopolitika, geokonfliktol??gia, ??t??t, vojny, revol??cie', 'Desa?? m??p, ktor?? v??m povedia v??etko, ??o chcete vedie?? o glob??lnej politike. ', 'O autorovi; Predslov sir John Scarlett; ??vod; 1 Rusko; 2 ????na; 3 USA; 4 Z??padn?? Eur??pa; 5 Afrika; 6 Bl??zky v??chod; 7 India a Pakistan; 8 K??rea a Japonsko; 9 Latinsk?? Amerika; 10 Arkt??da; Z??ver; Po??akovanie; Bibliografia');
VALUES ('9788097117214', 9, 504, 252, 2013, 1, '', '59 in??pirat??vnych podnikate??sk??ch pr??behov ', 'ekon??mia, podnikanie, ??ivotopisy, podnikatelia, firmy', 'Ako vybudova?? ??spe??n?? firmu na Slovensku', '');
VALUES ('801000796X', 10, 1022, 511, 2006, 1, '', 'Umenie v dejin??ch sveta', 'umenie, dejiny, hist??ria, ma??by, sochy, portr??ty', '30 000 rokov dej??n umenia v??etk??ch obdob??, kraj??n, n??rodov a kult??r', '');
VALUES ('9788081280184', 10, 1084, 332, 2011, 1, '', 'Osudy umeleck??ch diel a ich tvorcov', 'umenie, dejiny, hist??ria, ma??by, sochy, portr??ty, Slovensko', 'O nev??edn??ch osudoch umelcov a umeleck??ch diel, ktor?? mali alebo maj?? s??vis so Slovenskom ??? od star????ch obdob?? a?? po osudy diel slovenskej v??tvarnej moderny, ktor?? kon??ievali v ruk??ch komunistick??ch pohlav??rov.', '');
VALUES ('9788055604626', 10, 320, 160, 2012, 1, '', '...izmy, ako rozumie?? umeniu', 'umenie, dejiny, hist??ria, ma??by, sochy, portr??ty', 'Publik??cia??... izmy, ako rozumie?? umeniu??je u??ito??n??m a praktick??m sprievodcom bohatou ??k??lou umeleck??ch smerov, ??t??lov ??i hnut??.', '');
VALUES ('9788055608594', 10, 320, 160, 2013, 1, '', '...izmy, ako rozumie?? modern??mu a s????asn??mu umeniu ', 'umenie, dejiny, hist??ria, ma??by, sochy, portr??ty, modern?? umenie', 'Publik??cia??... izmy, ako rozumie?? modern??mu a s????asn??mu umeniu??nem????e by?? vy??erp??vaj??cim s??hrnom, ale predstavuje ve??mi dobr??ho??sprievodcu izmami??(napr. fauvizmus, expresionizmus, rayonizmus, precizionizmus, fluxus, multikultiralizmus) a ich hlavn??mi predstavite??mi.??', '');
