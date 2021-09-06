	object_const_def
	const ORMALIBERRYMART_CLERK
  const ORMALIBERRYMART_TEACHER
  const ORMALIBERRYMART_COOLTRAINER_M

OrmaliBerryMart_MapScripts:
	def_scene_scripts

	def_callbacks

OrmaliBerryMartClerkScript:
  opentext
	pokemart MARTTYPE_STANDARD, BERRY_MART_ORMALI
	closetext
	end

OrmaliBerryMartTeacherScript:
  jumptextfaceplayer OrmaliBerryMartTeacherText

OrmaliBerryMartCooltrainerMScript:
  jumptextfaceplayer OrmaliBerryMartCooltrainerMText

OrmaliBerryMartTeacherText:
  text "Each town in"
  line "STIKOPA has its"
  cont "own BERRY MART."

  para "You should visit"
  line "each one for a"
  cont "diverse selection!"
  done

OrmaliBerryMartCooltrainerMText:
  text "If you're challe-"
  line "nging the ORMALI"

  para "STADIUM GYM, you"
  line "should buy some"

  para "PECHA and KEBIA"
  line "BERRIES."

  para "They're helpful"
  line "against poison"
  cont "#MON!"
  done

OrmaliBerryMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ORMALI_CITY, 12
  warp_event  4,  7, ORMALI_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliBerryMartClerkScript, -1
  object_event  6,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliBerryMartTeacherScript, -1
  object_event  9,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliBerryMartCooltrainerMScript, -1
