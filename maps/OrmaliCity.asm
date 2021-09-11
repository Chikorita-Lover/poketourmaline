	object_const_def
	const ORMALICITY_FISHER
	const ORMALICITY_LASS
	const ORMALICITY_SUPER_NERD
	const ORMALICITY_GRAMPS
	const ORMALICITY_SCIENTIST
	const ORMALICITY_FRUIT_TREE
	const ORMALICITY_POKE_BALL

OrmaliCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_ORMALI
	endcallback

OrmaliCityFisherScript:
	jumptextfaceplayer OrmaliCityFisherText

OrmaliCityLassScript:
	jumptextfaceplayer OrmaliCityLassText

OrmaliCitySuperNerdScript:
	jumptextfaceplayer OrmaliCitySuperNerdText

OrmaliCityGrampsScript:
	jumptextfaceplayer OrmaliCityGrampsText

OrmaliCityScientistScript:
	checkflag ENGINE_MAP_CARD
	iffalse .GiveMapCard
	jumptextfaceplayer OrmaliCityScientistText
	end
.GiveMapCard
	faceplayer
	opentext
	writetext Text_GiveMapCard
	waitbutton
	getstring STRING_BUFFER_4, .mapcardname
	scall .JumpstdReceiveItem
	setflag ENGINE_MAP_CARD
	writetext GotMapCardText
	waitbutton
	writetext Text_MapCardDesc
	waitbutton
	writetext OrmaliCityScientistText
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.mapcardname
	db "MAP CARD@"

OrmaliCitySign:
	jumptext OrmaliCitySignText

OrmaliStadiumSign:
	jumptext OrmaliStadiumSignText

CedarPokemonAcademySign:
	jumptext CedarPokemonAcademySignText

OrmaliSubwaySign:
	jumptext OrmaliSubwaySignText

OrmaliCityPokecenterSign:
	jumpstd PokecenterSignScript

OrmaliCityMartSign:
	jumpstd MartSignScript

OrmaliCityBallMartSign:
	jumptext OrmaliCityBallMartSignText

OrmaliCityBerryMartSign:
	jumptext OrmaliCityBerryMartSignText

OrmaliCityRareCandy:
	itemball RARE_CANDY

OrmaliCityFruitTree:
	fruittree FRUITTREE_ORMALI_CITY

OrmaliCityHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ORMALI_CITY_HIDDEN_HYPER_POTION

OrmaliCityFisherText:
	text "You can take the"
	line "SUBWAY in any town"

	para "to quickly get to"
	line "another."

	para "Of course, tickets"
	line "aren't free! Hoho!"
	done

OrmaliCityLassText:
	text "The city square"
	line "is my favorite"
	cont "place to be."

	para "The MARTS are so"
	line "nice, and the"

	para "fountain is so"
	line "relaxing!"
	done

OrmaliCitySuperNerdText:
	text "Have you been"
	line "to the new GYM?"

	para "Just recently, a"
	line "#MON GYM was"

	para "added to the OR-"
	line "MALI STADIUM."

	para "STIKULRA even"
	line "got selected as"
	cont "the GYM LEADER!"
	done

OrmaliCityGrampsText:
	text "People say that"
	line "ORMALI CITY's best"

	para "feature is its"
	line "STADIUM."

	para "The one run by"
	line "those obnoxious"
	cont "teens? My, oh my!"
	done

OrmaliCityScientistText:
	text "If you're inte-"
	line "rested in more"

	para "GEAR CARDs, stop"
	line "by the ??? in"
	cont "???!"
	done

Text_GiveMapCard:
	text "Hello--I'm a worker"
	line "from ???."

	para "We're running a"
	line "promotional and"

	para "giving out free"
	line "GEAR CARDs."

	para "Here, try one!"
	done

GotMapCardText:
	text "<PLAYER>'s #GEAR"
	line "now has a MAP!"
	done

Text_MapCardDesc:
	text "GEAR CARDs can"
	line "be plugged into"
	cont "your #GEAR."

	para "The MAP CARD can"
	line "show you a map"
	cont "of STIKOPA!"
	done

OrmaliCitySignText:
	text "ORMALI CITY"

	para "The Star City"
	line "of STIKOPA"
	done

OrmaliStadiumSignText:
	text "ORMALI CITY"
	line "STADIUM"
	
	para "GYM LEADER:"
	line "STIKULRA"

	para "The STADIUM's Gra-"
	line "ceful Demiqueen"
	done

CedarPokemonAcademySignText:
	text "CEDAR #MON"
	line "ACADEMY"
	done

OrmaliSubwaySignText:
	text "ORMALI SUBWAY"
	done

OrmaliCityBallMartSignText:
	text "ORMALI CITY"
	line "BALL MART"

	para "Good BALLS for"
	line "good prices"
	done

OrmaliCityBerryMartSignText:
	text "ORMALI CITY"
	line "BERRY MART"
	done

OrmaliCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 31, 11, ORMALI_MART, 2
	warp_event  8, 17, ORMALI_GYM, 1
	warp_event 10, 17, ORMALI_GYM, 3
	warp_event 38,  5, EARLS_POKEMON_ACADEMY, 1
	warp_event 41, 25, ORMALI_NICKNAME_SPEECH_HOUSE, 1
	warp_event 27, 11, ORMALI_POKECENTER_1F, 1
	warp_event 22,  5, ORMALI_KYLES_HOUSE, 1
	warp_event  8,  5, ORMALI_SUBWAY, 1
	warp_event 10,  5, ORMALI_SUBWAY, 2
	warp_event 35, 20, ORMALI_BALL_MART, 1
	warp_event 35, 21, ORMALI_BALL_MART, 2
	warp_event 51, 23, ORMALI_BERRY_MART, 1

	def_coord_events

	def_bg_events
	bg_event  2, 27, BGEVENT_READ, OrmaliCitySign
	bg_event 10, 21, BGEVENT_READ, OrmaliStadiumSign
	bg_event 35,  5, BGEVENT_READ, CedarPokemonAcademySign
	bg_event  8,  7, BGEVENT_READ, OrmaliSubwaySign
	bg_event 28, 11, BGEVENT_READ, OrmaliCityPokecenterSign
	bg_event 32, 11, BGEVENT_READ, OrmaliCityMartSign
	bg_event 35, 19, BGEVENT_READ, OrmaliCityBallMartSign
	bg_event 52, 24, BGEVENT_READ, OrmaliCityBerryMartSign
	bg_event  6, 32, BGEVENT_ITEM, OrmaliCityHiddenHyperPotion

	def_object_events
	object_event 12,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OrmaliCityFisherScript, -1
	object_event 31, 19, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliCityLassScript, -1
	object_event  8, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 3, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliCitySuperNerdScript, -1
	object_event 26,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliCityGrampsScript, -1
	object_event  9, 26, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliCityScientistScript, -1
	object_event 55, 23, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliCityFruitTree, -1
	object_event 59,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OrmaliCityRareCandy, EVENT_ORMALI_CITY_RARE_CANDY
