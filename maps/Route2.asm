	object_const_def
	const ROUTE2_MYCOMANIAC1
	const ROUTE2_MYCOMANIAC2
	const ROUTE2_MYCOMANIAC3
	const ROUTE2_POKE_BALL1
	const ROUTE2_POKE_BALL2
	const ROUTE2_POKE_BALL3
	const ROUTE2_POKE_BALL4
	const ROUTE2_FRUIT_TREE

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerMycomaniacRob:
	trainer MYCOMANIAC, ROB, EVENT_BEAT_MYCOMANIAC_ROB, MycomaniacRobSeenText, MycomaniacRobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MycomaniacRobAfterBattleText
	waitbutton
	closetext
	end

TrainerMycomaniacEd:
	trainer MYCOMANIAC, ED, EVENT_BEAT_MYCOMANIAC_ED, MycomaniacEdSeenText, MycomaniacEdBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MycomaniacEdAfterBattleText
	waitbutton
	closetext
	end

TrainerMycomaniacDoug:
	trainer MYCOMANIAC, DOUG, EVENT_BEAT_MYCOMANIAC_DOUG, MycomaniacDougSeenText, MycomaniacDougBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MycomaniacDougAfterBattleText
	waitbutton
	closetext
	end

Route2Sign:
	jumptext Route2SignText

Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText

Route2DireHit:
	itemball DIRE_HIT

Route2MaxPotion:
	itemball MAX_POTION

Route2Carbos:
	itemball CARBOS

Route2Elixer:
	itemball ELIXER

Route2FruitTree:
	fruittree FRUITTREE_ROUTE_2

Route2HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_2_HIDDEN_MAX_ETHER

Route2HiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_2_HIDDEN_FULL_HEAL

Route2HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_2_HIDDEN_FULL_RESTORE

Route2HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_2_HIDDEN_REVIVE

MycomaniacRobSeenText:
	text "My bug #MON are"
	line "tough. Prepare to"
	cont "lose!"
	done

MycomaniacRobBeatenText:
	text "I was whipped…"
	done

MycomaniacRobAfterBattleText:
	text "I'm going to look"
	line "for stronger bug"
	cont "#MON."
	done

MycomaniacEdSeenText:
	text "If you walk in"
	line "tall grass wearing"

	para "shorts, do you get"
	line "nicks and cuts?"
	done

MycomaniacEdBeatenText:
	text "Ouch, ouch, ouch!"
	done

MycomaniacEdAfterBattleText:
	text "They'll really"
	line "sting when you"
	cont "take a bath."
	done

MycomaniacDougSeenText:
	text "Why don't girls"
	line "like bug #MON?"
	done

MycomaniacDougBeatenText:
	text "No good!"
	done

MycomaniacDougAfterBattleText:
	text "Bug #MON squish"
	line "like plush toys"

	para "when you squeeze"
	line "their bellies."

	para "I love how they"
	line "feel!"
	done

Route2SignText:
	text "ROUTE 2"

	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done

Route2DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 15, ROUTE_2_NUGGET_HOUSE, 1
	warp_event 15, 31, ROUTE_2_GATE, 3
	warp_event 16, 27, ROUTE_2_GATE, 1
	warp_event 17, 27, ROUTE_2_GATE, 2
	warp_event 12,  7, DIGLETTS_CAVE, 3

	def_coord_events

	def_bg_events
	bg_event  7, 51, BGEVENT_READ, Route2Sign
	bg_event 11,  9, BGEVENT_READ, Route2DiglettsCaveSign
	bg_event  7, 23, BGEVENT_ITEM, Route2HiddenMaxEther
	bg_event  4, 14, BGEVENT_ITEM, Route2HiddenFullHeal
	bg_event  4, 27, BGEVENT_ITEM, Route2HiddenFullRestore
	bg_event 11, 30, BGEVENT_ITEM, Route2HiddenRevive

	def_object_events
	object_event 10, 45, SPRITE_MYCOMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerMycomaniacRob, -1
	object_event  6,  4, SPRITE_MYCOMANIAC, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerMycomaniacEd, -1
	object_event  0, 40, SPRITE_MYCOMANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerMycomaniacDoug, -1
	object_event  0, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2DireHit, EVENT_ROUTE_2_DIRE_HIT
	object_event  2, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MaxPotion, EVENT_ROUTE_2_MAX_POTION
	object_event 19,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Carbos, EVENT_ROUTE_2_CARBOS
	object_event 14, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Elixer, EVENT_ROUTE_2_ELIXER
	object_event 10, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2FruitTree, -1
