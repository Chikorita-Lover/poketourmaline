	object_const_def
	const TOROMASUBWAY_ATTENDENT1
	const TOROMASUBWAY_ATTENDENT2
	const TOROMASUBWAY_GAMEBOY_KID
	const TOROMASUBWAY_ROCKER
	const TOROMASUBWAY_COOLTRAINER_F
	const TOROMASUBWAY_TOGEPI

ToromaSubway_MapScripts:
	def_scene_scripts

	def_callbacks

ToromaSubwayCounterAttendentScript:
	jumpstd SubwayCounterAttendentScript

ToromaSubwayBoardingAttendentScript:
;	jumpstd SubwayBoardingAttendentScript
	opentext
	writetext ToromaSubwayBoardingAttendentText
	waitbutton
	closetext
	applymovement PLAYER, ToromaSubway_TurnBack
	end

ToromaSubwayGameboyKidScript:
	jumptextfaceplayer ToromaSubwayGameboyKidText

ToromaSubwayRockerScript:
	jumptextfaceplayer ToromaSubwayRockerText

ToromaSubwayCooltrainerFScript:
	jumptextfaceplayer ToromaSubwayCooltrainerFText

ToromaSubwayTogepiScript:
	opentext
	writetext ToromaSubwayTogepiText
	cry TOGEPI
	waitbutton
	closetext
	end

ToromaSubway_TurnBack:
	step DOWN
	step_end

ToromaSubwayBoardingAttendentText:
	text "Sorry--the train"
	line "isn't available"

	para "for service at"
	line "the moment."
	done

ToromaSubwayGameboyKidText:
	text "Hike down DE-"
	line "VIL'S SHAFT?"

	para "No way!"

	para "I'm no HIKER or"
	line "COOLTRAINER or"
	cont "anything!"
	done

ToromaSubwayRockerText:
	text "Most people com-"
	line "plain about"

	para "taking DEVIL'S"
	line "SHAFT because of"
	cont "the hike down."

	para "I'm just trying"
	line "to avoid some"
	cont "annoying guy who"

	para "keeps challenging"
	line "me to battles."
	done

ToromaSubwayCooltrainerFText:
	text "Once TOGEPI evo-"
	line "lves into TOGETIC,"

	para "we'll FLY to"
	line "get around."

	para "For now, we'll"
	line "just have to"
	cont "take the SUBWAY."
	done

ToromaSubwayTogepiText:
	text "TOGEPI: Togeto!"
	done

ToromaSubway_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 13, TOROMA_TOWN, 7
	warp_event  7, 13, TOROMA_TOWN, 7
	warp_event 12, 13, TOROMA_TOWN, 8
	warp_event 13, 13, TOROMA_TOWN, 8

	def_coord_events
	coord_event 13, 5, -1, ToromaSubwayBoardingAttendentScript

	def_bg_events

	def_object_events
	object_event  3,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ToromaSubwayCounterAttendentScript, -1
	object_event 14,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ToromaSubwayBoardingAttendentScript, -1
	object_event  0, 12, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaSubwayGameboyKidScript, -1
	object_event 10, 11, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaSubwayRockerScript, -1
	object_event 18,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaSubwayCooltrainerFScript, -1
	object_event 19,  4, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ToromaSubwayTogepiScript, -1
