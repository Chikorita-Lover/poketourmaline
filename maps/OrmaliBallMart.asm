	object_const_def
	const ORMALIBALLMART_CLERK
	const ORMALIBALLMART_MYCOMANIAC
	const ORMALIBALLMART_COOLTRAINER_F

OrmaliBallMart_MapScripts:
	def_scene_scripts

	def_callbacks

OrmaliBallMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ORMALI_BALLS
	closetext
	end

OrmaliBallMartMycomaniacScript:
	jumptextfaceplayer OrmaliBallMartMycomaniacText

OrmaliBallMartCooltrainerFScript:
	jumptextfaceplayer OrmaliBallMartCooltrainerFText

OrmaliBallMartMycomaniacText:
	text "You can make di-"
	line "fferent types of"

	para "APRICORNS into"
	line "different BALLs."

	para "I hear there's so-"
	line "meone in ESMARA"

  para "TOWN who'll do just"
  line "that for free."
	done

OrmaliBallMartCooltrainerFText:
	text "Each BALL has its"
	line "unique properties."

	para "For example, a"
	line "DUSK BALL will"

	para "easily catch"
	line "#MON in the."
  cont "dark."
	done

OrmaliBallMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  8, ORMALI_CITY, 11
	warp_event  0,  9, ORMALI_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliBallMartClerkScript, -1
	object_event  8, 11, SPRITE_MYCOMANIAC, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliBallMartMycomaniacScript, -1
	object_event 10,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliBallMartCooltrainerFScript, -1
	object_event  3,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliBallMartCooltrainerFScript, -1
