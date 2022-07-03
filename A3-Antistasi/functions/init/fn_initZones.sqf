//usage: place on the map markers covering the areas where you want the AAF operate, and put names depending on if they are powerplants,resources, bases etc.. The marker must cover the whole operative area, it's buildings etc.. (for example in an airport, you must cover more than just the runway, you have to cover the service buildings etc..)
//markers cannot have more than 500 mts size on any side or you may find "insta spawn in your nose" effects.
//do not do it on cities and hills, as the mission will do it automatically
//the naming convention must be as the following arrays, for example: first power plant is "power", second is "power_1" thir is "power_2" after you finish with whatever number.
//to test automatic zone creation, init the mission with debug = true in init.sqf
//of course all the editor placed objects (petros, flag, respawn marker etc..) have to be ported to the new island
//deletion of a marker in the array will require deletion of the corresponding marker in the editor
//only touch the commented arrays
scriptName "initZones.sqf";
private _fileName = "initZones.sqf";
[2,"initZones started",_fileName] call A3A_fnc_log;

forcedSpawn = [];
citiesX = [];

[] call A3A_fnc_prepareMarkerArrays;

private ["_name", "_sizeX", "_sizeY", "_size", "_pos", "_mrk"];


if ((toLower worldName) == "altis") then {

	"((getText (_x >> ""type"")) == ""Hill"") &&
	!((getText (_x >> ""name"")) isEqualTo """") &&
	!(configName _x isEqualTo ""Magos"")"
	configClasses (configfile >> "CfgWorlds" >> worldName >> "Names") apply {

		_name = configName _x;
		_sizeX = getNumber (_x >> "radiusA");
		_sizeY = getNumber (_x >> "radiusB");
		_size = [_sizeX, _sizeY] select (_sizeX <= _sizeY);
		_pos = getArray (_x >> "position");
		_size = [_size, 50] select (_size < 10);
		_mrk = createmarker [format ["%1", _name], _pos];
		_mrk setMarkerSize [_size, _size];
		_mrk setMarkerShape "ELLIPSE";
		_mrk setMarkerBrush "SOLID";
		_mrk setMarkerColor "ColorRed";
		_mrk setMarkerText _name;
		controlsX pushBack _name;
	};
};  //this only for Altis
if (debug) then {
	diag_log format ["%1: [Antistasi] | DEBUG | initZones | Setting Spawn Points for %2.", servertime, worldname];
};
//We're doing it this way, because Dedicated servers world name changes case, depending on how the file is named.
//And weirdly, == is not case sensitive.
//this comments has not an information about the code

(seaMarkers + seaSpawn + seaAttackSpawn + spawnPoints + detectionAreas) apply {_x setMarkerAlpha 0};
defaultControlIndex = (count controlsX) - 1;
watchpostsFIA = [];
roadblocksFIA = [];
aapostsFIA = [];
hmgpostsFIA = [];
atpostsFIA = [];
mortarpostsFIA = [];
destroyedSites = [];
garrison setVariable ["Synd_HQ", [], true];
markersX = airportsX + resourcesX + factories + outposts + seaports + controlsX + milbases + ["Synd_HQ"];
if (debug) then {
	diag_log format ["%1: [Antistasi] | DEBUG | initZones | Building roads for %2.",servertime,worldname];
};
markersX apply {
	_x setMarkerAlpha 0;
	spawner setVariable [_x, 2, true];
};	//apply faster then forEach and look better


// setup hardcoded population counts for towns
private _hardcodedPop = true;
switch (toLower worldName) do {
	case "tanoa": {
		{server setVariable [_x select 0,_x select 1]} forEach
		[["Lami01",277],["Lifou01",350],["Lobaka01",64],["LaFoa01",38],["Savaka01",33],["Regina01",303],["Katkoula01",413],["Moddergat01",195],["Losi01",83],
		["Tanouka01",380],["Tobakoro01",45],["Georgetown01",347],["Kotomo01",160],["Rautake01",113],["Harcourt01",325],["Buawa01",44],["SaintJulien01",353],
		["Balavu01",189],["Namuvaka01",45],["Vagalala01",174],["Imone01",31],["Leqa01",45],["Blerick01",71],["Yanukka01",189],["OuaOue01",200],["Cerebu01",22],
		["Laikoro01",29],["Saioko01",46],["Belfort01",240],["Oumere01",333],["Muaceba01",18],["Nicolet01",224],["Lailai01",23],["Doodstil01",101],["Tavu01",178],
		["Lijnhaven01",610],["Nani01",19],["PetitNicolet01",135],["PortBoise01",28],["SaintPaul01",136],["Nasua01",60],["Savu01",184],["Murarua01",258],["Momea01",159],
		["LaRochelle01",532],["Koumac01",51],["Taga01",31],["Buabua01",27],["Penelo01",189],["Vatukoula01",15],["Nandai01",130],["Tuvanaka01",303],["Rereki01",43],
		["Ovau01",226],["IndPort01",420],["Ba01",106]];
	};
	case "altis": {
		{server setVariable [_x select 0,_x select 1]} forEach
		[["Therisa",154],["Zaros",371],["Poliakko",136],["Katalaki",95],["Alikampos",115],["Neochori",309],["Stavros",122],["Lakka",173],["AgiosDionysios",84],
		["Panochori",264],["Topolia",33],["Ekali",9],["Pyrgos",531],["Orino",45],["Neri",242],["Kore",133],["Kavala",660],["Aggelochori",395],["Koroni",32],["Gravia",291],
		["Anthrakia",143],["Syrta",151],["Negades",120],["Galati",151],["Telos",84],["Charkia",246],["Athira",342],["Dorida",168],["Ifestiona",48],["Chalkeia",214],
		["AgiosKonstantinos",39],["Abdera",89],["Panagia",91],["Nifi",24],["Rodopoli",212],["Kalithea",36],["Selakano",120],["Frini",69],["AgiosPetros",11],["Feres",92],
		["AgiaTriada",8],["Paros",396],["Kalochori",189],["Oreokastro",63],["Ioannina",48],["Delfinaki",29],["Sofia",179],["Molos",188]];
	};
	case "chernarus_summer": {
		{server setVariable [_x select 0,_x select 1]} forEach
		[["vill_NovySobor",129],["city_StarySobor",149],["vill_Guglovo",26],["vill_Vyshnoye",41],["vill_Kabanino",86],["vill_Rogovo",66],["vill_Mogilevka",104],["city_Gorka",115],
		["vill_Grishino",168],["vill_Shakhovka",55],["vill_Pogorevka",57],["vill_Pulkovo",26],["vill_Nadezhdino",109],["city_Vybor",180],["vill_Polana",118],["vill_Staroye",115],
		["vill_Dubrovka",86],["vill_Pustoshka",163],["vill_Kozlovka",100],["vill_Pusta",52],["vill_Dolina",83],["vill_Gvozdno",78],["vill_Prigorodki",145],["vill_Drozhino",58],
		["vill_Sosnovka",54],["vill_Msta",96],["vill_Lopatino",159],["city_Zelenogorsk",280],["vill_Orlovets",65],["city_Berezino",340],["vill_Myshkino",49],["vill_Petrovka",45],
		["city_Chernogorsk",761],["vill_Bor",46],["vill_Nizhnoye",146],["vill_Balota",147],["vill_Khelm",110],["city_Krasnostav",194],["vill_Komarovo",127],["city_Elektrozavodsk",745],
		["city_Solnychniy",224],["vill_Kamyshovo",196],["vill_Tulga",35],["vill_Pavlovo",99],["vill_Kamenka",127],["vill_Olsha",20]];
	};
	case "chernarus_winter": {
		{server setVariable [_x select 0,_x select 1]} forEach
		[["vill_NovySobor",129],["city_StarySobor",149],["vill_Guglovo",26],["vill_Vyshnoye",41],["vill_Kabanino",86],["vill_Rogovo",66],["vill_Mogilevka",104],["city_Gorka",115],
		["vill_Grishino",168],["vill_Shakhovka",55],["vill_Pogorevka",57],["vill_Pulkovo",26],["vill_Nadezhdino",109],["city_Vybor",180],["vill_Polana",118],["vill_Staroye",115],
		["vill_Dubrovka",86],["vill_Pustoshka",163],["vill_Kozlovka",100],["vill_Pusta",52],["vill_Dolina",83],["vill_Gvozdno",78],["vill_Prigorodki",145],["vill_Drozhino",58],
		["vill_Sosnovka",54],["vill_Msta",96],["vill_Lopatino",159],["city_Zelenogorsk",280],["vill_Orlovets",65],["city_Berezino",340],["vill_Myshkino",49],["vill_Petrovka",45],
		["city_Chernogorsk",761],["vill_Bor",46],["vill_Nizhnoye",146],["vill_Balota",147],["vill_Khelm",110],["city_Krasnostav",194],["vill_Komarovo",127],["city_Elektrozavodsk",745],
		["city_Solnychniy",224],["vill_Kamyshovo",196],["vill_Tulga",35],["vill_Pavlovo",99],["vill_Kamenka",127],["vill_Olsha",20]];
	};
    //To improve Performance, reduces pop from 13972 to 4850
	case "enoch": {
		{server setVariable [_x select 0,_x select 1]} forEach
		[["Adamow",200],["Bielawa",150],["Borek",150],["Brena",150],["Dolnik",100],["Gieraltow",400],["Gliniska",150],["Grabin",250],["Huta",150],["Karlin",50],["Kolembrody",100],
		["Lembork",50],["Lipina",100],["Lukow",200],["Muratyn",50],["Nadbor",600],["Nidek",100],["Olszanka",100],["Polana",100],["Radacz",150],["Radunin",150],["Roztoka",50],
		["Sitnik",150],["Sobotka",100],["Tarnow",200],["Topolin",650],["Zalesie",150],["Zapadlisko",100]];
	};
	case "vt7": {
		{server setVariable [_x select 0,_x select 1]} forEach
		[["aarre",80],["Alapihlaja",90],["Eerikkala",88],["haavisto",60],["Hailila",90],["Hanski",100],["Harju",100],["harjula",70],["hirvela",0],
		["Hurppu",80],["Hyypianvuori",60],["Jarvenkyla",100],["kallio",10],["Kirkonkyla",500],["Klamila",150],["Koivuniemi",100],["Korpela",80],
		["Kouki",90],["Kuusela",100],["Lansikyla",100],["Myllynmaki",60],["Nakarinmaki",90],["Niemela",60],["nopala",80],["Ojala",80],["Onnela",100],
		["Pajunlahti",90],["piispa",100],["Pyterlahti",390],["Rannanen",80],["Ravijoki",90],["Riko",100],["Santaniemi",100],["Skippari",80],["suopelto",80],
		["Sydankyla",150],["Tinkanen",80],["toipela",0],["uski",80],["Uutela",100],["Vilkkila",110],["Virojoki",500],["Ylapaa",80],["Ylapihlaja",80],
		["Souvio",70]];
	};
	case "gm_weferlingen_summer": {
		{server setVariable [_x select 0,_x select 1]} forEach
		[["gm_name_grasleben",350],["gm_name_weferlingen",500],["gm_name_doehren",122],["gm_name_seggerde",80],["gm_name_belsdorf",80],["gm_name_behnsdorf",100],
		["gm_name_eschenrode",100],["gm_name_eschenrode",90],["gm_name_walbeck",110],
		["gm_name_beendorf",80],["gm_name_mariental",60],["gm_name_querenhorst",70],["gm_name_bahrdorf",110],["DefaultKeyPoint53",80],["DefaultKeyPoint1",90],
		["DefaultKeyPoint2",100],["DefaultKeyPoint3",80],
		["DefaultKeyPoint4",90],["DefaultKeyPoint5",100],
		["DefaultKeyPoint6",100],["DefaultKeyPoint7",60],["DefaultKeyPoint8",90],["DefaultKeyPoint9",60],["DefaultKeyPoint10",80],["DefaultKeyPoint11",80],["DefaultKeyPoint12",100],
		["DefaultKeyPoint13",90],["DefaultKeyPoint14",100],["DefaultKeyPoint15",120],["DefaultKeyPoint17",80],["DefaultKeyPoint18",90],["DefaultKeyPoint19",100],
		["DefaultKeyPoint20",100],["DefaultKeyPoint21",80],["DefaultKeyPoint22",80],
		["DefaultKeyPoint23",150],["DefaultKeyPoint24",80],["DefaultKeyPoint25",87],["DefaultKeyPoint26",80],
		["DefaultKeyPoint27",100],["DefaultKeyPoint28",110],["DefaultKeyPoint29",500],["DefaultKeyPoint30",80],["DefaultKeyPoint44",80],
		["DefaultKeyPoint158",100],["DefaultKeyPoint159",110],["DefaultKeyPoint160",500],["DefaultKeyPoint161",80],["DefaultKeyPoint162",80],
		["DefaultKeyPoint157",70]];
	};
	case "blud_vidda": {
		{server setVariable [_x select 0,_x select 1]} forEach
		[["DefaultKeyPoint3",20],["DefaultKeyPoint7",500],["DefaultKeyPoint9",140],["DefaultKeyPoint33",110],["DefaultKeyPoint34",50],["DefaultKeyPoint37",300],
		["DefaultKeyPoint39",100],["DefaultKeyPoint51",160],["DefaultKeyPoint58",80],
		["DefaultKeyPoint73",80],["DefaultKeyPoint91",135],["DefaultKeyPoint92",70],["DefaultKeyPoint104",40],["DefaultKeyPoint31", 160]];
	};
	//Reduced Pop for performance 16761 to 15350, minimum Pop per Town set to 100 to ensure Vehicle spawning
    case "cam_lao_nam": {
        {server setVariable [_x select 0,_x select 1]} forEach
        [["haiphong",500],["hanoi",1000],["hue",2000],["saigon",700],["sihanoukville",200],["nodallho",100],["bru",100],["attapeu",100],
        ["dakrong",100],["tandi",100],["lumphat",100],["cuchi",100],["baria",100],["danang",600],["kenglat",100],["laichau",100],["paknoi",100],
        ["phuan",100],["xomram",120],["xomgia",100],["tongmoo",100],["donlac",100],["cangon",100],["nalai",100],["baichai",100],
        ["bachdang",100],["ketthuc",100],["vongxo",100],["banbon",100],["nongkhiaw",100],["horhog",100],["langmau",100],
        ["baria2",100],["anhoa",100],["binhminh",100],["buoisang",100],["hoalien",100],["lacmy",100],["cacan",100],["tanhop",100],
        ["hanoi2",300],["gansong",100],["zokcarbora",100],["banhtrung",100],["yentinh",100],["thunglungcao",100],["baibiendep",100],
        ["phoduc",100],["baove",100],["ngatu",100],["binhyen",100],["bosong",100],["marble",180],["niemtin",100],
        ["krosang",100],["banlen",100],["comngon",100],["cauhai",100],["daotrai", 100], 
		["nhenden", 50],["longhai", 50]
		];
    };
	case "vn_khe_sanh": {
        {server setVariable [_x select 0,_x select 1]} forEach
        [["Khesanhvil",800],["Tanloan",100],["Axau",50],["Xiso",40],["XiMi",38],["Xino",60],["PalienKhun",74],
        ["Koso",60],["KoWe",38],["BanNeme",50],["Avau",35],["ToRout",80],["RoRo",100],["ABung",45],
        ["Tavouac",15],["Palo",125],["Thanh",80],["AHo",20],["XingEa",75],["Xingwe",175],["ACoi",25],["Dan",100],
        ["Bahy",100],["HaiPhuc",50],["HaiTan",30],["Donque",125],["Hamy",78],["BichNam",40],["Raoha",70],
        ["NhiHa",17],["GioHai",86],["AnMy",100],["Kok",60],["HopTac",50],["CoSo",12],["Cola",90],["Seina",130],
        ["Viski",21],["LiemCong",79],["NamHung",130],["ThaiLai",222],["Lako",90],["pagnouy",76],["Sadoun",64],
        ["Salen",71],["Lousalia",19],["Paxiou",12],["Khoyamep",50],["Gnavay",60],["Gnavet",114],["Napang",100],
        ["Xok",8],["Soy",100],["AnDinh",30],["Nabo",150],["Tuan",40],["Naxok",52],["Koanphan",113],
		["Phonsang",32],["Louang",100],["Phonsi",101],["Pomkhoun",100],["Doy",15],["Nase",30],["Nadou",100],
		["Cukty",30],["HoaThanh",100],["CuYang",100],["Ploy",100],["Thongxa",60],["Kang",43],["Lapoung",100],["Lukdong",70],
		["Pakpong",20],["Donxat",35],["Vangkoy",100],["Xeku",20],["Nalao",14],["Kengkep",100],
		["Nasano",43],["Naxuak",47],["Dantete",60],["Donvay",56],["Nonghano",10],["Nongno",40],["Tansoum",65],["Hindam",50],
		["Phailom",30],["Saoven",100],["Prao",140],["Talu",60]
		];
    };
	case "rhspkl": {
        {server setVariable [_x select 0,_x select 1]} forEach
        [["DefaultKeyPoint1",40],["DefaultKeyPoint4",200],["DefaultKeyPoint32",50],["DefaultKeyPoint34",100],
        ["DefaultKeyPoint35",110],["DefaultKeyPoint36",105],["DefaultKeyPoint37",10],["DefaultKeyPoint38",50],
        ["DefaultKeyPoint39",250],["DefaultKeyPoint40",300],["DefaultKeyPoint43",350],["DefaultKeyPoint49",180],
        ["DefaultKeyPoint53",160],["DefaultKeyPoint5",250],["DefaultKeyPoint6",550],["DefaultKeyPoint7",80],["DefaultKeyPoint8",200],
        ["DefaultKeyPoint9",180]];
    };
	//TODO: NAPF, cherno 2020, Abramia, Panthera
	default { _hardcodedPop = false };
};
    //Disables Towns/Villages, Names can be found in configFile >> "CfgWorlds" >> "WORLDNAME" >> "Names"
private ["_nameX", "_roads", "_numCiv", "_roadsProv", "_roadcon", "_dmrk", "_info"];


private _cityConfigs = [];

switch (toLower worldName) do {
    case "cam_lao_nam": {
        _cityConfigs = "(getText (_x >> ""type"") in [""NameCityCapital"", ""NameCity"", ""NameVillage"", ""CityCenter""]) &&
           !(getText (_x >> ""Name"") isEqualTo """") &&
           !((configName _x) in [""Lakatoro01"", ""Galili01"",""Sosovu01"", ""Ipota01"", ""Malden_C_Airport"", ""FobNauzad"", ""FobObeh"", ""22"",
           ""23"", ""toipela"", ""hirvela"", ""Kuusela"", ""Niemela"", ""fob4"", ""daumau"", ""fob1"", ""quanloi"", ""stagingarea"", ""fob2"",
           ""pleimei"", ""fob6"", ""berchtesgaden"", ""fob3"", ""khegio"", ""fob5"", ""thudridge"", ""halongnavybase"", ""plainofjars"", ""pleikuboatbase"",
           ""banhoang"", ""vinhau"", ""kechau"", ""quanbo"", ""huecitadel"", ""bimat"", ""danthemthem"", ""daophai"", ""phuquoc"", ""dharmadocks"",
            ""dharma"", ""patmep"", ""phokham"", ""rungcung"", ""tiengtai"", ""vacang"", ""hanoi3"", ""saigonport"", ""ansungsong"", ""vanchu"",
            ""sangha"", ""hoxanx"", ""congtroi"", ""boave"", ""honba"", ""kiemtra"", ""baibiendiep"", ""nuocbun"", ""cantho"", ""tampep"", ""segbegat"", ""che"", ""lahot"", ""alieng"", ""thiengling"",
			""soctrang"", ""mekongdelta"",
            ""phaonoi"", ""timho"", ""quyen"", ""caloi"", ""thuphac"", ""diemdang"", ""bandao"", ""mantau"",""dongxa"", ""tauphabang"", ""horgoat"",
            ""samsong"", ""muylai"", ""caymo"", ""docon"", ""paradiseisland"", ""mien"", ""giuaho""])"
           configClasses (configfile >> "CfgWorlds" >> worldName >> "Names");
    };

	case "vn_khe_sanh": {
        _cityConfigs = "(getText (_x >> ""type"") in [""NameCityCapital"", ""NameCity"", ""NameVillage"", ""CityCenter""]) &&
           !(getText (_x >> ""Name"") isEqualTo """") &&
           !((configName _x) in [""KoNo"", ""Paca"", ""MuTa"", ""Kouthi"", ""Kate"", ""Hinlap"", 
		   ""Avian"", ""That"", ""XomBau"",""Paxia"", ""Chanulangchanh"", ""Xomcon"", ""Xombatu"", ""Xombolou"", 
		   ""Bolieu"", ""VinhTu"", ""SonGiang"", ""SonXuan""])"
           configClasses (configfile >> "CfgWorlds" >> worldName >> "Names");
    };

	case "blud_vidda": {
		_cityConfigs = "(getText (_x >> ""type"") in [""NameCityCapital"", ""NameCity"", ""NameVillage"", ""CityCenter""]) &&
		!(getText (_x >> ""Name"") isEqualTo """") &&
		!((configName _x) in ['DefaultKeyPoint40','DefaultKeyPoint35', 'DefaultKeyPoint88', 'DefaultKeyPoint100'])"
		configClasses (configfile >> "CfgWorlds" >> worldName >> "Names");
		private _rv133 = ("configName _x == 'DefaultKeyPoint32'" configClasses (configfile >> "CfgWorlds" >> worldName >> "Names")) select 0;
		_cityConfigs pushBack _rv133; //RV-133, big city without city marker
	};

	case "panthera3": {
		_cityConfigs = "(getText (_x >> ""type"") in [""NameLocal"", ""NameCityCapital"", ""NameCity"", ""NameVillage"", ""CityCenter""]) &&
		!(getText (_x >> ""Name"") isEqualTo """") &&
		!((configName _x) in ['idrsko','ladra','cesnjica','koprivnik','goreljek','jereka','ribcevlaz','starfuz','sredvas','bitnje','cezsoca','logmangart','strmec','belca','dovje','kocna','bdobrava','skooma','suzid','sseloo','zirovnica','vrba','obrne','gorje','ribno','lesce','lancovo','selca','kneza','Pikia','baca','sela','podljubinj', 'volce','dolje','bolhowo','ditchwood','rontushospital','ramons','bazovica','villasimona','fortieste','rubinaisland','savagia',""Mork"", ""trenta"", ""Kleinfort"", ""Freckle"", ""dino10"", ""dino11"", ""dino12"", ""dino13"", ""dino3"", ""dino5"", ""dino7""])"
		configClasses (configfile >> "CfgWorlds" >> worldName >> "Names");
	};

	default {
		_cityConfigs = "(getText (_x >> ""type"") in [""NameCityCapital"", ""NameCity"", ""NameVillage"", ""CityCenter""]) &&
		!(getText (_x >> ""Name"") isEqualTo """") &&
		!((configName _x) in [""faketown"",""Lakatoro01"", ""Galili01"",""Sosovu01"", ""Ipota01"", ""FobNauzad"", ""FobObeh"", ""22"", ""23"", ""toipela"", ""hirvela"", ""Island_Bernerplatte"", ""Island_Feldmoos"", ""Island_Bernerplatte"", ""mil_SouthAirstrip"", ""LandMark_Hubel"", ""Insel_Hasenmatt"", ""pass_Rorenpass"", ""Castle_Froburg"", ""castle_Homburg"", ""Kuusela"", ""Niemela""])"
		configClasses (configfile >> "CfgWorlds" >> worldName >> "Names");
	};
};

private _cityColor = if (gameMode == 4) then {colorInvaders} else {colorOccupants};
private _citySide =  if (gameMode == 4) then {Invaders} else {Occupants};

_cityConfigs apply {
	_nameX = configName _x;
	_sizeX = getNumber (_x >> "radiusA");
	_sizeY = getNumber (_x >> "radiusB");
	_size = [_sizeY, _sizeX] select (_sizeX > _sizeY);
	_pos = getArray (_x >> "position");
	_size = [_size, 400] select (_size < 400);
	_numCiv = 0;

	if (_hardcodedPop) then
	{
		_numCiv = server getVariable _nameX;
		if (isNil "_numCiv" || {!(_numCiv isEqualType 0)}) then
		{
			[1, format ["Bad population count data for %1", _nameX], _fileName] call A3A_fnc_log;
			_numCiv = (count (nearestObjects [_pos, ["house"], _size]));
		};
	}
	else {
		_numCiv = (count (nearestObjects [_pos, ["house"], _size]));
	};

	_roads = nearestTerrainObjects [_pos, ["MAIN ROAD", "ROAD", "TRACK"], _size, true, true];
	if (count _roads > 0) then {
		// Move marker position to the nearest road, if any
		_pos = _roads select 0;
	};
	_numVeh = (count _roads) min (_numCiv / 3);

	_mrk = createmarker [format ["%1", _nameX], _pos];
	_mrk setMarkerSize [_size, _size];
	_mrk setMarkerShape "RECTANGLE";
	_mrk setMarkerBrush "SOLID";
	_mrk setMarkerColor _cityColor;
	_mrk setMarkerText _nameX;
	_mrk setMarkerAlpha 0;
	citiesX pushBack _nameX;
	spawner setVariable [_nameX, 2, true];
	_dmrk = createMarker [format ["Dum%1", _nameX], _pos];
	_dmrk setMarkerShape "ICON";
	_dmrk setMarkerType "loc_Ruin";
	_dmrk setMarkerColor _cityColor;

	sidesX setVariable [_mrk, _citySide, true];
	_info = [_numCiv, _numVeh, prestigeOPFOR, prestigeBLUFOR];
	server setVariable [_nameX, _info, true];
};

if (debug) then {
	diag_log format ["%1: [Antistasi] | DEBUG | initZones | Roads built in %2.",servertime,worldname];
};

markersX = markersX + citiesX;
sidesX setVariable ["Synd_HQ", teamPlayer, true];
sidesX setVariable ["NATO_carrier", Occupants, true];
sidesX setVariable ["CSAT_carrier", Invaders, true];

antennasDead = [];
banks = [];
mrkAntennas = [];
private _posAntennas = [];
private _blacklistPos = [];
private _posBank = [];
private _banktypes = ["land_gm_euro_office_01","Land_Offices_01_V1_F"];
private _antennatypes = ["Land_TTowerBig_1_F", "Land_TTowerBig_2_F", "Land_Communication_F",
"Land_Vysilac_FM","Land_A_TVTower_base","Land_Telek1", "Land_vn_tower_signal_01"];
private ["_antenna", "_mrkFinal", "_antennaProv"];
if (debug) then {
diag_log format ["%1: [Antistasi] | DEBUG | initZones | Setting up Radio Towers.",servertime];
};

// Land_A_TVTower_base can't be destroyed, Land_Communication_F and Land_Vysilac_FM are not replaced with "Ruins" when destroyed.
// This causes issues with persistent load and rebuild scripts, so we replace those with antennas that work properly.
private _replaceBadAntenna = {
	params ["_antenna"];
	if ((typeof _antenna) in ["Land_Communication_F", "Land_Vysilac_FM", "Land_A_TVTower_Base"]) then {
		hideObjectGlobal _antenna;
		if (typeof _antenna == "Land_A_TVTower_Base") then {
			// The TV tower is composed of 3 sections - need to hide them all
			private _otherSections = nearestObjects [_antenna, ["Land_A_TVTower_Mid", "Land_A_TVTower_Top"], 200];
			{ hideObjectGlobal _x; } forEach _otherSections;
		};
		private _antennaPos = getPos _antenna;
		_antennaPos set [2, 0];
		private _antennaClass = "Land_TTowerBig_2_F";
		_antenna = createVehicle [_antennaClass, _antennaPos, [], 0, "NONE"];
	};
	_antenna;
};

switch (toLower worldName) do {
	case "tanoa": {
		_posAntennas =
		[[2566.07,9016.13,0.00299835],[2682.94,2592.64,-0.000686646], [4701.6,3165.23,0.0633469], [2437.25,7224.06,0.0264893], [2563.15,9017.1,0.291538],
		[6617.95,7853.57,0.200073], [11008.8,4211.16,-0.00154114], [6005.47,10420.9,0.20298], [7486.67,9651.9,1.52588e-005],
		[2631,11651,0.0173302], [2965.33,13087.1,0.191544], [7278.8,12846.6,0.0838776], [12889.2,8578.86,0.228729],
		[10114.3,11743.1,9.15527e-005], [10949.8,11517.3,0.14209], [11153.3,11435.2,0.210876], [13775.8,10976.8,0.170441]];	// All antennas to be bases or to ignore.
		_blacklistPos = [9, 14];		// Ignore Antenna at <Index> in _posAntennas.
		_posBank = [[5893.41,10253.1,-0.687263], [9507.5,13572.9,0.133848]];	// same as RT for Bank buildings, select the biggest buildings in your island, and make a DB with their positions.
		antennas = [];
	};
	case "altis": {
		_posAntennas =
		[[14451.5,16338,0.000354767], [15346.7,15894,-3.8147e-005], [16085.1,16998,7.08781], [17856.7,11734.1,0.863045],
		[9496.2,19318.5,0.601898], [9222.87,19249.1,0.0348206], [20944.9,19280.9,0.201118], [20642.7,20107.7,0.236603],
		[18709.3,10222.5,0.716034], [6840.97,16163.4,0.0137177], [19319,9716.22,0.442627], [19351.9,9693.04,0.639175],
		[10317.3,8704.65,0.117233], [8268.76,10051.6,0.0100708], [4583.61,15401.1,0.262543],[4555.65,15383.2,0.0271606],
		[4263.82,20664.1,-0.0102234], [26274.6,22188.1,0.0139847], [26455.4,22166.3,0.0223694],[7885.09,14628.1,0]];
		_blacklistPos = [4, 10, 12, 15, 17];
		_posBank = [[16586.6,12834.5,-0.638584], [16545.8,12784.5,-0.485485], [16633.3,12807,-0.635017], [3717.34,13391.2,-0.164862], [3692.49,13158.3,-0.0462074], [3664.31,12826.5,-0.379545], [3536.99,13006.6,-0.508585], [3266.42,12969.9,-0.549738]];
		antennas = [];
	};
	case "chernarus_summer": {
		_posAntennas =
		[[3029.11,2350.27,0.229149], [4547.68,3132.05,0.693176], [3715.81,5984.25,0], [6563.68,3405.56,0.0547333],
		[5264.35,5314.45,-0.00253296], [6443.78,6545.48,0.0928955], [4967.81,9966.56,0], [8127.52,9151.57,0],
		[13477.6,3345.84,0.0730896], [13010.1,5964.96,-0.0163116], [12937,12763.6,0.164017]];
		_blackListPos = [0, 4, 8, 9];
		antennas = [];
	};
	case "chernarus_winter": {
		_posAntennas =
		[[3029.11,2350.27,0.229149], [4547.68,3132.05,0.693176], [3715.81,5984.25,0], [6563.68,3405.56,0.0547333],
		[5264.35,5314.45,-0.00253296], [6443.78,6545.48,0.0928955], [4967.81,9966.56,0], [8127.52,9151.57,0],
		[13477.6,3345.84,0.0730896], [13010.1,5964.96,-0.0163116], [12937,12763.6,0.164017]];
		_blackListPos = [0, 4, 8, 9];
		antennas = [];
	};
	case "enoch": {
		_posAntennas =
		[[3830.61,1827.19,0], [1583.47,7162.08,0.000152588], [3146.07,7024.41,0.00133514],
		[1408.43,8675.08,-1.00183], [8894.99,2049.1,0.00387573], [2382.53,11479.5,3.05176e-005], [6293.86,9910.17,-7.62939e-006],
		[3585.76,11540.7,-0.000236511], [7906.11,9917.2,0.0120544], [7776.88,10082.3,0.0262146], [7866.34,10102.5,3.05176e-005],
		[6908.45,11119.5,-2.40052], [9257.02,10282.7,0.0631027], [10610.4,10890.6,0.166985], [11172.6,11424.1,-2.82624]];
		_blackListPos = [2, 3, 4, 6, 8, 11, 12, 13, 14, 15];
		antennas = [];
	};
	case "tembelan": {
		_posAntennas =
		[[502.398,348.476,0.000190735], [4310.99,844.668,0.0271759], [1724.15,4777.62,-1.14441e-005], [2916.02,4174.11,1.14441e-005],
		[3020.15,8111.37,0.517868], [4133.57,8028.41,0.30658], [7080.68,5748.77,0.500134], [9160.06,4707.45,0.19401],
		[9542.17,5029,0.0381298], [9191.69,6012.89,0], [9238.39,6075.66,0.160484]];
		_blackListPos = [1, 4, 6, 8, 9];
		antennas = [];
	};
	case "vt7": {
		_posAntennas =
		[[907.35,2955.65,0], [6644.62,7275.58,0.00256348], [6242.47,13009.4,0.39426],[1768.36,15526.1,0.00277328], [15449.2,16603.3,0], [15224.6,14150.1,0],[10709.6,11024.9,0]];
		_blackListPos = [];
		antennas = [];
	};
	case "takistan": {
		_posAntennas =
		[[10106.4,10343.8,0],[616.562,4520.12,0],[4014.64,3089.66,0.150604], [5249.37,3709.48,-0.353882], [3126.7,8223.88,-0.649429], [8547.92,3897.03,-0.56073], [5578.24,9072.21,-0.842239], [2239.98,12630.7,-0.575844]];
		_blacklistPos = [];
		antennas = [];
	};
	case "vn_khe_sanh": {
		_posAntennas = 
		[[2603.31,10086,-0.0195313],[13435.9,11139.5,0],[5107.86,11336.4,0],[11235.7,14857.9,0],[13216.8,13966.6,0.118774],[11127.5,9870.3,0.118835],[5026.98,5361.25,0.719513],[9634.73,351.082,0],[9051.56,6547.55,0]];
		_blackListPos = [];
		antennas = [];
	};
	case "cam_lao_nam": {
		_posAntennas =
		[[2247.39,3986.44,0.00225067], [6918.17,5419.54,0], [2947.57,8719.32,0.00744534], [3971.88,10207.1,0], [11382.5,5747.82,8.39233e-005],
		[8700.25,10425.1,-0.00531006], [4898.78,13640.6,-0.120941], [3272.04,15538.2,0], [13743.9,8425.6,-0.171967],
		[14864.6,6866.28,-0.00304413], [16101.4,3639.34,-0.115108], [16074.1,7125.38,0.000450134], [5279.59,16872.8,0.446297], [16120.6,7510.5,0.00740814],
		[16798.7,6349.54,-0.134335], [16567.1,7649.92,-6.48499e-005], [16915.2,7431.9,-9.53674e-006], [11481,14497.6,0.093338],
		[9002.38,16557.6,0.00338745], [16704,9187.21,-6.29425e-005], [14135,12825.5,0.106886], [16193.1,10991.2,-0.0359497], [16956.7,10360.2,-6.67572e-005],
		[18696.2,8463.42,-0.26639], [20109.3,6538.61,9.53674e-007], [20062.7,7258.82,0.0105629], [14532.3,16441.8,-0.00198364], [14754.2,18335.2,0.000380516]];
		_blackListPos = [11, 15, 17, 21, 24, 27];
		antennas = [];
	};
	case "sara": {
		_posAntennas =
		[[3142.96,2739.15,0.18647], [8514.74,7996.98,0.0240936], [11464.1,6307.43,-0.0322723], [11885.1,6210.11,-15.4125],
		[9617.11,9829.03,0], [10214.7,9348.09,0.0702515], [9738.74,9966.7,-0.226944], [10415.5,9761.01,-0.0189056],
		[12621.4,7490.31,0.1297], [12560.1,8362.11,-0.157566], [13328.6,9055.83,0.350442], [4940.89,15457.6,-0.18277],
		[12327.2,15031.4,0], [14788,12762.9,-15.4287], [11068.1,16903.5,-0.0132771], [13964.6,15752.9,-15.429],
		[17263.3,14160.1,-0.1]];
		_blackListPos = [1, 3, 4, 5, 9, 11, 13, 16, 17];
		antennas = [];
	};
	case "cup_chernarus_a3":
	{
		_posAntennas = [[9822.91,10314.4,0],[3707.2,14751.2,0],[7175.2,3018.23,0],[1275.49,6215.75,0],[3688.6,5958.29,0],[13326.2,3256.85,0],[514.324,11082.6,0],[11445.2,7565.58,0],[13326.4,3257.08,0],[6874.77,11458.9,0],[11560.7,11313.6,0],[12936.5,12763.4,0]];
		_posBank = [[6831.07,2433.6,0],[12127.5,9093.7,0],[2832.72,5240.6,0],[10396.5,2266.98,0]];
		_blackListPos = [];
	    antennas = [];
	};
	case "napf":
	{
		_posAntennas = [[15116.9,12587,0], [18100.3,2555.68,0],[8966.71,3432.88,0], [15684.9,19837.4,0],[4974.47,9258.15,0],[10978.2,16960.1,0],[8171.18,14687,0]];
		_posBank = [[8558.25,16204.7,0], [14515,13873.3,0],[6378.62,10606,0],[2418.86,7766.25,0]];
		_blackListPos = [];
	    antennas = [];
	};
	case "abramia":
	{
		_posAntennas = [[9864.87,9258.16,0],[4871.03,8738.64,0],[267.693,9236.51,0],[8953.05,1544.56,0]];
		_posBank = [[7036.69,1171.7,0],[3564.86,3190.53,0],[9405.56,9271.83,0],[1981.93,7714.16,0],[6127.85,3387.11,0]];
		_blackListPos = [];
	    antennas = [];
	};
	case "panthera3":
	{
		_posAntennas = [[8247.17,8508.42,0],[1279.23,7194.89,0],[355.621,3020.95,0],[1260.02,1607.94,0],[4786.39,6836.08,0],[4193.22,3819.86,0],[6536.41,2014.64,0],[6906.09,770.765,0],[6237.4,4675.6,0]];
		_posBank = [[1126.75,5762.61,0],[1247.99,6384.2,0],[188.976,1507.52,0],[161.512,1692.07,0],[159.84,1706.39,0],[197.559,1512.86,0],[2687.69,1548.56,0],[7257.44,5873.08,0]];
		_blackListPos = [];
	    antennas = [];
	};
	case "taviana": {
	    _posAntennas = [[2125.54,7056.53,0],[13270.3,7026.68,0],[22507.8,19886.3,0],[10385.4,18230.1,-0.000144958],[1057.86,18179.6,0.341925],[8381.83,10848.1,0],[7713.27,9080.84,0],[6902.18,8357.42,0],[3764.54,17179.6,0],[9146.62,14856,0],[11146.5,15750.3,0],[9574,4720.8,0],[16310.4,10091.3,0],[17227.3,8238.31,0],[15627.1,5517.46,0],[13994.7,12354.9,0],[14799.2,18632,0],[11333.4,941.792,0]];
	    _posBank = [[5033.44,17475.4,0],[7801.44,4305.77,0],[14850.1,9391.44,0],[11808,15824.6,0],[9202.28,8109.23,0]];
		_blackListPos = [];
	    antennas = [];
	};
	case "gm_weferlingen_summer": {
	    _posAntennas = [[8337.11,233.722,0],[7798.23,19132.5,0],[8059.37,15662.7,0],[13432.6,4127.66,0],[10545.1,11093.3,0],[11652.1,17667,0],[15161.3,2313.79,0],[1262.66,13047,0.535751],[20095.4,6230.95,0]];
	    _posBank = [[18483.4,367.726,0],[17150.2,17916.9,0],[3579.12,15120.9,0],[13593.9,16156.6,0],[13918.9,4854.84,0],[8164.3,4322.03,0]];
		_blackListPos = [];
	    antennas = [];
	};
	case "stratis": {
	    _posAntennas = [[3283.46,2960.78,0]];
	    _posBank = [];
		_blackListPos = [];
	    antennas = [];
	};
	case "blud_vidda": {
	    _posAntennas = [[1694.68,4224.15,0],[7039.14,7377.56,0],[1016.07,3022.08,0],[11360.8,3840.86,0],[5352.11,2864.58,0],[7091.22,11366.6,0],[2229.25,7307.28,0],[11484.7,10539,0],[9586.24,8275.53,0]];
	    _posBank = [[5467.52,1521.78,0],[2697.54,2362.11,0],[663.936,6409.57,0],[8583.59,6901.04,0],[10552.7,6586.09,0]];
		_blackListPos = [];
	    antennas = [];
	};
	case "rhspkl": {
		_posAntennas = [[5418.42,2559.52,0],[3674.47,2705.45,0],[2287.05,6480.78,0],[4552.77,5420.52,0]];
		_posBank = [];
		_blackListPos = [11, 15, 17, 21, 24, 27];
		antennas = [];
	};
	case "lingor3": {
		_posAntennas = [[1817.68,497.62,0],[1229.9,790.104,0],[1910.62,1194.67,0],[3112.08,1492.05,0],[3873.38,1732.36,0],[4464.64,2602.47,0],[1253.68,2668.2,0],[538.699,3192.1,0],[2629.44,9818.01,0],[1741.13,3463.85,0],[8323.76,1223.77,0],[6105.02,3448.71,0],[6304.57,3954.24,0],[6749.56,4442.81,0],[6045.61,5674.38,0],[6197.25,6274.53,0],[6003.96,6722.71,0],[6317.5,6846.85,0],[4154.08,7615.34,0],[8815.87,8023.35,0],[9229.89,5043.07,0],[5707.88,4117.37,0],[5456.02,5563.94,0],[4234.43,4228.4,0],[3497.99,3738.21,0],[507.001,9934.24,0],[1002.589,3137.505,0],[2857.373,3549.940,0],[6116.803,1660.465,0],[4377.535,6760.375,0],[4135.021,1642.403,0],[9253.652,8226.361,0],[5679.58,9555.188,0],[2669.333,6757.543,0]];
		_blackListPos = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,21,22,23,24];
		antennas = [];
	};
	default {
		antennas = nearestObjects [[worldSize /2, worldSize/2], _antennatypes, worldSize];

		banks = nearestObjects [[worldSize /2, worldSize/2], _banktypes, worldSize];

		private _replacedAntennas = [];
		{ _replacedAntennas pushBack ([_x] call _replaceBadAntenna); } forEach antennas;
		antennas = _replacedAntennas;

		antennas apply {
			_mrkFinal = createMarker [format ["Ant%1", mapGridPosition _x], position _x];
			_mrkFinal setMarkerShape "ICON";
			_mrkFinal setMarkerType "loc_Transmitter";
			_mrkFinal setMarkerColor "ColorBlack";
			_mrkFinal setMarkerText "Radio Tower";
			mrkAntennas pushBack _mrkFinal;
			_x addEventHandler [
				"Killed",
				{
					_antenna = _this select 0;
					_antenna removeAllEventHandlers "Killed";

					citiesX apply {
						if ([antennas,_x] call BIS_fnc_nearestPosition == _antenna) then {
							[_x, false] spawn A3A_fnc_blackout;
						};
					};

					_mrk = [mrkAntennas, _antenna] call BIS_fnc_nearestPosition;
					antennas = antennas - [_antenna];
					antennasDead pushBack _antenna;
					deleteMarker _mrk;
					publicVariable "antennas";
					publicVariable "antennasDead";
					["TaskSucceeded", ["", "Radio Tower Destroyed"]] remoteExec ["BIS_fnc_showNotification", teamPlayer];
					["TaskFailed", ["", "Radio Tower Destroyed"]] remoteExec ["BIS_fnc_showNotification", Occupants];
				}
			];
		};
	};
};

if (debug) then {
diag_log format ["%1: [Antistasi] | DEBUG | initZones | Radio Tower built.", servertime];
diag_log format ["%1: [Antistasi] | DEBUG | initZones | Finding broken Radio Towers.", servertime];
};

if (count _posAntennas > 0) then {
	for "_i" from 0 to (count _posAntennas - 1) do {
		_antennaProv = nearestObjects [_posAntennas select _i, _antennaTypes, 35];

		if (count _antennaProv > 0) then {
			_antenna = _antennaProv select 0;

			if (_i in _blacklistPos) then {
				_antenna setdamage 1;
			} else {
				_antenna = ([_antenna] call _replaceBadAntenna);
				antennas pushBack _antenna;
				_mrkFinal = createMarker [format ["Ant%1", mapGridPosition _antenna], _posAntennas select _i];
				_mrkFinal setMarkerShape "ICON";
				_mrkFinal setMarkerType "loc_Transmitter";
				_mrkFinal setMarkerColor "ColorBlack";
				_mrkFinal setMarkerText "Radio Tower";
				mrkAntennas pushBack _mrkFinal;

				_antenna addEventHandler [
					"Killed",
					{
						_antenna = _this select 0;
						_antenna removeAllEventHandlers "Killed";

						citiesX apply {
							if ([antennas, _x] call BIS_fnc_nearestPosition == _antenna) then {
								[_x, false] spawn A3A_fnc_blackout
							};
						};

						_mrk = [mrkAntennas, _antenna] call BIS_fnc_nearestPosition;
						antennas = antennas - [_antenna];
						antennasDead pushBack  _antenna;
						deleteMarker _mrk;
						publicVariable "antennas";
						publicVariable "antennasDead";
						["TaskSucceeded", ["", "Radio Tower Destroyed"]] remoteExec ["BIS_fnc_showNotification", teamPlayer];
						["TaskFailed", ["", "Radio Tower Destroyed"]] remoteExec ["BIS_fnc_showNotification", Occupants];
					}
				];
			};
		};
	};
};

if (debug) then {
diag_log format ["%1: [Antistasi] | DEBUG | initZones | Broken Radio Towers identified.",servertime];
};

if (count _posBank > 0) then {
	for "_i" from 0 to (count _posBank - 1) do {
		_bankProv = nearestObjects [_posBank select _i, _banktypes, 30];

		if (count _bankProv > 0) then {
			private _banco = _bankProv select 0;
			banks = banks + [_banco];
		};
	};
};

// Make list of markers that don't have a proper road nearby
blackListDest = (markersX - controlsX - ["Synd_HQ"] - citiesX) select {
	private _nearRoads = (getMarkerPos _x) nearRoads (([_x] call A3A_fnc_sizeMarker) * 1.5);
//	_nearRoads = _nearRoads inAreaArray _x;
	private _badSurfaces = ["#GdtForest", "#GdtRock", "#GdtGrassTall"];
	private _idx = _nearRoads findIf { !(surfaceType (position _x) in _badSurfaces) && { count roadsConnectedTo _x != 0 } };
	if (_idx == -1) then {true} else {false};
};

publicVariable "blackListDest";
publicVariable "markersX";
publicVariable "citiesX";
publicVariable "airportsX";
publicVariable "milbases";
publicVariable "resourcesX";
publicVariable "factories";
publicVariable "outposts";
publicVariable "controlsX";
publicVariable "seaports";
publicVariable "destroyedSites";
publicVariable "forcedSpawn";
publicVariable "watchpostsFIA";
publicVariable "roadblocksFIA";
publicVariable "aapostsFIA";
publicVariable "atpostsFIA";
publicVariable "mortarpostsFIA";
publicVariable "hmgpostsFIA";
publicVariable "seaMarkers";
publicVariable "spawnPoints";
publicVariable "antennas";
publicVariable "antennasDead";
publicVariable "mrkAntennas";
publicVariable "banks";
publicVariable "seaSpawn";
publicVariable "seaAttackSpawn";
publicVariable "defaultControlIndex";
publicVariable "detectionAreas";

if (isMultiplayer) then {
	[petros, "hint","Zones Init Completed"] remoteExec ["A3A_fnc_commsMP", -2]
};

[2,"initZones completed",_fileName] call A3A_fnc_log;
