// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: territories.sqf
//	@file Author: AgentRev

// Territory system definitions. See territory/README.md for more details.
//
// 1 - Territory marker name. Must begin with 'TERRITORY_'
// 2 - Descriptive name
// 3 - Monetary value
// 4 - Territory category, currently unused. See territory/README.md for details.

[
	["TERRITORY_IPOTA", "Ipota / Hotel Resort", 500],
	["TERRITORY_YANUKKA", "Yannukka", 500],
	["TERRITORY_KATKOULA", "Katkoula", 500],
	["TERRITORY_RAUTAKE", "Rautake", 500],
	["TERRITORY_BALAVU", "Balavu", 500],
	["TERRITORY_TAVU", "Tavu", 500], 
	["TERRITORY_BELFORT", "Belfort", 500],
	["TERRITORY_TUVANAKA", "Tuvanaka", 500], 
	["TERRITORY_LIJNHAVEN", "Lijnhaven", 500],
	["TERRITORY_MODDERGAT", "Moddergat", 500],
	["TERRITORY_HARCOURT", "Harcourt", 500],
	["TERRITORY_DOODSTIL", "Doodstil", 500],
	["TERRITORY_KOTOMO", "Kotomo", 500],
	["TERRITORY_NICOLET_PETIT", "Petit Nicolet", 500],
	["TERRITORY_BLERICK", "Blerick", 500],
	["TERRITORY_LAMI", "Lami", 500],
	["TERRITORY_LIFOU", "Lifou", 500],
	["TERRITORY_REGINA", "Regina", 500],
	["TERRITORY_GEORGETOWN_SOUTH", "Georgetown South", 500],
	["TERRITORY_GEORGETOWN_NORTH", "Georgetown North", 500],
	["TERRITORY_SAINTJULIEN", "Saint Julien", 500],
	["TERRITORY_NICOLET", "Nicolet", 500],
	["TERRITORY_LAROCHELLE_EAST", "La Rochelle East", 500],
	["TERRITORY_LAROCHELLE_WEST", "La Rochelle West", 500],
	["TERRITORY_BLUEPEARL", "Blue Pearl Harbor", 500],
	["TERRITORY_NANDAI", "Nandai", 500],
	["TERRITORY_LUGANVILLE", "Luganville", 500],
	["TERRITORY_OUMERE", "Ouméré", 500],
	["TERRITORY_VAGALALA", "Vagalala", 500],
	["TERRITORY_TANOUKA_SOUTH", "Tanouka South", 500],
	["TERRITORY_TANOUKA_NORTH", "Tanouka North", 500],
	["TERRITORY_REDSPRING_SLUM", "Red Spring Slums", 500]
]

//copyToClipboard str ((allMapMarkers select {_x select [0,10] == "TERRITORY_"}) apply {[_x, markerText _x, 500, ""]})
