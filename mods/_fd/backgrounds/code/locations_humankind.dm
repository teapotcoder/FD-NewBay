#define HOME_SYSTEM_MEOT    "Meotourne"
#define HOME_SYSTEM_REPUBL  "Nova Respublica"

#define HOME_SYSTEM_EARTH_FD      "Earth"
#define HOME_SYSTEM_LUNA_FD       "Luna"
#define HOME_SYSTEM_MARS_FD       "Mars"
#define HOME_SYSTEM_VENUS_FD      "Venus"
#define HOME_SYSTEM_CERES_FD      "Ceres"
#define HOME_SYSTEM_PLUTO_FD      "Pluto"
#define HOME_SYSTEM_TAU_CETI_FD   "Ceti Epsilon"
#define HOME_SYSTEM_HELIOS_FD     "Eos"
#define HOME_SYSTEM_TERRA_FD      "Terra"
#define HOME_SYSTEM_SAFFAR_FD     "Saffar"
#define HOME_SYSTEM_PIRX_FD       "Pirx"
#define HOME_SYSTEM_TADMOR_FD     "Tadmor"
#define HOME_SYSTEM_BRAHE_FD      "Brahe"
#define HOME_SYSTEM_IOLAUS_FD     "Iolaus"
#define HOME_SYSTEM_GAIA_FD       "Gaia"
#define HOME_SYSTEM_MAGNITKA_FD   "Magnitka"
#define HOME_SYSTEM_CASTILLA_FD   "Nueva Castilla"
#define HOME_SYSTEM_FOSTER_FD     "Foster's World"

#define HUMAN_HOMES_TO_DELETE					list(HOME_SYSTEM_TERSTEN, \
													HOME_SYSTEM_AVALON, \
													HOME_SYSTEM_MIRANIA, \
													HOME_SYSTEM_NYX_BRINKBURN, \
													HOME_SYSTEM_NYX_KALDARK, \
													HOME_SYSTEM_NYX_ROANOK, \
													HOME_SYSTEM_NYX_YUKLIT, \
													HOME_SYSTEM_NYX_CASSER, \
													HOME_SYSTEM_EARTH, \
													HOME_SYSTEM_LUNA, \
													HOME_SYSTEM_MARS, \
													HOME_SYSTEM_VENUS, \
													HOME_SYSTEM_CERES, \
													HOME_SYSTEM_PLUTO, \
													HOME_SYSTEM_TAU_CETI, \
													HOME_SYSTEM_HELIOS, \
													HOME_SYSTEM_TERRA, \
													HOME_SYSTEM_SAFFAR, \
													HOME_SYSTEM_PIRX, \
													HOME_SYSTEM_TADMOR, \
													HOME_SYSTEM_BRAHE, \
													HOME_SYSTEM_IOLAUS, \
													HOME_SYSTEM_GAIA, \
													HOME_SYSTEM_MAGNITKA, \
													HOME_SYSTEM_CASTILLA, \
													HOME_SYSTEM_FOSTER)
#define HUMAN_HOMES_TO_ADD						list(HOME_SYSTEM_MEOT, \
													HOME_SYSTEM_EARTH_FD, \
													HOME_SYSTEM_LUNA_FD, \
													HOME_SYSTEM_MARS_FD, \
													HOME_SYSTEM_VENUS_FD, \
													HOME_SYSTEM_CERES_FD, \
													HOME_SYSTEM_PLUTO_FD, \
													HOME_SYSTEM_TAU_CETI_FD, \
													HOME_SYSTEM_HELIOS_FD, \
													HOME_SYSTEM_TERRA_FD, \
													HOME_SYSTEM_SAFFAR_FD, \
													HOME_SYSTEM_PIRX_FD, \
													HOME_SYSTEM_TADMOR_FD, \
													HOME_SYSTEM_BRAHE_FD, \
													HOME_SYSTEM_IOLAUS_FD, \
													HOME_SYSTEM_GAIA_FD, \
													HOME_SYSTEM_MAGNITKA_FD, \
													HOME_SYSTEM_CASTILLA_FD, \
													HOME_SYSTEM_FOSTER_FD)

