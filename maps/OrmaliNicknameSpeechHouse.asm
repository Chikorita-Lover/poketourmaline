	object_const_def
	const ORMALINICKNAMESPEECHHOUSE_TEACHER
	const ORMALINICKNAMESPEECHHOUSE_LASS
	const ORMALINICKNAMESPEECHHOUSE_BIRD

OrmaliNicknameSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

OrmaliNicknameSpeechHouseTeacherScript:
	jumptextfaceplayer OrmaliNicknameSpeechHouseTeacherText

OrmaliNicknameSpeechHouseLassScript:
	jumptextfaceplayer OrmaliNicknameSpeechHouseLassText

OrmaliNicknameSpeechHouseBirdScript:
	faceplayer
	opentext
	writetext OrmaliNicknameSpeechHouseBirdText
	cry PIDGEY
	waitbutton
	closetext
	end

OrmaliNicknameSpeechHouseTeacherText:
	text "She uses the names"
	line "of her favorite"
	cont "things to eat."

	para "For the nicknames"
	line "she gives to her"
	cont "#MON, I mean."
	done

OrmaliNicknameSpeechHouseLassText:
	text "I call my PIDGEY"
	line "STRAWBERRY!"
	done

OrmaliNicknameSpeechHouseBirdText:
	text "STRAWBERRY: Pijji!"
	done

OrmaliNicknameSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ORMALI_CITY, 4
	warp_event  4,  7, ORMALI_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliNicknameSpeechHouseTeacherScript, -1
	object_event  6,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OrmaliNicknameSpeechHouseLassScript, -1
	object_event  5,  2, SPRITE_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OrmaliNicknameSpeechHouseBirdScript, -1
