	object_const_def
	const ROUTE31ORMALIGATE_OFFICER
	const ROUTE31ORMALIGATE_COOLTRAINER_F

Route31OrmaliGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route31OrmaliGateOfficerScript:
	jumptextfaceplayer Route31OrmaliGateOfficerText

Route31OrmaliGateCooltrainerFScript:
	jumptextfaceplayer Route31OrmaliGateCooltrainerFText

Route31OrmaliGateOfficerText:
	text "Hi there!"
	line "Did you visit"
	cont "SPROUT TOWER?"
	done

Route31OrmaliGateCooltrainerFText:
	text "I came too far"
	line "out. I'd better"
	cont "phone home!"
	done

Route31OrmaliGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ORMALI_CITY, 8
	warp_event  0,  5, ORMALI_CITY, 9
	warp_event  9,  4, ROUTE_31, 1
	warp_event  9,  5, ROUTE_31, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route31OrmaliGateOfficerScript, -1
	object_event  1,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route31OrmaliGateCooltrainerFScript, -1
