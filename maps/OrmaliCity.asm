	object_const_def
	const ORMALICITY_EARL
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

OrmaliCityEarlScript:
	applymovement ORMALICITY_EARL, OrmaliCitySpinningEarl_MovementData
	faceplayer
	opentext
	writetext Text_EarlAsksIfYouBeatStikulra
	yesorno
	iffalse .FollowEarl
	writetext Text_VeryNiceIndeed
	waitbutton
	closetext
	end

.FollowEarl:
	writetext Text_FollowEarl
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow ORMALICITY_EARL, PLAYER
	applymovement ORMALICITY_EARL, OrmaliCityFollowEarl_MovementData
	turnobject PLAYER, UP
	applymovement ORMALICITY_EARL, OrmaliCitySpinningEarl_MovementData
	stopfollow
	special RestartMapMusic
	opentext
	writetext Text_HereTeacherIAm
	waitbutton
	closetext
	applymovement ORMALICITY_EARL, OrmaliCitySpinningEarl_MovementData
	applymovement ORMALICITY_EARL, OrmaliCityFinishFollowEarl_MovementData
	playsound SFX_ENTER_DOOR
	disappear ORMALICITY_EARL
	clearevent EVENT_EARLS_ACADEMY_EARL
	waitsfx
	end

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

OrmaliCityRareCandy:
	itemball RARE_CANDY

OrmaliCityFruitTree:
	fruittree FRUITTREE_ORMALI_CITY

OrmaliCityHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ORMALI_CITY_HIDDEN_HYPER_POTION

OrmaliCityFollowEarl_MovementData:
	big_step DOWN
	big_step DOWN
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	big_step DOWN
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	big_step UP
	turn_head DOWN
	step_end

OrmaliCityFinishFollowEarl_MovementData:
	step UP
	step_end

OrmaliCitySpinningEarl_MovementData:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

Text_EarlAsksIfYouBeatStikulra:
	text "Hello!"
	line "You are trainer?"

	para "Battle GYM LEADER,"
	line "win you did?"
	done

Text_VeryNiceIndeed:
	text "Ooh, la la!"
	line "Very indeed nice!"
	done

Text_FollowEarl:
	text "Is that so? Then"
	line "study shall you!"
	cont "Follow me!"
	done

Text_HereTeacherIAm:
	text "Here, teacher I"
	line "am. Good it is"
	cont "you study here!"
	done

OrmaliCityLassText:
	text "Have you been to"
	line "the DEPARTMENT"
	cont "STORE yet?"

	para "I absolutely love"
	line "their apparel"
	cont "section!"
	done

OrmaliCitySuperNerdText:
	text "Have you heard"
	line "of the new GYM?"

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

	para "features are its"
	line "STADIUM or DEPA-"
	cont "RTMENT STORE."

	para "My, those are"
	line "overrated!"
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
	warp_event  8,  5, ROUTE_31_ORMALI_GATE, 1
	warp_event 10,  5, ROUTE_31_ORMALI_GATE, 2
	warp_event 35, 20, ORMALI_BALL_MART, 1
	warp_event 35, 21, ORMALI_BALL_MART, 2
	warp_event 51, 23, ORMALI_BERRY_MART, 1

	def_coord_events

	def_bg_events
	bg_event  2, 27, BGEVENT_READ, OrmaliCitySign
	bg_event 12, 19, BGEVENT_READ, OrmaliStadiumSign
	bg_event 40,  7, BGEVENT_READ, CedarPokemonAcademySign
	bg_event 15,  5, BGEVENT_READ, OrmaliSubwaySign
	bg_event 28, 11, BGEVENT_READ, OrmaliCityPokecenterSign
	bg_event 32, 11, BGEVENT_READ, OrmaliCityMartSign
	bg_event  6, 32, BGEVENT_ITEM, OrmaliCityHiddenHyperPotion

	def_object_events
	object_event 11,  8, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OrmaliCityEarlScript, EVENT_ORMALI_CITY_EARL
	object_event 31, 19, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OrmaliCityLassScript, -1
	object_event  9, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OrmaliCitySuperNerdScript, -1
	object_event 26,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliCityGrampsScript, -1
	object_event  9, 27, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliCityScientistScript, -1
	object_event 55, 23, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliCityFruitTree, -1
	object_event 59,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OrmaliCityRareCandy, EVENT_ORMALI_CITY_RARE_CANDY
