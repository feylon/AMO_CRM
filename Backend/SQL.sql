-- Viloyat & tuman
CREATE TABLE viloyat (
    id SERIAL PRIMARY KEY,
    name_uz VARCHAR(255),
    name_oz VARCHAR(255),
    name_ru VARCHAR(255)
);

INSERT INTO viloyat (id, name_uz, name_oz, name_ru) VALUES
(1, 'Qoraqalpog‘iston Respublikasi', 'қорақалпоқистон Республикаси', 'Республика Каракалпакстан'),
(2, 'Andijon viloyati', 'Андижон вилояти', 'Андижанская область'),
(3, 'Buxoro viloyati', 'Бухоро вилояти', 'Бухарская область'),
(4, 'Jizzax viloyati', 'Жиззах вилояти', 'Джизакская область'),
(5, 'Qashqadaryo viloyati', 'Қашқадарё вилояти', 'Кашкадарьинская область'),
(6, 'Navoiy viloyati', 'Навоий вилояти', 'Навоийская область'),
(7, 'Namangan viloyati', 'Наманган вилояти', 'Наманганская область'),
(8, 'Samarqand viloyati', 'Самарқанд вилояти', 'Самаркандская область'),
(9, 'Surxandaryo viloyati', 'Сурхандарё вилояти', 'Сурхандарьинская область'),
(10, 'Sirdaryo viloyati', 'Сирдарё вилояти', 'Сырдарьинская область'),
(11, 'Toshkent viloyati', 'Тошкент вилояти', 'Ташкентская область'),
(12, 'Farg‘ona viloyati', 'Фарқона вилояти', 'Ферганская область'),
(13, 'Xorazm viloyati', 'Хоразм вилояти', 'Хорезмская область'),
(14, 'Toshkent shahri', 'Тошкент шақри', 'Город Ташкент');

