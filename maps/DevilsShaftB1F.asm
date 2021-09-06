	object_const_def
	const DEVILSSHAFTB1F_STIKE

DevilsShaftB1F_MapScripts:
	def_scene_scripts

	def_callbacks

DevilsShaftB1F_StikeEncounterScene:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	playsound SFX_ENTER_DOOR
	pause 15
	applymovement DEVILSSHAFTB1F_STIKE, DevilsShaftB1F_StikeEncounterMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext DevilsShaftB1F_StikeSeenText
	waitbutton
	closetext
	winlosstext DevilsShaftB1F_StikeWinText, DevilsShaftB1F_StikeLossText
	setlasttalked DEVILSSHAFTB1F_STIKE
	loadtrainer RIVAL1, STIKE_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext DevilsShaftB1F_StikeYouWonText
	waitbutton
	closetext
	applymovement DEVILSSHAFTB1F_STIKE, DevilsShaftB1F_StikeDefeatMovement
	disappear DEVILSSHAFTB1F_STIKE
	playsound SFX_EXIT_BUILDING
	waitsfx
	special HealParty
	playmapmusic
	end

DevilsShaftB1F_StikeEncounterMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

DevilsShaftB1F_StikeDefeatMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

DevilsShaftB1F_StikeSeenText:
	text "Oof!"

	para "Outta the way,"
	line "bowling pin!"
	done

DevilsShaftB1F_StikeWinText:
	text "PIKACHU!"
	line "SANDSHREW…!"
	done

DevilsShaftB1F_StikeLossText:
	text "See? I knew those"
	line "moves would do it!"
	done

DevilsShaftB1F_StikeYouWonText:
	text "Hey, cut it!"
	line "Yeesh!"

	para "Fine fine,"
	line "I'm sorry…"

	para "Actually, what's"
	line "your name?"

	para "<PLAYER>? Mmkay,"
	line "add that name to"
	cont "the list…"

	para "Okay okay, I'm"
	line "kidding."

	para "My name's STIKE,"
	line "and we've been"

	para "looking for"
	line "SKARMORY. Have"
	cont "you seen any?"

	para "Ehh, it's what-"
	line "ever. We're gonna"
	cont "go, see ya."
	done

DevilsShaftB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, DEVILS_SHAFT_1F, 2
	warp_event 15, 21, ORMALI_OUTSKIRTS, 1

	def_coord_events
	coord_event 17, 27, -1, DevilsShaftB1F_StikeEncounterScene

	def_bg_events

	def_object_events
	object_event 17, 22, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
