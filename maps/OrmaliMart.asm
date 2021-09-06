	object_const_def
	const ORMALIMART_CLERK
	const ORMALIMART_GRANNY
	const ORMALIMART_COOLTRAINER_M

OrmaliMart_MapScripts:
	def_scene_scripts

	def_callbacks

OrmaliMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ORMALI
	closetext
	end

OrmaliMartGrannyScript:
	jumptextfaceplayer OrmaliMartGrannyText

OrmaliMartCooltrainerMScript:
	jumptextfaceplayer OrmaliMartCooltrainerMText

OrmaliMartGrannyText:
	text "When you first"
	line "catch a #MON,"
	cont "it may be weak."

	para "But it will even-"
	line "tually grow to be"
	cont "strong."

	para "It's important to"
	line "treat #MON with"
	cont "love."
	done

OrmaliMartCooltrainerMText:
	text "#MON can hold"
	line "items like POTION"
	cont "and ANTIDOTE."

	para "But they don't"
	line "appear to know how"

	para "to use manmade"
	line "items."
	done

OrmaliMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ORMALI_CITY, 2
	warp_event  3,  7, ORMALI_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliMartClerkScript, -1
	object_event  7,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliMartGrannyScript, -1
	object_event  5,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OrmaliMartCooltrainerMScript, -1
