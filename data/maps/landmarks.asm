landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark  20, 100, ToromaTownName
	landmark  24, 108, Route3Name
	landmark  36, 108, DevilsShaftName
	landmark  48, 108, OrmaliOutskirtsName
	landmark  60, 108, OrmaliCityName
	landmark  60,  92, Route1Name
	landmark  52,  68, UnionCaveName
	landmark  68,  68, GoldenrodCityName
	landmark  60,  52, Route4Name
	landmark  36,  36, EsmaraTownName
	landmark  44,  36, IlexForestName
	landmark  84,  40, ShinaiaForestName
	landmark 100,  44, ShinaiaTownName
	landmark 100,  32, Route5Name
	landmark 100,  20, ToparaTownName
	landmark  76, 108, Route2Name
	landmark 108, 108, CianwoodCityName
	landmark 132,  68, MountVolatteName
	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName
	landmark  52,  76, ViridianCityName
	landmark  52,  52, PewterCityName
	landmark  76,  52, MtMoonName
	landmark 100,  52, CeruleanCityName
	landmark 100,  44, Route24Name
	landmark 108,  36, Route25Name
	landmark 108,  76, UndergroundName
	landmark 100,  76, Route6Name
	landmark 100,  84, VermilionCityName
	landmark  88,  60, DiglettsCaveName
	landmark  88,  68, Route7Name
	landmark 116,  68, Route8Name
	landmark 116,  52, Route9Name
	landmark 132,  52, RockTunnelName
	landmark 132,  56, Route10Name
	landmark 132,  60, PowerPlantName
	landmark 132,  68, LavenderTownName
	landmark 140,  68, LavRadioTowerName
	landmark  76,  68, CeladonCityName
	landmark 100,  68, SaffronCityName
	landmark 116,  84, Route11Name
	landmark 132,  80, Route12Name
	landmark 124, 100, Route13Name
	landmark 116, 112, Route14Name
	landmark 104, 116, Route15Name
	landmark  68,  68, Route16Name
	landmark  68,  92, Route17Name
	landmark  80, 116, Route18Name
	landmark  92, 116, FuchsiaCityName
	landmark  92, 128, Route19Name
	landmark  76, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  52, 120, Route21Name
	landmark  36,  68, Route22Name
	landmark  28,  52, VictoryRoadName
	landmark  28,  44, Route23Name
	landmark  28,  36, IndigoPlateauName
	landmark  28,  92, Route26Name
	landmark  20, 100, Route27Name
	landmark  12, 100, TohjoFallsName
	landmark  20,  68, Route28Name
	landmark 140, 116, FastShipName
	assert_table_length NUM_LANDMARKS

ToromaTownName:      db "TOROMA TOWN@"
CherrygroveCityName: db "CHERRYGROVE¯CITY@"
OrmaliCityName:      db "ORMALI CITY@"
EsmaraTownName:      db "ESMARA TOWN@"
GoldenrodCityName:   db "GOLDENROD¯CITY@"
ToparaTownName:      db "TOPARA TOWN@"
ShinaiaTownName:     db "SHINAIA¯TOWN@"
OlivineCityName:     db "OLIVINE¯CITY@"
CianwoodCityName:    db "CIANWOOD¯CITY@"
MahoganyTownName:    db "MAHOGANY¯TOWN@"
BlackthornCityName:  db "BLACKTHORN¯CITY@"
LakeOfRageName:      db "LAKE OF¯RAGE@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT¯TOWER@"
RuinsOfAlphName:     db "RUINS¯OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE¯WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL¯PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL¯ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S¯DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN¯CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN¯CITY@"
LavenderTownName:    db "LAVENDER¯TOWN@"
VermilionCityName:   db "VERMILION¯CITY@"
CeladonCityName:     db "CELADON¯CITY@"
SaffronCityName:     db "SAFFRON¯CITY@"
FuchsiaCityName:     db "FUCHSIA¯CITY@"
CinnabarIslandName:  db "CINNABAR¯ISLAND@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "VICTORY¯ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV¯RADIO TOWER@"
SilphCoName:         db "SILPH CO.@" ; unreferenced
SafariZoneName:      db "SAFARI ZONE@" ; unreferenced
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
PokemonMansionName:  db "#MON¯MANSION@" ; unreferenced
CeruleanCaveName:    db "CERULEAN¯CAVE@" ; unreferenced
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
DevilsShaftName:     db "DEVIL'S¯SHAFT@"
OrmaliOutskirtsName: db "ORMALI¯OUTSKIRTS@"
ShinaiaForestName:   db "SHINAIA¯FOREST@"
MountVolatteName:    db "MOUNT¯VOLATTE@"
DarkCaveName:        db "DARK CAVE@"
IlexForestName:      db "ILEX¯FOREST@"
BurnedTowerName:     db "BURNED¯TOWER@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN¯FOREST@" ; unreferenced
DiglettsCaveName:    db "DIGLETT'S¯CAVE@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE¯TOWER@"
SpecialMapName:      db "SPECIAL@"