/datum/map/New()
	available_cultural_info[TAG_HOMEWORLD] = HUMAN_HOMES_TO_ADD
	. = ..()

/datum/species/human/New()
	..()
	available_cultural_info[TAG_HOMEWORLD] = HUMAN_HOMES_TO_ADD

//OUR OWN LOCATIONS//
//START//

/singleton/cultural_info/location/human_fd/meotourne
	name = HOME_SYSTEM_MEOT
	nickname = "Меотурн"
	distance = "23 light years"
	description = "Меотурн - единственная планета в системе Дельта Павлина - это уникальный в своём роде мир с собственной экосистемой. \
	В то время, как большая часть её площади необитаема и представляет из себя выжженный камень, другая часть обитаема как множеством видов уникальной хвойной флоры, \
	так и небольшими поселениями людей. История народа этой колонии, объединённого под знаменем Бельмеонской Федерации, полна конфликтов и войн; из-за этого меонцы развивали свои собственные \
	военную и дипломатическую школы на протяжении десятилетий. По сегодняшний день внутри колонии продолжается конфликт между государством и корпорациями, \
	а помимо оружия Меотурн начинает экспортировать в окружающий космос и небольшую, но заметную часть своего населения. <br><br>\
	Меонцев в целом можно было бы разбить на категории по выходцам из определённых городов, но общими их чертами являются верность традициям, память о прошлом и некоторое недоверие к чужакам. \
	Те, кто уезжают в центральные миры, часто работают на корпорации или уходят на военную службу ЦПСС."
	capital = "Treone"
	economic_power = 1.1
	ruling_body = "Belmeone Federation"

//END//

//REWRITED SIERRA AND OFF-BAY ONES//
//START//

/singleton/cultural_info/location/human_fd
	name = HOME_SYSTEM_MARS_FD
	nickname = "Марс"
	description = "-"
	distance = "1.5AU"
	capital = "Олимп"
	economic_power = 1.1

/singleton/cultural_info/location/human_fd/earth
	name = HOME_SYSTEM_EARTH_FD
	nickname = "Земля"
	description = "-"
	distance = "1AU"
	capital = "Женева"
	economic_power = 1.2

/singleton/cultural_info/location/human_fd/luna
	name = HOME_SYSTEM_LUNA_FD
	nickname = "Луна"
	distance = "1AU"
	description = "-"
	capital = "Селена"
	economic_power = 1.3
	secondary_langs = list(LANGUAGE_HUMAN_SELENIAN)

/singleton/cultural_info/location/human_fd/venus
	name = HOME_SYSTEM_VENUS_FD
	nickname = "Венера"
	distance = "0.7AU"
	description = "-"
	capital = "Центральная Административная \"Зона\""
	economic_power = 1.4

/singleton/cultural_info/location/human_fd/ceres
	name = HOME_SYSTEM_CERES_FD
	nickname = "Церера"
	distance = "2.7AU"
	description = "-"
	capital = "Строительная верфь \"Кханион\""

/singleton/cultural_info/location/human_fd/pluto
	name = HOME_SYSTEM_PLUTO_FD
	nickname = "Плутон"
	distance = "45AU"
	description = "-"
	capital = "Нью-Доминго"
	economic_power = 0.8
	secondary_langs = list(LANGUAGE_GUTTER)

/singleton/cultural_info/location/human_fd/cetiepsilon
	name = HOME_SYSTEM_TAU_CETI_FD
	nickname = "Цети Эпсилон"
	distance = "11.9 light years"
	description = "-"
	capital = "Иакон"
	economic_power = 1.2

/singleton/cultural_info/location/human_fd/eos
	name = HOME_SYSTEM_HELIOS_FD
	nickname = "Еос"
	description = "-"
	capital = "Сария"
	economic_power = 1.3
	distance = "10 light years"

