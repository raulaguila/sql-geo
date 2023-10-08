---
--- Estrutura da tabela "geo_timezones"
---
DROP TABLE IF EXISTS "geo_timezones";

CREATE TABLE geo_timezones(
    id bigserial NOT NULL,
    created_at timestamptz DEFAULT NULL,
	updated_at timestamptz DEFAULT NULL,
    "name" varchar(60) NOT NULL,
    gmt varchar(10) NOT NULL,
    /* Keys */
    CONSTRAINT timezone_name_unique UNIQUE (name),
    CONSTRAINT timezone_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE geo_timezones IS 'Timezones';

---
--- Inserindo dados na tabela "geo_timezones"
---
INSERT INTO
    "geo_timezones"(id, name, gmt)
VALUES
    (1, 'Africa/Abidjan', 'UTC'),
    (2, 'Africa/Accra', 'UTC'),
    (3, 'Africa/Addis_Ababa', 'UTC +03:00'),
    (4, 'Africa/Algiers', 'UTC +01:00'),
    (5, 'Africa/Asmara', 'UTC +03:00'),
    (6, 'Africa/Bamako', 'UTC'),
    (7, 'Africa/Bangui', 'UTC +01:00'),
    (8, 'Africa/Banjul', 'UTC'),
    (9, 'Africa/Bissau', 'UTC'),
    (10, 'Africa/Blantyre', 'UTC +02:00'),
    (11, 'Africa/Brazzaville', 'UTC +01:00'),
    (12, 'Africa/Bujumbura', 'UTC +02:00'),
    (13, 'Africa/Cairo', 'UTC +03:00'),
    (14, 'Africa/Casablanca', 'UTC +01:00'),
    (15, 'Africa/Ceuta', 'UTC +02:00'),
    (16, 'Africa/Conakry', 'UTC'),
    (17, 'Africa/Dakar', 'UTC'),
    (18, 'Africa/Dar_es_Salaam', 'UTC +03:00'),
    (19, 'Africa/Djibouti', 'UTC +03:00'),
    (20, 'Africa/Douala', 'UTC +01:00'),
    (21, 'Africa/El_Aaiun', 'UTC +01:00'),
    (22, 'Africa/Freetown', 'UTC'),
    (23, 'Africa/Gaborone', 'UTC +02:00'),
    (24, 'Africa/Harare', 'UTC +02:00'),
    (25, 'Africa/Johannesburg', 'UTC +02:00'),
    (26, 'Africa/Juba', 'UTC +02:00'),
    (27, 'Africa/Kampala', 'UTC +03:00'),
    (28, 'Africa/Khartoum', 'UTC +02:00'),
    (29, 'Africa/Kigali', 'UTC +02:00'),
    (30, 'Africa/Kinshasa', 'UTC +01:00'),
    (31, 'Africa/Lagos', 'UTC +01:00'),
    (32, 'Africa/Libreville', 'UTC +01:00'),
    (33, 'Africa/Lome', 'UTC'),
    (34, 'Africa/Luanda', 'UTC +01:00'),
    (35, 'Africa/Lubumbashi', 'UTC +02:00'),
    (36, 'Africa/Lusaka', 'UTC +02:00'),
    (37, 'Africa/Malabo', 'UTC +01:00'),
    (38, 'Africa/Maputo', 'UTC +02:00'),
    (39, 'Africa/Maseru', 'UTC +02:00'),
    (40, 'Africa/Mbabane', 'UTC +02:00'),
    (41, 'Africa/Mogadishu', 'UTC +03:00'),
    (42, 'Africa/Monrovia', 'UTC'),
    (43, 'Africa/Nairobi', 'UTC +03:00'),
    (44, 'Africa/Ndjamena', 'UTC +01:00'),
    (45, 'Africa/Niamey', 'UTC +01:00'),
    (46, 'Africa/Nouakchott', 'UTC'),
    (47, 'Africa/Ouagadougou', 'UTC'),
    (48, 'Africa/Porto-Novo', 'UTC +01:00'),
    (49, 'Africa/Sao_Tome', 'UTC'),
    (50, 'Africa/Tripoli', 'UTC +02:00'),
    (51, 'Africa/Tunis', 'UTC +01:00'),
    (52, 'Africa/Windhoek', 'UTC +02:00'),
    (53, 'America/Adak', 'UTC -09:00'),
    (54, 'America/Anchorage', 'UTC -08:00'),
    (55, 'America/Anguilla', 'UTC -04:00'),
    (56, 'America/Antigua', 'UTC -04:00'),
    (57, 'America/Araguaina', 'UTC -03:00'),
    (58, 'America/Argentina/Buenos_Aires', 'UTC -03:00'),
    (59, 'America/Argentina/Catamarca', 'UTC -03:00'),
    (60, 'America/Argentina/Cordoba', 'UTC -03:00'),
    (61, 'America/Argentina/Jujuy', 'UTC -03:00'),
    (62, 'America/Argentina/La_Rioja', 'UTC -03:00'),
    (63, 'America/Argentina/Mendoza', 'UTC -03:00'),
    (64, 'America/Argentina/Rio_Gallegos', 'UTC -03:00'),
    (65, 'America/Argentina/Salta', 'UTC -03:00'),
    (66, 'America/Argentina/San_Juan', 'UTC -03:00'),
    (67, 'America/Argentina/San_Luis', 'UTC -03:00'),
    (68, 'America/Argentina/Tucuman', 'UTC -03:00'),
    (69, 'America/Argentina/Ushuaia', 'UTC -03:00'),
    (70, 'America/Aruba', 'UTC -04:00'),
    (71, 'America/Asuncion', 'UTC -03:00'),
    (72, 'America/Atikokan', 'UTC -05:00'),
    (73, 'America/Bahia', 'UTC -03:00'),
    (74, 'America/Bahia_Banderas', 'UTC -06:00'),
    (75, 'America/Barbados', 'UTC -04:00'),
    (76, 'America/Belem', 'UTC -03:00'),
    (77, 'America/Belize', 'UTC -06:00'),
    (78, 'America/Blanc-Sablon', 'UTC -04:00'),
    (79, 'America/Boa_Vista', 'UTC -04:00'),
    (80, 'America/Bogota', 'UTC -05:00'),
    (81, 'America/Boise', 'UTC -06:00'),
    (82, 'America/Cambridge_Bay', 'UTC -06:00'),
    (83, 'America/Campo_Grande', 'UTC -04:00'),
    (84, 'America/Cancun', 'UTC -05:00'),
    (85, 'America/Caracas', 'UTC -04:00'),
    (86, 'America/Cayenne', 'UTC -03:00'),
    (87, 'America/Cayman', 'UTC -05:00'),
    (88, 'America/Chicago', 'UTC -05:00'),
    (89, 'America/Chihuahua', 'UTC -06:00'),
    (90, 'America/Ciudad_Juarez', 'UTC -06:00'),
    (91, 'America/Costa_Rica', 'UTC -06:00'),
    (92, 'America/Creston', 'UTC -07:00'),
    (93, 'America/Cuiaba', 'UTC -04:00'),
    (94, 'America/Curacao', 'UTC -04:00'),
    (95, 'America/Danmarkshavn', 'UTC'),
    (96, 'America/Dawson', 'UTC -07:00'),
    (97, 'America/Dawson_Creek', 'UTC -07:00'),
    (98, 'America/Denver', 'UTC -06:00'),
    (99, 'America/Detroit', 'UTC -04:00'),
    (100, 'America/Dominica', 'UTC -04:00'),
    (101, 'America/Edmonton', 'UTC -06:00'),
    (102, 'America/Eirunepe', 'UTC -05:00'),
    (103, 'America/El_Salvador', 'UTC -06:00'),
    (104, 'America/Fort_Nelson', 'UTC -07:00'),
    (105, 'America/Fortaleza', 'UTC -03:00'),
    (106, 'America/Glace_Bay', 'UTC -03:00'),
    (107, 'America/Goose_Bay', 'UTC -03:00'),
    (108, 'America/Grand_Turk', 'UTC -04:00'),
    (109, 'America/Grenada', 'UTC -04:00'),
    (110, 'America/Guadeloupe', 'UTC -04:00'),
    (111, 'America/Guatemala', 'UTC -06:00'),
    (112, 'America/Guayaquil', 'UTC -05:00'),
    (113, 'America/Guyana', 'UTC -04:00'),
    (114, 'America/Halifax', 'UTC -03:00'),
    (115, 'America/Havana', 'UTC -04:00'),
    (116, 'America/Hermosillo', 'UTC -07:00'),
    (117, 'America/Indiana/Indianapolis', 'UTC -04:00'),
    (118, 'America/Indiana/Knox', 'UTC -05:00'),
    (119, 'America/Indiana/Marengo', 'UTC -04:00'),
    (120, 'America/Indiana/Petersburg', 'UTC -04:00'),
    (121, 'America/Indiana/Tell_City', 'UTC -05:00'),
    (122, 'America/Indiana/Vevay', 'UTC -04:00'),
    (123, 'America/Indiana/Vincennes', 'UTC -04:00'),
    (124, 'America/Indiana/Winamac', 'UTC -04:00'),
    (125, 'America/Inuvik', 'UTC -06:00'),
    (126, 'America/Iqaluit', 'UTC -04:00'),
    (127, 'America/Jamaica', 'UTC -05:00'),
    (128, 'America/Juneau', 'UTC -08:00'),
    (129, 'America/Kentucky/Louisville', 'UTC -04:00'),
    (130, 'America/Kentucky/Monticello', 'UTC -04:00'),
    (131, 'America/Kralendijk', 'UTC -04:00'),
    (132, 'America/La_Paz', 'UTC -04:00'),
    (133, 'America/Lima', 'UTC -05:00'),
    (134, 'America/Los_Angeles', 'UTC -07:00'),
    (135, 'America/Lower_Princes', 'UTC -04:00'),
    (136, 'America/Maceio', 'UTC -03:00'),
    (137, 'America/Managua', 'UTC -06:00'),
    (138, 'America/Manaus', 'UTC -04:00'),
    (139, 'America/Marigot', 'UTC -04:00'),
    (140, 'America/Martinique', 'UTC -04:00'),
    (141, 'America/Matamoros', 'UTC -05:00'),
    (142, 'America/Mazatlan', 'UTC -07:00'),
    (143, 'America/Menominee', 'UTC -05:00'),
    (144, 'America/Merida', 'UTC -06:00'),
    (145, 'America/Metlakatla', 'UTC -08:00'),
    (146, 'America/Mexico_City', 'UTC -06:00'),
    (147, 'America/Miquelon', 'UTC -02:00'),
    (148, 'America/Moncton', 'UTC -03:00'),
    (149, 'America/Monterrey', 'UTC -06:00'),
    (150, 'America/Montevideo', 'UTC -03:00'),
    (151, 'America/Montserrat', 'UTC -04:00'),
    (152, 'America/Nassau', 'UTC -04:00'),
    (153, 'America/New_York', 'UTC -04:00'),
    (154, 'America/Nome', 'UTC -08:00'),
    (155, 'America/Noronha', 'UTC -02:00'),
    (156, 'America/North_Dakota/Beulah', 'UTC -05:00'),
    (157, 'America/North_Dakota/Center', 'UTC -05:00'),
    (158, 'America/North_Dakota/New_Salem', 'UTC -05:00'),
    (159, 'America/Nuuk', 'UTC -02:00'),
    (160, 'America/Ojinaga', 'UTC -05:00'),
    (161, 'America/Panama', 'UTC -05:00'),
    (162, 'America/Paramaribo', 'UTC -03:00'),
    (163, 'America/Phoenix', 'UTC -07:00'),
    (164, 'America/Port-au-Prince', 'UTC -04:00'),
    (165, 'America/Port_of_Spain', 'UTC -04:00'),
    (166, 'America/Porto_Velho', 'UTC -04:00'),
    (167, 'America/Puerto_Rico', 'UTC -04:00'),
    (168, 'America/Punta_Arenas', 'UTC -03:00'),
    (169, 'America/Rankin_Inlet', 'UTC -05:00'),
    (170, 'America/Recife', 'UTC -03:00'),
    (171, 'America/Regina', 'UTC -06:00'),
    (172, 'America/Resolute', 'UTC -05:00'),
    (173, 'America/Rio_Branco', 'UTC -05:00'),
    (174, 'America/Santarem', 'UTC -03:00'),
    (175, 'America/Santiago', 'UTC -03:00'),
    (176, 'America/Santo_Domingo', 'UTC -04:00'),
    (177, 'America/Sao_Paulo', 'UTC -03:00'),
    (178, 'America/Scoresbysund', 'UTC'),
    (179, 'America/Sitka', 'UTC -08:00'),
    (180, 'America/St_Barthelemy', 'UTC -04:00'),
    (181, 'America/St_Johns', 'UTC -02:30'),
    (182, 'America/St_Kitts', 'UTC -04:00'),
    (183, 'America/St_Lucia', 'UTC -04:00'),
    (184, 'America/St_Thomas', 'UTC -04:00'),
    (185, 'America/St_Vincent', 'UTC -04:00'),
    (186, 'America/Swift_Current', 'UTC -06:00'),
    (187, 'America/Tegucigalpa', 'UTC -06:00'),
    (188, 'America/Thule', 'UTC -03:00'),
    (189, 'America/Tijuana', 'UTC -07:00'),
    (190, 'America/Toronto', 'UTC -04:00'),
    (191, 'America/Tortola', 'UTC -04:00'),
    (192, 'America/Vancouver', 'UTC -07:00'),
    (193, 'America/Whitehorse', 'UTC -07:00'),
    (194, 'America/Winnipeg', 'UTC -05:00'),
    (195, 'America/Yakutat', 'UTC -08:00'),
    (196, 'Antarctica/Casey', 'UTC +11:00'),
    (197, 'Antarctica/Davis', 'UTC +07:00'),
    (198, 'Antarctica/DumontDUrville', 'UTC +10:00'),
    (199, 'Antarctica/Macquarie', 'UTC +11:00'),
    (200, 'Antarctica/Mawson', 'UTC +05:00'),
    (201, 'Antarctica/McMurdo', 'UTC +13:00'),
    (202, 'Antarctica/Palmer', 'UTC -03:00'),
    (203, 'Antarctica/Rothera', 'UTC -03:00'),
    (204, 'Antarctica/Syowa', 'UTC +03:00'),
    (205, 'Antarctica/Troll', 'UTC +02:00'),
    (206, 'Antarctica/Vostok', 'UTC +06:00'),
    (207, 'Arctic/Longyearbyen', 'UTC +02:00'),
    (208, 'Asia/Aden', 'UTC +03:00'),
    (209, 'Asia/Almaty', 'UTC +06:00'),
    (210, 'Asia/Amman', 'UTC +03:00'),
    (211, 'Asia/Anadyr', 'UTC +12:00'),
    (212, 'Asia/Aqtau', 'UTC +05:00'),
    (213, 'Asia/Aqtobe', 'UTC +05:00'),
    (214, 'Asia/Ashgabat', 'UTC +05:00'),
    (215, 'Asia/Atyrau', 'UTC +05:00'),
    (216, 'Asia/Baghdad', 'UTC +03:00'),
    (217, 'Asia/Bahrain', 'UTC +03:00'),
    (218, 'Asia/Baku', 'UTC +04:00'),
    (219, 'Asia/Bangkok', 'UTC +07:00'),
    (220, 'Asia/Barnaul', 'UTC +07:00'),
    (221, 'Asia/Beirut', 'UTC +03:00'),
    (222, 'Asia/Bishkek', 'UTC +06:00'),
    (223, 'Asia/Brunei', 'UTC +08:00'),
    (224, 'Asia/Chita', 'UTC +09:00'),
    (225, 'Asia/Choibalsan', 'UTC +08:00'),
    (226, 'Asia/Colombo', 'UTC +05:30'),
    (227, 'Asia/Damascus', 'UTC +03:00'),
    (228, 'Asia/Dhaka', 'UTC +06:00'),
    (229, 'Asia/Dili', 'UTC +09:00'),
    (230, 'Asia/Dubai', 'UTC +04:00'),
    (231, 'Asia/Dushanbe', 'UTC +05:00'),
    (232, 'Asia/Famagusta', 'UTC +03:00'),
    (233, 'Asia/Gaza', 'UTC +03:00'),
    (234, 'Asia/Hebron', 'UTC +03:00'),
    (235, 'Asia/Ho_Chi_Minh', 'UTC +07:00'),
    (236, 'Asia/Hong_Kong', 'UTC +08:00'),
    (237, 'Asia/Hovd', 'UTC +07:00'),
    (238, 'Asia/Irkutsk', 'UTC +08:00'),
    (239, 'Asia/Jakarta', 'UTC +07:00'),
    (240, 'Asia/Jayapura', 'UTC +09:00'),
    (241, 'Asia/Jerusalem', 'UTC +03:00'),
    (242, 'Asia/Kabul', 'UTC +04:30'),
    (243, 'Asia/Kamchatka', 'UTC +12:00'),
    (244, 'Asia/Karachi', 'UTC +05:00'),
    (245, 'Asia/Kathmandu', 'UTC +05:45'),
    (246, 'Asia/Khandyga', 'UTC +09:00'),
    (247, 'Asia/Kolkata', 'UTC +05:30'),
    (248, 'Asia/Krasnoyarsk', 'UTC +07:00'),
    (249, 'Asia/Kuala_Lumpur', 'UTC +08:00'),
    (250, 'Asia/Kuching', 'UTC +08:00'),
    (251, 'Asia/Kuwait', 'UTC +03:00'),
    (252, 'Asia/Macau', 'UTC +08:00'),
    (253, 'Asia/Magadan', 'UTC +11:00'),
    (254, 'Asia/Makassar', 'UTC +08:00'),
    (255, 'Asia/Manila', 'UTC +08:00'),
    (256, 'Asia/Muscat', 'UTC +04:00'),
    (257, 'Asia/Nicosia', 'UTC +03:00'),
    (258, 'Asia/Novokuznetsk', 'UTC +07:00'),
    (259, 'Asia/Novosibirsk', 'UTC +07:00'),
    (260, 'Asia/Omsk', 'UTC +06:00'),
    (261, 'Asia/Oral', 'UTC +05:00'),
    (262, 'Asia/Phnom_Penh', 'UTC +07:00'),
    (263, 'Asia/Pontianak', 'UTC +07:00'),
    (264, 'Asia/Pyongyang', 'UTC +09:00'),
    (265, 'Asia/Qatar', 'UTC +03:00'),
    (266, 'Asia/Qostanay', 'UTC +06:00'),
    (267, 'Asia/Qyzylorda', 'UTC +05:00'),
    (268, 'Asia/Riyadh', 'UTC +03:00'),
    (269, 'Asia/Sakhalin', 'UTC +11:00'),
    (270, 'Asia/Samarkand', 'UTC +05:00'),
    (271, 'Asia/Seoul', 'UTC +09:00'),
    (272, 'Asia/Shanghai', 'UTC +08:00'),
    (273, 'Asia/Singapore', 'UTC +08:00'),
    (274, 'Asia/Srednekolymsk', 'UTC +11:00'),
    (275, 'Asia/Taipei', 'UTC +08:00'),
    (276, 'Asia/Tashkent', 'UTC +05:00'),
    (277, 'Asia/Tbilisi', 'UTC +04:00'),
    (278, 'Asia/Tehran', 'UTC +03:30'),
    (279, 'Asia/Thimphu', 'UTC +06:00'),
    (280, 'Asia/Tokyo', 'UTC +09:00'),
    (281, 'Asia/Tomsk', 'UTC +07:00'),
    (282, 'Asia/Ulaanbaatar', 'UTC +08:00'),
    (283, 'Asia/Urumqi', 'UTC +06:00'),
    (284, 'Asia/Ust-Nera', 'UTC +10:00'),
    (285, 'Asia/Vientiane', 'UTC +07:00'),
    (286, 'Asia/Vladivostok', 'UTC +10:00'),
    (287, 'Asia/Yakutsk', 'UTC +09:00'),
    (288, 'Asia/Yangon', 'UTC +06:30'),
    (289, 'Asia/Yekaterinburg', 'UTC +05:00'),
    (290, 'Asia/Yerevan', 'UTC +04:00'),
    (291, 'Atlantic/Azores', 'UTC'),
    (292, 'Atlantic/Bermuda', 'UTC -03:00'),
    (293, 'Atlantic/Canary', 'UTC +01:00'),
    (294, 'Atlantic/Cape_Verde', 'UTC -01:00'),
    (295, 'Atlantic/Faroe', 'UTC +01:00'),
    (296, 'Atlantic/Madeira', 'UTC +01:00'),
    (297, 'Atlantic/Reykjavik', 'UTC'),
    (298, 'Atlantic/South_Georgia', 'UTC -02:00'),
    (299, 'Atlantic/St_Helena', 'UTC'),
    (300, 'Atlantic/Stanley', 'UTC -03:00'),
    (301, 'Australia/Adelaide', 'UTC +10:30'),
    (302, 'Australia/Brisbane', 'UTC +10:00'),
    (303, 'Australia/Broken_Hill', 'UTC +10:30'),
    (304, 'Australia/Darwin', 'UTC +09:30'),
    (305, 'Australia/Eucla', 'UTC +08:45'),
    (306, 'Australia/Hobart', 'UTC +11:00'),
    (307, 'Australia/Lindeman', 'UTC +10:00'),
    (308, 'Australia/Lord_Howe', 'UTC +11:00'),
    (309, 'Australia/Melbourne', 'UTC +11:00'),
    (310, 'Australia/Perth', 'UTC +08:00'),
    (311, 'Australia/Sydney', 'UTC +11:00'),
    (312, 'Europe/Amsterdam', 'UTC +02:00'),
    (313, 'Europe/Andorra', 'UTC +02:00'),
    (314, 'Europe/Astrakhan', 'UTC +04:00'),
    (315, 'Europe/Athens', 'UTC +03:00'),
    (316, 'Europe/Belgrade', 'UTC +02:00'),
    (317, 'Europe/Berlin', 'UTC +02:00'),
    (318, 'Europe/Bratislava', 'UTC +02:00'),
    (319, 'Europe/Brussels', 'UTC +02:00'),
    (320, 'Europe/Bucharest', 'UTC +03:00'),
    (321, 'Europe/Budapest', 'UTC +02:00'),
    (322, 'Europe/Busingen', 'UTC +02:00'),
    (323, 'Europe/Chisinau', 'UTC +03:00'),
    (324, 'Europe/Copenhagen', 'UTC +02:00'),
    (325, 'Europe/Dublin', 'UTC +01:00'),
    (326, 'Europe/Gibraltar', 'UTC +02:00'),
    (327, 'Europe/Guernsey', 'UTC +01:00'),
    (328, 'Europe/Helsinki', 'UTC +03:00'),
    (329, 'Europe/Isle_of_Man', 'UTC +01:00'),
    (330, 'Europe/Istanbul', 'UTC +03:00'),
    (331, 'Europe/Jersey', 'UTC +01:00'),
    (332, 'Europe/Kaliningrad', 'UTC +02:00'),
    (333, 'Europe/Kirov', 'UTC +03:00'),
    (334, 'Europe/Kyiv', 'UTC +03:00'),
    (335, 'Europe/Lisbon', 'UTC +01:00'),
    (336, 'Europe/Ljubljana', 'UTC +02:00'),
    (337, 'Europe/London', 'UTC +01:00'),
    (338, 'Europe/Luxembourg', 'UTC +02:00'),
    (339, 'Europe/Madrid', 'UTC +02:00'),
    (340, 'Europe/Malta', 'UTC +02:00'),
    (341, 'Europe/Mariehamn', 'UTC +03:00'),
    (342, 'Europe/Minsk', 'UTC +03:00'),
    (343, 'Europe/Monaco', 'UTC +02:00'),
    (344, 'Europe/Moscow', 'UTC +03:00'),
    (345, 'Europe/Oslo', 'UTC +02:00'),
    (346, 'Europe/Paris', 'UTC +02:00'),
    (347, 'Europe/Podgorica', 'UTC +02:00'),
    (348, 'Europe/Prague', 'UTC +02:00'),
    (349, 'Europe/Riga', 'UTC +03:00'),
    (350, 'Europe/Rome', 'UTC +02:00'),
    (351, 'Europe/Samara', 'UTC +04:00'),
    (352, 'Europe/San_Marino', 'UTC +02:00'),
    (353, 'Europe/Sarajevo', 'UTC +02:00'),
    (354, 'Europe/Saratov', 'UTC +04:00'),
    (355, 'Europe/Simferopol', 'UTC +03:00'),
    (356, 'Europe/Skopje', 'UTC +02:00'),
    (357, 'Europe/Sofia', 'UTC +03:00'),
    (358, 'Europe/Stockholm', 'UTC +02:00'),
    (359, 'Europe/Tallinn', 'UTC +03:00'),
    (360, 'Europe/Tirane', 'UTC +02:00'),
    (361, 'Europe/Ulyanovsk', 'UTC +04:00'),
    (362, 'Europe/Vaduz', 'UTC +02:00'),
    (363, 'Europe/Vatican', 'UTC +02:00'),
    (364, 'Europe/Vienna', 'UTC +02:00'),
    (365, 'Europe/Vilnius', 'UTC +03:00'),
    (366, 'Europe/Volgograd', 'UTC +03:00'),
    (367, 'Europe/Warsaw', 'UTC +02:00'),
    (368, 'Europe/Zagreb', 'UTC +02:00'),
    (369, 'Europe/Zurich', 'UTC +02:00'),
    (370, 'Indian/Antananarivo', 'UTC +03:00'),
    (371, 'Indian/Chagos', 'UTC +06:00'),
    (372, 'Indian/Christmas', 'UTC +07:00'),
    (373, 'Indian/Cocos', 'UTC +06:30'),
    (374, 'Indian/Comoro', 'UTC +03:00'),
    (375, 'Indian/Kerguelen', 'UTC +05:00'),
    (376, 'Indian/Mahe', 'UTC +04:00'),
    (377, 'Indian/Maldives', 'UTC +05:00'),
    (378, 'Indian/Mauritius', 'UTC +04:00'),
    (379, 'Indian/Mayotte', 'UTC +03:00'),
    (380, 'Indian/Reunion', 'UTC +04:00'),
    (381, 'Pacific/Apia', 'UTC +13:00'),
    (382, 'Pacific/Auckland', 'UTC +13:00'),
    (383, 'Pacific/Bougainville', 'UTC +11:00'),
    (384, 'Pacific/Chatham', 'UTC +13:45'),
    (385, 'Pacific/Chuuk', 'UTC +10:00'),
    (386, 'Pacific/Easter', 'UTC -05:00'),
    (387, 'Pacific/Efate', 'UTC +11:00'),
    (388, 'Pacific/Fakaofo', 'UTC +13:00'),
    (389, 'Pacific/Fiji', 'UTC +12:00'),
    (390, 'Pacific/Funafuti', 'UTC +12:00'),
    (391, 'Pacific/Galapagos', 'UTC -06:00'),
    (392, 'Pacific/Gambier', 'UTC -09:00'),
    (393, 'Pacific/Guadalcanal', 'UTC +11:00'),
    (394, 'Pacific/Guam', 'UTC +10:00'),
    (395, 'Pacific/Honolulu', 'UTC -10:00'),
    (396, 'Pacific/Kanton', 'UTC +13:00'),
    (397, 'Pacific/Kiritimati', 'UTC +14:00'),
    (398, 'Pacific/Kosrae', 'UTC +11:00'),
    (399, 'Pacific/Kwajalein', 'UTC +12:00'),
    (400, 'Pacific/Majuro', 'UTC +12:00'),
    (401, 'Pacific/Marquesas', 'UTC -09:30'),
    (402, 'Pacific/Midway', 'UTC -11:00'),
    (403, 'Pacific/Nauru', 'UTC +12:00'),
    (404, 'Pacific/Niue', 'UTC -11:00'),
    (405, 'Pacific/Norfolk', 'UTC +12:00'),
    (406, 'Pacific/Noumea', 'UTC +11:00'),
    (407, 'Pacific/Pago_Pago', 'UTC -11:00'),
    (408, 'Pacific/Palau', 'UTC +09:00'),
    (409, 'Pacific/Pitcairn', 'UTC -08:00'),
    (410, 'Pacific/Pohnpei', 'UTC +11:00'),
    (411, 'Pacific/Port_Moresby', 'UTC +10:00'),
    (412, 'Pacific/Rarotonga', 'UTC -10:00'),
    (413, 'Pacific/Saipan', 'UTC +10:00'),
    (414, 'Pacific/Tahiti', 'UTC -10:00'),
    (415, 'Pacific/Tarawa', 'UTC +12:00'),
    (416, 'Pacific/Tongatapu', 'UTC +13:00'),
    (417, 'Pacific/Wake', 'UTC +12:00'),
    (418, 'Pacific/Wallis', 'UTC +12:00');