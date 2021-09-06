	object_const_def
	const TOROMAMART_CLERK
	const TOROMAMART_HIKER
	const TOROMAMART_COOLTRAINER_F

ToromaMart_MapScripts:
	def_scene_scripts

	def_callbacks

ToromaMartClerkScript:
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .PokeBallsInStock
	pokemart MARTTYPE_STANDARD, MART_TOROMA
	closetext
	end

.PokeBallsInStock:
	pokemart MARTTYPE_STANDARD, MART_TOROMA_DEX
	closetext
	end

ToromaMartHikerScript:
	jumptextfaceplayer ToromaMartHikerText

ToromaMartCooltrainerFScript:
	jumptextfaceplayer ToromaMartCooltrainerFText

ToromaMartHikerText:
	text "If you're going"
	line "on a journey, I"

	para "recommend bringing"
	line "ANTIDOTE."

	para "Poison #MON"
	line "like EKANS live"
	cont "nearby."
	done

ToromaMartCooltrainerFText:
	text "Unfortunately,"
	line "you can't buy"
	cont "BERRIES up here."

	para "You can find"
	line "them on some"
	cont "trees, though."
	done

ToromaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, TOROMA_TOWN, 5
	warp_event  3,  7, TOROMA_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaMartClerkScript, -1
	object_event  9,  6, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaMartHikerScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaMartCooltrainerFScript, -1
