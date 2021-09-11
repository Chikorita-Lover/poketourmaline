	object_const_def
	const DEVILSSHAFTB1F_HIKER
	const DEVILSSHAFTB1F_STIKE
	const DEVILSSHAFTB1F_POKE_BALL

DevilsShaftB1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHikerStikony:
	trainer HIKER, STIKONY, EVENT_BEAT_HIKER_STIKONY, HikerStikonySeenText, HikerStikonyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerStikonyAfterText
	waitbutton
	closetext
	end

DevilsShaftB1FPokeBall:
	itemball POKE_BALL

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

HikerStikonySeenText:
	text "This here's a"
	line "great place to"
	cont "camp!"

	para "If you want it,"
	line "you're gonna have"

	para "to beat me in"
	line "battle!"
	done

HikerStikonyBeatenText:
	text "Woah there! Maybe"
	line "we can just share?"
	done

HikerStikonyAfterText:
	text "How are ya farin'"
	line "against these"
	cont "SPINARAK?"

	para "Their attacks"
	line "often poison my"
	cont "#MON."

	para "That's why I"
	line "brought ANTIDOTE!"
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
	object_event  6, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerHikerStikony, -1
	object_event 17, 22, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DevilsShaftB1FPokeBall, EVENT_DEVILS_SHAFT_B1F_POKE_BALL