CREATE TABLE tuman(
    id SERIAL PRIMARY KEY,
    viloyat_id integer not null,
    name_uz varchar(100) DEFAULT NULL,
    name_oz varchar(100) DEFAULT NULL,
    name_ru varchar(100) DEFAULT NULL,
    foreign key (viloyat_id) references  viloyat (id)
);
INSERT INTO tuman (id, viloyat_id, name_uz, name_oz, name_ru) VALUES
(15, 1, 'Amudaryo tumani', 'Амударё тумани', 'Амударьинский район'),
(16, 1, 'Beruniy tumani', 'Беруний тумани', 'Берунийский район'),
(17, 1, 'Kegayli tumani', 'Кегайли тумани', 'Кегейлийский район'),
(18, 1, 'Qonliko‘l tumani', 'Қонликўл тумани', 'Канлыкульский район'),
(19, 1, 'Qorao‘zak tumani', 'Қораўзак тумани', 'Караузякский район'),
(20, 1, 'Qo‘ng‘irot tumani', 'Қўнғирот тумани', 'Кунградский район'),
(21, 1, 'Mo‘ynoq tumani', 'Мўйноқ тумани', 'Муйнакский район'),
(22, 1, 'Nukus tumani', 'Нукус тумани', 'Нукусский район'),
(23, 1, 'Nukus shahri', 'Нукус шаҳри', 'город Нукус'),
(24, 1, 'Taxtako‘pir tumani', 'Тахтакўпир тумани', 'Тахтакупырский район'),
(25, 1, 'To‘rtko‘l tumani', 'Тўрткўл тумани', 'Турткульский район'),
(26, 1, 'Xo‘jayli tumani', 'Хўжайли тумани', 'Ходжейлийский район'),
(27, 1, 'Chimboy tumani', 'Чимбой тумани', 'Чимбайский район'),
(28, 1, 'Shumanay tumani', 'Шуманай тумани', 'Шуманайский район'),
(29, 1, 'Ellikqal‘a tumani', 'Элликқалъа тумани', 'Элликкалинский район'),
(30, 2, 'Andijon shahri', 'Андижон шаҳри', 'город Андижан'),
(31, 2, 'Andijon tumani', 'Андижон тумани', 'Андижанский район'),
(32, 2, 'Asaka tumani', 'Асака тумани', 'Асакинский район'),
(33, 2, 'Baliqchi tumani', 'Балиқчи тумани', 'Балыкчинский район'),
(34, 2, 'Buloqboshi tumani', 'Булоқбоши тумани', 'Булакбашинский район'),
(35, 2, 'Bo‘z tumani', 'Бўз тумани', 'Бозский район'),
(36, 2, 'Jalaquduq tumani', 'Жалақудуқ тумани', 'Джалакудукский район'),
(37, 2, 'Izbosgan tumani', 'Избосган тумани', 'Избасканский район'),
(38, 2, 'Qorasuv shahri', 'Қорасув шаҳри', 'город Карасув'),
(39, 2, 'Qo‘rg‘ontepa tumani', 'Қўрғонтепа тумани', 'Кургантепинский район'),
(40, 2, 'Marhamat tumani', 'Марҳамат тумани', 'Мархаматский район'),
(41, 2, 'Oltinko‘l tumani', 'Олтинкўл тумани', 'Алтынкульский район'),
(42, 2, 'Paxtaobod tumani', 'Пахтаобод тумани', 'Пахтаабадский район'),
(43, 2, 'Ulug‘nor tumani', 'Улуғнор тумани', 'Улугнорский район'),
(44, 2, 'Xonabod tumani', 'Хонабод тумани', 'город Ханабад'),
(45, 2, 'Xo‘jaobod tumani', 'Хўжаобод тумани', 'Ходжаабадский район'),
(46, 2, 'Shahrixon tumani', 'Шаҳрихон тумани', 'Шахриханский район'),
(47, 3, 'Buxoro shahri', 'Бухоро шаҳри', 'город Бухара'),
(48, 3, 'Buxoro tumani', 'Бухоро тумани', 'Бухарский район'),
(49, 3, 'Vobkent tumani', 'Вобкент тумани', 'Вабкентский район'),
(50, 3, 'G‘ijduvon tumani', 'Ғиждувон тумани', 'Гиждуванский район'),
(51, 3, 'Jondor tumani', 'Жондор тумани', 'Жондорский район'),
(52, 3, 'Kogon tumani', 'Когон тумани', 'Каганский район'),
(53, 3, 'Kogon shahri', 'Когон шаҳри', 'город Каган'),
(54, 3, 'Qorako‘l tumani', 'Қоракўл тумани', 'Каракульский район'),
(55, 3, 'Qorovulbozor tumani', 'Қоровулбозор тумани', 'Караулбазарский район'),
(56, 3, 'Olot tumani', 'Олот тумани', 'Алатский район'),
(57, 3, 'Peshku tumani', 'Пешку тумани', 'Пешкунский район'),
(58, 3, 'Romitan tumani', 'Ромитан тумани', 'Ромитанский район'),
(59, 3, 'Shofirkon tumani', 'Шофиркон тумани', 'Шафирканский район'),
(60, 4, 'Arnasoy tumani', 'Арнасой тумани', 'Арнасайский район'),
(61, 4, 'Baxmal tumani', 'Бахмал тумани', 'Бахмальский район'),
(62, 4, 'G‘allaorol tumani', 'Ғаллаорол тумани', 'Галляаральский район'),
(63, 4, 'Do‘stlik tumani', 'Дўстлик тумани', 'Дустликский район'),
(64, 4, 'Sh.Rashidov tumani', 'Ш.Рашидов тумани', 'Шараф-Рашидовский район'),
(65, 4, 'Jizzax shahri', 'Жиззах шаҳри', 'город Джизак'),
(66, 4, 'Zarbdor tumani', 'Зарбдор тумани', 'Зарбдарский район'),
(67, 4, 'Zafarobod tumani', 'Зафаробод тумани', 'Зафарабадский район'),
(68, 4, 'Zomin tumani', 'Зомин тумани', 'Зааминский район'),
(69, 4, 'Mirzacho‘l tumani', 'Мирзачўл тумани', 'Мирзачульский район'),
(70, 4, 'Paxtakor tumani', 'Пахтакор тумани', 'Пахтакорский район'),
(71, 4, 'Forish tumani', 'Фориш тумани', 'Фаришский район'),
(72, 4, 'Yangiobod tumani', 'Янгиобод тумани', 'Янгиабадский район'),
(73, 5, 'G‘uzor tumani', 'Ғузор тумани', 'Гузарский район'),
(74, 5, 'Dehqonobod tumani', 'Деҳқонобод тумани', 'Дехканабадский район'),
(75, 5, 'Qamashi tumani', 'Қамаши тумани', 'Камашинский район'),
(76, 5, 'Qarshi tumani', 'Қарши тумани', 'Каршинский район'),
(77, 5, 'Qarshi shahri', 'Қарши шаҳри', 'город Карши'),
(78, 5, 'Kasbi tumani', 'Касби тумани', 'Касбийский район'),
(79, 5, 'Kitob tumani', 'Китоб тумани', 'Китабский район'),
(80, 5, 'Koson tumani', 'Косон тумани', 'Касанский район'),
(81, 5, 'Mirishkor tumani', 'Миришкор тумани', 'Миришкорский район'),
(82, 5, 'Muborak tumani', 'Муборак тумани', 'Мубарекский район'),
(83, 5, 'Nishon tumani', 'Нишон тумани', 'Нишанский район'),
(84, 5, 'Chiroqchi tumani', 'Чироқчи тумани', 'Чиракчинский район'),
(85, 5, 'Shahrisabz tumani', 'Шаҳрисабз тумани', 'Шахрисабзский район'),
(86, 5, 'Yakkabog‘ tumani', 'Яккабоғ тумани', 'Яккабагский район'),
(87, 6, 'Zarafshon shahri', 'Зарафшон шаҳри', 'город Зарафшан'),
(88, 6, 'Karmana tumani', 'Кармана тумани', 'Карманинский район'),
(89, 6, 'Qiziltepa tumani', 'Қизилтепа тумани', 'Кызылтепинский район'),
(90, 6, 'Konimex tumani', 'Конимех тумани', 'Канимехский район'),
(91, 6, 'Navbahor tumani', 'Навбаҳор тумани', 'Навбахорский район'),
(92, 6, 'Navoiy shahri', 'Навоий шаҳри', 'город Навои'),
(93, 6, 'Nurota tumani', 'Нурота тумани', 'Нуратинский район'),
(94, 6, 'Tomdi tumani', 'Томди тумани', 'Тамдынский район'),
(95, 6, 'Uchquduq tumani', 'Учқудуқ тумани', 'Учкудукский район'),
(96, 6, 'Xatirchi tumani', 'Хатирчи тумани', 'Хатырчинский район'),
(97, 7, 'Kosonsoy tumani', 'Косонсой тумани', 'Касансайский район'),
(98, 7, 'Mingbuloq tumani', 'Мингбулоқ тумани', 'Мингбулакский район'),
(99, 7, 'Namangan tumani', 'Наманган тумани', 'Наманганский район'),
(100, 7, 'Namangan shahri', 'Наманган шаҳри', 'город Наманган'),
(101, 7, 'Norin tumani', 'Норин тумани', 'Нарынский район'),
(102, 7, 'Pop tumani', 'Поп тумани', 'Папский район'),
(103, 7, 'To‘raqo‘rg‘on tumani', 'Тўрақўрғон тумани', 'Туракурганский район'),
(104, 7, 'Uychi tumani', 'Уйчи тумани', 'Уйчинский район'),
(105, 7, 'Uchqo‘rg‘on tumani', 'Учқўрғон тумани', 'Учкурганский район'),
(106, 7, 'Chortoq tumani', 'Чортоқ тумани', 'Чартакский район'),
(107, 7, 'Chust tumani', 'Чуст тумани', 'Чустский район'),
(108, 7, 'Yangiqo‘rg‘on tumani', 'Янгиқўрғон тумани', 'Янгикурганский район'),
(109, 8, 'Bulung‘ur tumani', 'Булунғур тумани', 'Булунгурский район'),
(110, 8, 'Jomboy tumani', 'Жомбой тумани', 'Джамбайский район'),
(111, 8, 'Ishtixon tumani', 'Иштихон тумани', 'Иштыханский район'),
(112, 8, 'Kattaqo‘rg‘on tumani', 'Каттақўрғон тумани', 'Каттакурганский район'),
(113, 8, 'Kattaqo‘rg‘on shahri', 'Каттақўрғон шаҳри', 'город Каттакурган'),
(114, 8, 'Qo‘shrabot tumani', 'Қўшработ тумани', 'Кошрабадский район'),
(115, 8, 'Narpay tumani', 'Нарпай тумани', 'Нарпайский район'),
(116, 8, 'Nurabod tumani', 'Нурабод тумани', 'Нурабадский район'),
(117, 8, 'Oqdaryo tumani', 'Оқдарё тумани', 'Акдарьинский район'),
(118, 8, 'Payariq tumani', 'Паяриқ тумани', 'Пайарыкский район'),
(119, 8, 'Pastarg‘om tumani', 'Пастарғом тумани', 'Пастдаргомский район'),
(120, 8, 'Paxtachi tumani', 'Пахтачи тумани', 'Пахтачийский район'),
(121, 8, 'Samarqand tumani', 'Самарқанд тумани', 'Самаркандский район'),
(122, 8, 'Samarqand shahri', 'Самарқанд шаҳри', 'город Самарканд'),
(123, 8, 'Toyloq tumani', 'Тойлоқ тумани', 'Тайлакский район'),
(124, 8, 'Urgut tumani', 'Ургут тумани', 'Ургутский район'),
(125, 9, 'Angor tumani', 'Ангор тумани', 'Ангорский район'),
(126, 9, 'Boysun tumani', 'Бойсун тумани', 'Байсунский район'),
(127, 9, 'Denov tumani', 'Денов тумани', 'Денауский район'),
(128, 9, 'Jarqo‘rg‘on tumani', 'Жарқўрғон тумани', 'Джаркурганский район'),
(129, 9, 'Qiziriq tumani', 'Қизириқ тумани', 'Кизирикский район'),
(130, 9, 'Qo‘mqo‘rg‘on tumani', 'Қўмқўрғон тумани', 'Кумкурганский район'),
(131, 9, 'Muzrabot tumani', 'Музработ тумани', 'Музрабадский район'),
(132, 9, 'Oltinsoy tumani', 'Олтинсой тумани', 'Алтынсайский район'),
(133, 9, 'Sariosiyo tumani', 'Сариосиё тумани', 'Сариасийский район'),
(134, 9, 'Termiz tumani', 'Термиз тумани', 'Термезский район'),
(135, 9, 'Termiz shahri', 'Термиз шаҳри', 'город Термез'),
(136, 9, 'Uzun tumani', 'Узун тумани', 'Узунский район'),
(137, 9, 'Sherobod tumani', 'Шеробод тумани', 'Шерабадский район'),
(138, 9, 'Sho‘rchi tumani', 'Шўрчи тумани', 'Шурчинский район'),
(139, 10, 'Boyovut tumani', 'Боёвут тумани', 'Баяутский район'),
(140, 10, 'Guliston tumani', 'Гулистон тумани', 'Гулистанский район'),
(141, 10, 'Guliston shahri', 'Гулистон шаҳри', 'город Гулистан'),
(142, 10, 'Mirzaobod tumani', 'Мирзаобод тумани', 'Мирзаабадский район'),
(143, 10, 'Oqoltin tumani', 'Оқолтин тумани', 'Акалтынский район'),
(144, 10, 'Sayxunobod tumani', 'Сайхунобод тумани', 'Сайхунабадский район'),
(145, 10, 'Sardoba tumani', 'Сардоба тумани', 'Сардобский район'),
(146, 10, 'Sirdaryo tumani', 'Сирдарё тумани', 'Сырдарьинский район'),
(147, 10, 'Xavos tumani', 'Хавос тумани', 'Хавастский район'),
(148, 10, 'Shirin shahri', 'Ширин шаҳри', 'город Ширин'),
(149, 10, 'Yangiyer shahri', 'Янгиер шаҳри', 'город Янгиер'),
(150, 11, 'Angiren shahri', 'Ангирен шаҳри', 'город Ангрен'),
(151, 11, 'Bekabod tumani', 'Бекабод тумани', 'Бекабадский район'),
(152, 11, 'Bekabod shahri', 'Бекабод шаҳри', 'город Бекабад'),
(153, 11, 'Bo‘ka tumani', 'Бўка тумани', 'Букинский район'),
(154, 11, 'Bo‘stonliq tumani', 'Бўстонлиқ тумани', 'Бостанлыкский район'),
(155, 11, 'Zangiota tumani', 'Зангиота тумани', 'Зангиатинский район'),
(156, 11, 'Qibray tumani', 'Қибрай тумани', 'Кибрайский район'),
(157, 11, 'Quyichirchiq tumani', 'Қуйичирчиқ тумани', 'Куйичирчикский район'),
(158, 11, 'Oqqo‘rg‘on tumani', 'Оққўрғон тумани', 'Аккурганский район'),
(159, 11, 'Olmaliq shahri', 'Олмалиқ шаҳри', 'город Алмалык'),
(160, 11, 'Ohangaron tumani', 'Оҳангарон тумани', 'Ахангаранский район'),
(161, 11, 'Parkent tumani', 'Паркент тумани', 'Паркентский район'),
(162, 11, 'Piskent tumani', 'Пискент тумани', 'Пскентский район'),
(163, 11, 'O‘rtachirchiq tumani', 'Ўртачирчиқ тумани', 'Уртачирчикский район'),
(164, 11, 'Chinoz tumani', 'Чиноз тумани', 'Чиназский район'),
(165, 11, 'Chirchiq shahri', 'Чирчиқ шаҳри', 'город Чирчик'),
(166, 11, 'Yuqorichirchiq tumani', 'Юқоричирчиқ тумани', 'Юкоричирчикский район'),
(167, 11, 'Yangiyo‘l tumani', 'Янгийўл тумани', 'Янгиюльский район'),
(168, 12, 'Beshariq tumani', 'Бешариқ тумани', 'Бешарыкский район'),
(169, 12, 'Bog‘dod tumani', 'Боғдод тумани', 'Багдадский район'),
(170, 12, 'Buvayda tumani', 'Бувайда тумани', 'Бувайдинский район'),
(171, 12, 'Dang‘ara tumani', 'Данғара тумани', 'Дангаринский район'),
(172, 12, 'Yozyovon tumani', 'Ёзёвон тумани', 'Язъяванский район'),
(173, 12, 'Quva tumani', 'Қува тумани', 'Кувинский район'),
(174, 12, 'Quvasoy shahri', 'Қувасой шаҳри', 'город Кувасай'),
(175, 12, 'Qo‘qon shahri', 'Қўқон шаҳри', 'город Коканд'),
(176, 12, 'Qo‘shtepa tumani', 'Қўштепа тумани', 'Куштепинский район'),
(177, 12, 'Marg‘ilon shahri', 'Марғилон шаҳри', 'город Маргилан'),
(178, 12, 'Oltiariq tumani', 'Олтиариқ тумани', 'Алтыарыкский район'),
(179, 12, 'Rishton tumani', 'Риштон тумани', 'Риштанский район'),
(180, 12, 'So‘x tumani', 'Сўх тумани', 'Сохский район'),
(181, 12, 'Toshloq tumani', 'Тошлоқ тумани', 'Ташлакский район'),
(182, 12, 'Uchko‘prik tumani', 'Учкўприк тумани', 'Учкуприкский район'),
(183, 12, 'O‘zbekiston tumani', 'Ўзбекистон тумани', 'Узбекистанский район'),
(184, 12, 'Farg‘ona tumani', 'Фарғона тумани', 'Ферганский район'),
(185, 12, 'Farg‘ona shahri', 'Фарғона шаҳри', 'город Фергана'),
(186, 12, 'Furqat tumani', 'Фурқат тумани', 'Фуркатский район'),
(187, 13, 'Bog‘ot tumani', 'Боғот тумани', 'Багатский район'),
(188, 13, 'Gurlan tumani', 'Гурлан тумани', 'Гурленский район'),
(189, 13, 'Qo‘shko‘pir tumani', 'Қўшкўпир тумани', 'Кошкупырский район'),
(190, 13, 'Urganch tumani', 'Урганч тумани', 'Ургенчский район'),
(191, 13, 'Urganch shahri', 'Урганч шаҳри', 'город Ургенч'),
(192, 13, 'Xiva tumani', 'Хива тумани', 'Хивинский район'),
(193, 13, 'Xazarasp tumani', 'Хазарасп тумани', 'Хазараспский район'),
(194, 13, 'Xonqa tumani', 'Хонқа тумани', 'Ханкинский район'),
(195, 13, 'Shavot tumani', 'Шавот тумани', 'Шаватский район'),
(196, 13, 'Yangiariq tumani', 'Янгиариқ тумани', 'Янгиарыкский район'),
(197, 13, 'Yangibozor tumani', 'Янгибозор тумани', 'Янгибазарский район'),
(198, 14, 'Bektimer tumani', 'Бектимер тумани', 'Бектемирский район'),
(199, 14, 'Mirzo Ulugbek tumani', 'Мирзо-Улугбекский район', 'Мирзо-Улугбекский район'),
(200, 14, 'Mirobod tumani', 'Миробод тумани', 'Мирабадский район'),
(201, 14, 'Olmazor tumani', 'Олмазор тумани', 'Алмазарский район'),
(202, 14, 'Sirgali tumani', 'Сиргали тумани', 'Сергелийский район'),
(203, 14, 'Uchtepa tumani', 'Учтепа тумани', 'Учтепинский район'),
(204, 14, 'Yashnobod tumani', 'Яшнобод тумани', 'Яшнободский район'),
(205, 14, 'Chilonzor tumani', 'Чилонзор тумани', 'Чиланзарский район'),
(206, 14, 'Shayxontohur tumani', 'Шайхонтоҳур тумани', 'Шайхантахурский район'),
(207, 14, 'Yunusobod tumani', 'Юнусобод тумани', 'Юнусабадский район'),
(208, 14, 'Yakkasaroy tumani', 'Яккасарой тумани', 'Яккасарайский район'),
(209, 1, 'Taxiatosh shahri', 'Тахиатош шаҳри', 'Тахиаташский район'),
(210, 2, 'Asaka shahri', 'Асака шаҳри', 'Асакинский район'),
(211, 9, 'Bandixon tumani', 'Бандихон тумани', 'Бандиханский район'),
(212, 11, 'Ohangaron shahri', 'Оҳангарон шаҳри', 'город Ахангаранский'),
(213, 11, 'Yangiyo‘l shahri', 'Янгийўл шаҳри', 'город Янгиюль'),
(215, 11, 'Toshkent tumani', 'Тошкент тумани', 'Ташкентский район'),
(216, 13, 'Xiva shahri', 'Хива шаҳри', 'город Хива'),
(217, 13, 'Dostlik shahri', 'Дўстлик шаҳри\r\nДўстлик шаҳри', 'город Дўстлик\r\nДўстлик'),
(218, 14, 'Yangihayot tumani', 'Янгиҳаёт тумани', 'Янгихаётский район'),
(219, 13, 'Tuproqqala tumani', 'Тупроққалъа тумани', 'Тироккальский район'),
(220, 7, 'Davlatobod tumani', 'Давлатобод тумани', 'Давлатабадский район \r\n'),
(221, 6, 'G‘ozg‘on shahri', 'Ғозғон шаҳри', 'Город Гозган'),
(222, 1, 'Bo‘zatov tumani', 'Бўзатов тумани', 'Бозатовский район'),
(224, 5, 'Shahrisabz shahri', 'Шаҳрисабз шаҳри', 'Город Шахрисабз'),
(225, 5, 'Ko‘kdala tumani', 'Кўкдала тумани', 'Кукдалинский район');

-- Admin
CREATE TABLE admin (
    id bigserial PRIMARY KEY NOT NULL UNIQUE,
    login varchar(500) NOT NULL UNIQUE,
    email varchar(500) NOT NULL UNIQUE,
    password varchar(500) NOT NULL,

    firstname varchar(500),
    lastname varchar(500),

    viloyat_id integer,
    FOREIGN KEY (viloyat_id) REFERENCES viloyat (id),
    tuman_id integer,
    FOREIGN KEY (tuman_id) REFERENCES tuman (id),

    profil_url varchar(500),

    state boolean DEFAULT true,
    created_at timestamp DEFAULT current_timestamp,  
    active boolean DEFAULT true,
    struct boolean DEFAULT true,
    lastseen timestamp
);

-- Insert first admin
insert into admin (login, email, password) values 
('jamshid14092002', 'jamshid14092002@gmail.com', '$2b$10$FfHyDJiiyC2ZUTULho4IJu86hNGkaXv4u/4uyx8exWqoGyFbmmr8O');

-- Error table
Create table errors (
id bigserial primary key unique not null,
message varchar(500),
name varchar(1000),
stack varchar(1500),
time timestamp default current_timestamp
);