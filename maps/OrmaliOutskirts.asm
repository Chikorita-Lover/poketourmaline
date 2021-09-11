	object_const_def
	const ORMALIOUTSKIRTS_HIKER
	const ORMALIOUTSKIRTS_POKE_BALL

OrmaliOutskirts_MapScripts:
	def_scene_scripts

	def_callbacks

OrmaliOutskirtsHikerScript:
	jumptextfaceplayer OrmaliOutskirtsHikerText

OrmaliOutskirtsEverstone:
	itemball EVERSTONE

OrmaliOutskirtsSign1:
	jumptext OrmaliOutskirtsSign1Text

DevilsShaftSign:
	jumptext DevilsShaftSignText

AlertGeodudeSign:
	jumptext AlertGeodudeSignText

OrmaliOutskirtsSign2:
	jumptext OrmaliOutskirtsSign2Text

OrmaliOutskirtsHikerText:
	text "Me and my #MON"
	line "need a break."

	para "We just got"
	line "through DEVIL'S"
	cont "SHAFT, and there"

	para "are too many"
	line "trainers here!"
	done

OrmaliOutskirtsSign1Text:
	text "ORMALI OUTSKIRTS"

	para "DEVIL'S SHAFT"
	line "- ORMALI CITY"
	done

DevilsShaftSignText:
	text "DEVIL'S SHAFT"

	para "The Cave That"
	line "Worships the Stars"
	done

AlertGeodudeSignText:
	text "ALERT: GEODUDE"
	line "may be found in"
	cont "the ground"

	para "disguised as"
	line "rocks. Please"
	cont "be cautious."
	done

OrmaliOutskirtsSign2Text:
	text "ORMALI OUTSKIRTS"

	para "ORMALI CITY -"
	line "DEVIL'S SHAFT"
	done

OrmaliOutskirts_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, DEVILS_SHAFT_B1F, 2

	def_coord_events

	def_bg_events
	bg_event  6,  9, BGEVENT_READ, OrmaliOutskirtsSign1
	bg_event  8,  4, BGEVENT_READ, DevilsShaftSign
	bg_event 27,  8, BGEVENT_READ, AlertGeodudeSign
	bg_event 76, 10, BGEVENT_READ, OrmaliOutskirtsSign2

	def_object_events
	object_event 11,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OrmaliOutskirtsHikerScript, -1
	object_event 72,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OrmaliOutskirtsEverstone, EVENT_ORMALI_OUTSKIRTS_EVERSTONE
