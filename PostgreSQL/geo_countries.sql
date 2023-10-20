---
--- Estrutura da tabela "geo_countries"
---
DROP TABLE IF EXISTS "geo_countries";

CREATE TABLE geo_countries(
    id bigserial NOT NULL,
    created_at timestamptz DEFAULT NULL,
    updated_at timestamptz DEFAULT NULL,
    "name" varchar(60) NOT NULL,
    iso2 varchar(2) NOT NULL,
    iso3 varchar(3) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    continent_id bigint NOT NULL,
    /* Keys */
    CONSTRAINT country_continent_fk FOREIGN KEY (continent_id) REFERENCES geo_continents(id),
    CONSTRAINT country_name_unique UNIQUE (name),
    CONSTRAINT country_iso2_unique UNIQUE (iso2),
    CONSTRAINT country_iso3_unique UNIQUE (iso3),
    CONSTRAINT country_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE geo_countries IS 'Países';

COMMENT ON COLUMN geo_countries.iso2 IS 'ISO 3166-1 Alpha-2';
COMMENT ON COLUMN geo_countries.iso3 IS 'ISO 3166-1 Alpha-3';

---
--- Inserindo dados na tabela "geo_countries"
---
INSERT INTO
    "geo_countries"(id, name, iso2, iso3, latitude, longitude, continent_id)
VALUES
    (1, 'Afghanistan', 'AF', 'AFG', 33.93911, 67.709953, 3),
    (2, 'Albania', 'AL', 'ALB', 41.153332, 20.168331, 5),
    (3, 'Algeria', 'DZ', 'DZA', 28.033886, 1.659626, 1),
    (4, 'American Samoa', 'AS', 'ASM', -14.270972, -170.132217, 7),
    (5, 'Andorra', 'AD', 'AND', 42.546245, 1.601554, 5),
    (6, 'Angola', 'AO', 'AGO', -11.202692, 17.873887, 1),
    (7, 'Anguilla', 'AI', 'AIA', 18.220554, -63.068615, 6),
    (8, 'Antarctica', 'AQ', 'ATA', -75.250973, -0.071389, 2),
    (9, 'Antigua and Barbuda', 'AG', 'ATG', 17.060816, -61.796428, 6),
    (10, 'Argentina', 'AR', 'ARG', -38.416097, -63.616672, 8),
    (11, 'Armenia', 'AM', 'ARM', 40.069099, 45.038189, 3),
    (12, 'Aruba', 'AW', 'ABW', 12.52111, -69.968338, 8),
    (13, 'Australia', 'AU', 'AUS', -25.274398, 133.775136, 7),
    (14, 'Austria', 'AT', 'AUT', 47.516231, 14.550072, 5),
    (15, 'Azerbaijan', 'AZ', 'AZE', 40.143105, 47.576927, 3),
    (16, 'Bahamas', 'BS', 'BHS', 25.03428, -77.39628, 6),
    (17, 'Bahrain', 'BH', 'BHR', 25.930414, 50.637772, 3),
    (18, 'Bangladesh', 'BD', 'BGD', 23.684994, 90.356331, 3),
    (19, 'Barbados', 'BB', 'BRB', 13.193887, -59.543198, 6),
    (20, 'Belarus', 'BY', 'BLR', 53.709807, 27.953389, 5),
    (21, 'Belgium', 'BE', 'BEL', 50.503887, 4.469936, 5),
    (22, 'Belize', 'BZ', 'BLZ', 17.189877, -88.49765, 4),
    (23, 'Benin', 'BJ', 'BEN', 9.30769, 2.315834, 1),
    (24, 'Bermuda', 'BM', 'BMU', 32.321384, -64.75737, 6),
    (25, 'Bhutan', 'BT', 'BTN', 27.514162, 90.433601, 3),
    (26, 'Bolivia', 'BO', 'BOL', -16.290154, -63.588653, 8),
    (27, 'Bosnia and Herzegovina', 'BA', 'BIH', 43.915886, 17.679076, 5),
    (28, 'Botswana', 'BW', 'BWA', -22.328474, 24.684866, 1),
    (29, 'Bouvet Island', 'BV', 'BVT', -54.423199, 3.413194, 1),
    (30, 'Brazil', 'BR', 'BRA', -14.235004, -51.92528, 8),
    (31, 'British Indian Ocean Territory', 'IO', 'IOT', -6.343194, 71.876519, 3),
    (32, 'British Virgin Islands', 'VG', 'VGB', 18.420695, -64.639968, 3),
    (33, 'Brunei', 'BN', 'BRN', 4.535277, 114.727669, 3),
    (34, 'Bulgaria', 'BG', 'BGR', 42.733883, 25.48583, 5),
    (35, 'Burkina Faso', 'BF', 'BFA', 12.238333, -1.561593, 1),
    (36, 'Burundi', 'BI', 'BDI', -3.373056, 29.918886, 1),
    (37, 'Cambodia', 'KH', 'KHM', 12.565679, 104.990963, 3),
    (38, 'Cameroon', 'CM', 'CMR', 7.369722, 12.354722, 1),
    (39, 'Canada', 'CA', 'CAN', 56.130366, -106.346771, 6),
    (40, 'Cape Verde', 'CV', 'CPV', 16.002082, -24.013197, 1),
    (41, 'Cayman Islands', 'KY', 'CYM', 19.513469, -80.566956, 6),
    (42, 'Central African Republic', 'CF', 'CAF', 6.611111, 20.939444, 1),
    (43, 'Chad', 'TD', 'TCD', 15.454166, 18.732207, 1),
    (44, 'Chile', 'CL', 'CHL', -35.675147, -71.542969, 8),
    (45, 'China', 'CN', 'CHN', 35.86166, 104.195397, 3),
    (46, 'Christmas Island', 'CX', 'CXR', -10.447525, 105.690449, 7),
    (47, 'Cocos [Keeling] Islands', 'CC', 'CCK', -12.164165, 96.870956, 7),
    (48, 'Colombia', 'CO', 'COL', 4.570868, -74.297333, 8),
    (49, 'Comoros', 'KM', 'COM', -11.875001, 43.872219, 1),
    (50, 'Congo [DRC]', 'CD', 'COD', -4.038333, 21.758664, 1),
    (51, 'Congo [Republic]', 'CG', 'COG', -0.228021, 15.827659, 1),
    (52, 'Cook Islands', 'CK', 'COK', -21.236736, -159.777671, 7),
    (53, 'Costa Rica', 'CR', 'CRI', 9.748917, -83.753428, 4),
    (54, 'Croatia', 'HR', 'HRV', 45.1, 15.2, 5),
    (55, 'Cuba', 'CU', 'CUB', 21.521757, -77.781167, 6),
    (56, 'Cyprus', 'CY', 'CYP', 35.126413, 33.429859, 5),
    (57, 'Czech Republic', 'CZ', 'CZE', 49.817492, 15.472962, 5),
    (58, 'Côte d`Ivoire', 'CI', 'CIV', 7.539989, -5.54708, 1),
    (59, 'Denmark', 'DK', 'DNK', 56.26392, 9.501785, 5),
    (60, 'Djibouti', 'DJ', 'DJI', 11.825138, 42.590275, 1),
    (61, 'Dominica', 'DM', 'DMA', 15.414999, -61.370976, 6),
    (62, 'Dominican Republic', 'DO', 'DOM', 18.735693, -70.162651, 6),
    (63, 'Ecuador', 'EC', 'ECU', -1.831239, -78.183406, 8),
    (64, 'Egypt', 'EG', 'EGY', 26.820553, 30.802498, 1),
    (65, 'El Salvador', 'SV', 'SLV', 13.794185, -88.89653, 4),
    (66, 'Equatorial Guinea', 'GQ', 'GNQ', 1.650801, 10.267895, 1),
    (67, 'Eritrea', 'ER', 'ERI', 15.179384, 39.782334, 1),
    (68, 'Estonia', 'EE', 'EST', 58.595272, 25.013607, 5),
    (69, 'Ethiopia', 'ET', 'ETH', 9.145, 40.489673, 1),
    (70, 'Falkland Islands [Islas Malvinas]', 'FK', 'FLK', -51.796253, -59.523613, 8),
    (71, 'Faroe Islands', 'FO', 'FRO', 61.892635, -6.911806, 5),
    (72, 'Fiji', 'FJ', 'FJI', -16.578193, 179.414413, 7),
    (73, 'Finland', 'FI', 'FIN', 61.92411, 25.748151, 5),
    (74, 'France', 'FR', 'FRA', 46.227638, 2.213749, 5),
    (75, 'French Guiana', 'GF', 'GUF', 3.933889, -53.125782, 8),
    (76, 'French Polynesia', 'PF', 'PYF', -17.679742, -149.406843, 7),
    (77, 'French Southern Territories', 'TF', 'ATF', -49.280366, 69.348557, 2),
    (78, 'Gabon', 'GA', 'GAB', -0.803689, 11.609444, 1),
    (79, 'Gambia', 'GM', 'GMB', 13.443182, -15.310139, 1),
    (80, 'Gaza Strip', 'GZ', 'GZR', 31.354676, 34.308825, 1),
    (81, 'Georgia', 'GE', 'GEO', 42.315407, 43.356892, 3),
    (82, 'Germany', 'DE', 'DEU', 51.165691, 10.451526, 5),
    (83, 'Ghana', 'GH', 'GHA', 7.946527, -1.023194, 1),
    (84, 'Gibraltar', 'GI', 'GIB', 36.137741, -5.345374, 5),
    (85, 'Greece', 'GR', 'GRC', 39.074208, 21.824312, 5),
    (86, 'Greenland', 'GL', 'GRL', 71.706936, -42.604303, 6),
    (87, 'Grenada', 'GD', 'GRD', 12.262776, -61.604171, 6),
    (88, 'Guadeloupe', 'GP', 'GLP', 16.995971, -62.067641, 6),
    (89, 'Guam', 'GU', 'GUM', 13.444304, 144.793731, 7),
    (90, 'Guatemala', 'GT', 'GTM', 15.783471, -90.230759, 4),
    (91, 'Guernsey', 'GG', 'GGY', 49.465691, -2.585278, 5),
    (92, 'Guinea', 'GN', 'GIN', 9.945587, -9.696645, 1),
    (93, 'Guinea-Bissau', 'GW', 'GNB', 11.803749, -15.180413, 1),
    (94, 'Guyana', 'GY', 'GUY', 4.860416, -58.93018, 8),
    (95, 'Haiti', 'HT', 'HTI', 18.971187, -72.285215, 6),
    (96, 'Heard Island and McDonald Islands', 'HM', 'HMD', -53.08181, 73.504158, 7),
    (97, 'Honduras', 'HN', 'HND', 15.199999, -86.241905, 4),
    (98, 'Hong Kong', 'HK', 'HKG', 22.396428, 114.109497, 3),
    (99, 'Hungary', 'HU', 'HUN', 47.162494, 19.503304, 5),
    (100, 'Iceland', 'IS', 'ISL', 64.963051, -19.020835, 5),
    (101, 'India', 'IN', 'IND', 20.593684, 78.96288, 3),
    (102, 'Indonesia', 'ID', 'IDN', -0.789275, 113.921327, 3),
    (103, 'Iran', 'IR', 'IRN', 32.427908, 53.688046, 3),
    (104, 'Iraq', 'IQ', 'IRQ', 33.223191, 43.679291, 3),
    (105, 'Ireland', 'IE', 'IRL', 53.41291, -8.24389, 5),
    (106, 'Isle of Man', 'IM', 'IMN', 54.236107, -4.548056, 5),
    (107, 'Israel', 'IL', 'ISR', 31.046051, 34.851612, 3),
    (108, 'Italy', 'IT', 'ITA', 41.87194, 12.56738, 5),
    (109, 'Jamaica', 'JM', 'JAM', 18.109581, -77.297508, 6),
    (110, 'Japan', 'JP', 'JPN', 36.204824, 138.252924, 3),
    (111, 'Jersey', 'JE', 'JEY', 49.214439, -2.13125, 5),
    (112, 'Jordan', 'JO', 'JOR', 30.585164, 36.238414, 3),
    (113, 'Kazakhstan', 'KZ', 'KAZ', 48.019573, 66.923684, 3),
    (114, 'Kenya', 'KE', 'KEN', -0.023559, 37.906193, 1),
    (115, 'Kiribati', 'KI', 'KIR', -3.370417, -168.734039, 7),
    (116, 'Kosovo', 'XK', 'XXK', 42.602636, 20.902977, 5),
    (117, 'Kuwait', 'KW', 'KWT', 29.31166, 47.481766, 3),
    (118, 'Kyrgyzstan', 'KG', 'KGZ', 41.20438, 74.766098, 3),
    (119, 'Laos', 'LA', 'LAO', 19.85627, 102.495496, 3),
    (120, 'Latvia', 'LV', 'LVA', 56.879635, 24.603189, 5),
    (121, 'Lebanon', 'LB', 'LBN', 33.854721, 35.862285, 3),
    (122, 'Lesotho', 'LS', 'LSO', -29.609988, 28.233608, 1),
    (123, 'Liberia', 'LR', 'LBR', 6.428055, -9.429499, 1),
    (124, 'Libya', 'LY', 'LBY', 26.3351, 17.228331, 1),
    (125, 'Liechtenstein', 'LI', 'LIE', 47.166, 9.555373, 5),
    (126, 'Lithuania', 'LT', 'LTU', 55.169438, 23.881275, 5),
    (127, 'Luxembourg', 'LU', 'LUX', 49.815273, 6.129583, 5),
    (128, 'Macau', 'MO', 'MAC', 22.198745, 113.543873, 3),
    (129, 'Macedonia [FYROM]', 'MK', 'MKD', 41.608635, 21.745275, 5),
    (130, 'Madagascar', 'MG', 'MDG', -18.766947, 46.869107, 1),
    (131, 'Malawi', 'MW', 'MWI', -13.254308, 34.301525, 1),
    (132, 'Malaysia', 'MY', 'MYS', 4.210484, 101.975766, 3),
    (133, 'Maldives', 'MV', 'MDV', 3.202778, 73.22068, 3),
    (134, 'Mali', 'ML', 'MLI', 17.570692, -3.996166, 1),
    (135, 'Malta', 'MT', 'MLT', 35.937496, 14.375416, 5),
    (136, 'Marshall Islands', 'MH', 'MHL', 7.131474, 171.184478, 7),
    (137, 'Martinique', 'MQ', 'MTQ', 14.641528, -61.024174, 6),
    (138, 'Mauritania', 'MR', 'MRT', 21.00789, -10.940835, 1),
    (139, 'Mauritius', 'MU', 'MUS', -20.348404, 57.552152, 1),
    (140, 'Mayotte', 'YT', 'MYT', -12.8275, 45.166244, 1),
    (141, 'Mexico', 'MX', 'MEX', 23.634501, -102.552784, 4),
    (142, 'Micronesia', 'FM', 'FSM', 7.425554, 150.550812, 7),
    (143, 'Moldova', 'MD', 'MDA', 47.411631, 28.369885, 5),
    (144, 'Monaco', 'MC', 'MCO', 43.750298, 7.412841, 5),
    (145, 'Mongolia', 'MN', 'MNG', 46.862496, 103.846656, 3),
    (146, 'Montenegro', 'ME', 'MNE', 42.708678, 19.37439, 5),
    (147, 'Montserrat', 'MS', 'MSR', 16.742498, -62.187366, 6),
    (148, 'Morocco', 'MA', 'MAR', 31.791702, -7.09262, 1),
    (149, 'Mozambique', 'MZ', 'MOZ', -18.665695, 35.529562, 1),
    (150, 'Myanmar [Burma]', 'MM', 'MMR', 21.913965, 95.956223, 3),
    (151, 'Namibia', 'NA', 'NAM', -22.95764, 18.49041, 1),
    (152, 'Nauru', 'NR', 'NRU', -0.522778, 166.931503, 7),
    (153, 'Nepal', 'NP', 'NPL', 28.394857, 84.124008, 3),
    (154, 'Netherlands', 'NL', 'NLD', 52.132633, 5.291266, 5),
    (155, 'Netherlands Antilles', 'AN', 'ANT', 12.226079, -69.060087, 4),
    (156, 'New Caledonia', 'NC', 'NCL', -20.904305, 165.618042, 7),
    (157, 'New Zealand', 'NZ', 'NZL', -40.900557, 174.885971, 7),
    (158, 'Nicaragua', 'NI', 'NIC', 12.865416, -85.207229, 4),
    (159, 'Niger', 'NE', 'NER', 17.607789, 8.081666, 1),
    (160, 'Nigeria', 'NG', 'NGA', 9.081999, 8.675277, 1),
    (161, 'Niue', 'NU', 'NIU', -19.054445, -169.867233, 7),
    (162, 'Norfolk Island', 'NF', 'NFK', -29.040835, 167.954712, 7),
    (163, 'North Korea', 'KP', 'PRK', 40.339852, 127.510093, 3),
    (164, 'Northern Mariana Islands', 'MP', 'MNP', 17.33083, 145.38469, 7),
    (165, 'Norway', 'NO', 'NOR', 60.472024, 8.468946, 5),
    (166, 'Oman', 'OM', 'OMN', 21.512583, 55.923255, 3),
    (167, 'Pakistan', 'PK', 'PAK', 30.375321, 69.345116, 3),
    (168, 'Palau', 'PW', 'PLW', 7.51498, 134.58252, 7),
    (169, 'Palestinian Territories', 'PS', 'PSE', 31.952162, 35.233154, 3),
    (170, 'Panama', 'PA', 'PAN', 8.537981, -80.782127, 4),
    (171, 'Papua New Guinea', 'PG', 'PNG', -6.314993, 143.95555, 7),
    (172, 'Paraguay', 'PY', 'PRY', -23.442503, -58.443832, 8),
    (173, 'Peru', 'PE', 'PER', -9.189967, -75.015152, 8),
    (174, 'Philippines', 'PH', 'PHL', 12.879721, 121.774017, 3),
    (175, 'Pitcairn Islands', 'PN', 'PCN', -24.703615, -127.439308, 7),
    (176, 'Poland', 'PL', 'POL', 51.919438, 19.145136, 5),
    (177, 'Portugal', 'PT', 'PRT', 39.399872, -8.224454, 5),
    (178, 'Puerto Rico', 'PR', 'PRI', 18.220833, -66.590149, 6),
    (179, 'Qatar', 'QA', 'QAT', 25.354826, 51.183884, 3),
    (180, 'Romania', 'RO', 'ROU', 45.943161, 24.96676, 5),
    (181, 'Russia', 'RU', 'RUS', 61.52401, 105.318756, 5),
    (182, 'Rwanda', 'RW', 'RWA', -1.940278, 29.873888, 1),
    (183, 'Réunion', 'RE', 'REU', -21.115141, 55.536384, 1),
    (184, 'Saint Helena', 'SH', 'SHN', -24.143474, -10.030696, 1),
    (185, 'Saint Kitts and Nevis', 'KN', 'KNA', 17.357822, -62.782998, 6),
    (186, 'Saint Lucia', 'LC', 'LCA', 13.909444, -60.978893, 6),
    (187, 'Saint Pierre and Miquelon', 'PM', 'SPM', 46.941936, -56.27111, 6),
    (188, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 12.984305, -61.287228, 6),
    (189, 'Samoa', 'WS', 'WSM', -13.759029, -172.104629, 7),
    (190, 'San Marino', 'SM', 'SMR', 43.94236, 12.457777, 5),
    (191, 'Saudi Arabia', 'SA', 'SAU', 23.885942, 45.079162, 3),
    (192, 'Senegal', 'SN', 'SEN', 14.497401, -14.452362, 1),
    (193, 'Serbia', 'RS', 'SRB', 44.016521, 21.005859, 5),
    (194, 'Seychelles', 'SC', 'SYC', -4.679574, 55.491977, 1),
    (195, 'Sierra Leone', 'SL', 'SLE', 8.460555, -11.779889, 1),
    (196, 'Singapore', 'SG', 'SGP', 1.352083, 103.819836, 3),
    (197, 'Slovakia', 'SK', 'SVK', 48.669026, 19.699024, 5),
    (198, 'Slovenia', 'SI', 'SVN', 46.151241, 14.995463, 5),
    (199, 'Solomon Islands', 'SB', 'SLB', -9.64571, 160.156194, 7),
    (200, 'Somalia', 'SO', 'SOM', 5.152149, 46.199616, 1),
    (201, 'South Africa', 'ZA', 'ZAF', -30.559482, 22.937506, 1),
    (202, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', -54.429579, -36.587909, 8),
    (203, 'South Korea', 'KR', 'KOR', 35.907757, 127.766922, 3),
    (204, 'Spain', 'ES', 'ESP', 40.463667, -3.74922, 5),
    (205, 'Sri Lanka', 'LK', 'LKA', 7.873054, 80.771797, 3),
    (206, 'Sudan', 'SD', 'SDN', 12.862807, 30.217636, 1),
    (207, 'Suriname', 'SR', 'SUR', 3.919305, -56.027783, 8),
    (208, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 77.553604, 23.670272, 5),
    (209, 'Swaziland', 'SZ', 'SWZ', -26.522503, 31.465866, 1),
    (210, 'Sweden', 'SE', 'SWE', 60.128161, 18.643501, 5),
    (211, 'Switzerland', 'CH', 'CHE', 46.818188, 8.227512, 5),
    (212, 'Syria', 'SY', 'SYR', 34.802075, 38.996815, 3),
    (213, 'São Tomé and Príncipe', 'ST', 'STP', 0.18636, 6.613081, 1),
    (214, 'Taiwan', 'TW', 'TWN', 23.69781, 120.960515, 3),
    (215, 'Tajikistan', 'TJ', 'TJK', 38.861034, 71.276093, 3),
    (216, 'Tanzania', 'TZ', 'TZA', -6.369028, 34.888822, 1),
    (217, 'Thailand', 'TH', 'THA', 15.870032, 100.992541, 3),
    (218, 'Timor-Leste', 'TL', 'TLS', -8.874217, 125.727539, 3),
    (219, 'Togo', 'TG', 'TGO', 8.619543, 0.824782, 1),
    (220, 'Tokelau', 'TK', 'TKL', -8.967363, -171.855881, 7),
    (221, 'Tonga', 'TO', 'TON', -21.178986, -175.198242, 7),
    (222, 'Trinidad and Tobago', 'TT', 'TTO', 10.691803, -61.222503, 8),
    (223, 'Tunisia', 'TN', 'TUN', 33.886917, 9.537499, 1),
    (224, 'Turkey', 'TR', 'TUR', 38.963745, 35.243322, 5),
    (225, 'Turkmenistan', 'TM', 'TKM', 38.969719, 59.556278, 3),
    (226, 'Turks and Caicos Islands', 'TC', 'TCA', 21.694025, -71.797928, 6),
    (227, 'Tuvalu', 'TV', 'TUV', -7.109535, 177.64933, 7),
    (228, 'U.S. Virgin Islands', 'VI', 'VIR', 18.335765, -64.896335, 6),
    (229, 'Uganda', 'UG', 'UGA', 1.373333, 32.290275, 1),
    (230, 'Ukraine', 'UA', 'UKR', 48.379433, 31.16558, 5),
    (231, 'United Arab Emirates', 'AE', 'ARE', 23.424076, 53.847818, 3),
    (232, 'United Kingdom', 'GB', 'GBR', 55.378051, -3.435973, 5),
    (233, 'United States', 'US', 'USA', 37.09024, -95.712891, 6),
    (234, 'Uruguay', 'UY', 'URY', -32.522779, -55.765835, 8),
    (235, 'Uzbekistan', 'UZ', 'UZB', 41.377491, 64.585262, 3),
    (236, 'Vanuatu', 'VU', 'VUT', -15.376706, 166.959158, 7),
    (237, 'Vatican City', 'VA', 'VAT', 41.902916, 12.453389, 5),
    (238, 'Venezuela', 'VE', 'VEN', 6.42375, -66.58973, 8),
    (239, 'Vietnam', 'VN', 'VNM', 14.058324, 108.277199, 3),
    (240, 'Wallis and Futuna', 'WF', 'WLF', -13.768752, -177.156097, 7),
    (241, 'Western Sahara', 'EH', 'ESH', 24.215527, -12.885834, 1),
    (242, 'Yemen', 'YE', 'YEM', 15.552727, 48.516388, 3),
    (243, 'Zambia', 'ZM', 'ZMB', -13.133897, 27.849332, 1),
    (244, 'Zimbabwe', 'ZW', 'ZWE', -19.015438, 29.154857, 1);

ALTER SEQUENCE geo_countries_id_seq RESTART WITH 245;