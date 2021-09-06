	object_const_def
	const TOROMAPOKECENTER1F_NURSE
	const TOROMAPOKECENTER1F_GAMEBOY_KID
	const TOROMAPOKECENTER1F_GENTLEMAN
	const TOROMAPOKECENTER1F_YOUNGSTER

ToromaPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

ToromaPokecenterNurse:
	jumpstd PokecenterNurseScript

ToromaPokecenter1FGameboyKidScript:
	jumptextfaceplayer ToromaPokecenter1FGameboyKidText

ToromaPokecenter1FGentlemanScript:
	jumptextfaceplayer ToromaPokecenter1FGentlemanText

ToromaPokecenter1FYoungsterScript:
	jumptextfaceplayer ToromaPokecenter1FYoungsterText

ToromaPokecenter1FGameboyKidText:
	text "A guy named BILL"
	line "made the #MON"
	cont "PC storage system."
	done

ToromaPokecenter1FGentlemanText:
	text "It was around"
	line "three years ago."

	para "TEAM ROCKET was up"
	line "to no good with"
	cont "#MON."

	para "But justice pre-"
	line "vailed--a young"
	cont "kid broke 'em up."
	done

ToromaPokecenter1FYoungsterText:
	text "#MON are smart."
	line "They won't obey a"

	para "trainer they don't"
	line "respect."

	para "Without the right"
	line "GYM BADGES, they"

	para "will just do as"
	line "they please."
	done

ToromaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, TOROMA_TOWN, 4
	warp_event  4,  7, TOROMA_TOWN, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaPokecenterNurse, -1
	object_event  7,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ToromaPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaPokecenter1FGentlemanScript, -1
	object_event  8,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ToromaPokecenter1FYoungsterScript, -1