/singleton/cultural_info/location/human_fd/terra
	name = HOME_SYSTEM_TERRA_FD
	nickname = "Терра"
	description = "-"
	capital = "Амерант"
	distance = "22.5 light years."
	economic_power = 0.9
	ruling_body = "Гильгамешская Колониальная Конфедерация"
	language = LANGUAGE_HUMAN_RUSSIAN

/singleton/cultural_info/location/human_fd/saffar
	name = HOME_SYSTEM_SAFFAR
	nickname = "Саффар"
	distance = "44 light years"
	description = "-"
	capital = "Орбитальная станция \"Саффар-1\""
	economic_power = 1.2

/singleton/cultural_info/location/human_fd/tadmor
	name = HOME_SYSTEM_TADMOR_FD
	nickname = "Тадмор"
	distance = "45 light years"
	description = "-"
	capital = "Пальмира"
	economic_power = 1.0

/singleton/cultural_info/location/human_fd/pirx
	name = HOME_SYSTEM_PIRX_FD
	nickname = "Пиркс"
	distance = "41 light years"
	description = "-"
	capital = "Йуду"
	economic_power = 0.7

/singleton/cultural_info/location/human_fd/brahe
	name = HOME_SYSTEM_BRAHE_FD
	nickname = "Браге"
	distance = "41 light years"
	description = "-"
	capital = "Нью-Орхус"
	economic_power = 1.1

/singleton/cultural_info/location/human_fd/iolaus
	name = HOME_SYSTEM_IOLAUS_FD
	nickname = "Иолай"
	distance = "41 light years"
	description = "-"
	capital = "Немея"
	economic_power = 1.0

/singleton/cultural_info/location/human_fd/gaia
	name = HOME_SYSTEM_GAIA_FD
	nickname = "Гайя"
	distance = "14 light years"
	description = "-"
	capital = "Новая Венеция"
	economic_power = 1.0

/singleton/cultural_info/location/human_fd/magnitka
	name = HOME_SYSTEM_MAGNITKA_FD
	nickname = "Магнитка"
	distance = "24 light years"
	description = "-"
	capital = "Стройгородок"
	economic_power = 0.8
	ruling_body = "Магнитка"

/singleton/cultural_info/location/human_fd/castilla
	name = HOME_SYSTEM_CASTILLA_FD
	nickname = "Кастилья-ла-Нуэва"
	distance = "10 light years"
	description = "-"
	capital = "Пласида"
	economic_power = 1.0

/singleton/cultural_info/location/human_fd/fosters
	name = HOME_SYSTEM_FOSTER_FD
	nickname = "Мир Фостера"
	distance = "11 light years"
	description = "-"
	capital = "Вайтхилл"
	economic_power = 1.2

//END//

#undef HOME_SYSTEM_MEOT
#undef HOME_SYSTEM_REPUBL

#undef HOME_SYSTEM_EARTH_FD
#undef HOME_SYSTEM_LUNA_FD
#undef HOME_SYSTEM_MARS_FD
#undef HOME_SYSTEM_VENUS_FD
#undef HOME_SYSTEM_CERES_FD
#undef HOME_SYSTEM_PLUTO_FD
#undef HOME_SYSTEM_TAU_CETI_FD
#undef HOME_SYSTEM_HELIOS_FD
#undef HOME_SYSTEM_TERRA_FD
#undef HOME_SYSTEM_SAFFAR_FD
#undef HOME_SYSTEM_PIRX_FD
#undef HOME_SYSTEM_TADMOR_FD
#undef HOME_SYSTEM_BRAHE_FD
#undef HOME_SYSTEM_IOLAUS_FD
#undef HOME_SYSTEM_GAIA_FD
#undef HOME_SYSTEM_MAGNITKA_FD
#undef HOME_SYSTEM_CASTILLA_FD
#undef HOME_SYSTEM_FOSTER_FD

#undef HUMAN_HOMES_TO_DELETE
