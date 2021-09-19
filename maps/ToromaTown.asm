	object_const_def
	const TOROMATOWN_TEACHER
	const TOROMATOWN_MYCOMANIAC
	const TOROMATOWN_LASS
	const TOROMATOWN_FISHER

ToromaTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_TOROMA
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

ToromaTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject TOROMATOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement TOROMATOWN_TEACHER, ToromaTown_TeacherRunsToYouMovement1
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow TOROMATOWN_TEACHER, PLAYER
	applymovement TOROMATOWN_TEACHER, ToromaTown_TeacherBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

ToromaTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject TOROMATOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement TOROMATOWN_TEACHER, ToromaTown_TeacherRunsToYouMovement2
	turnobject PLAYER, RIGHT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow TOROMATOWN_TEACHER, PLAYER
	applymovement TOROMATOWN_TEACHER, ToromaTown_TeacherBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

ToromaTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

ToromaTownMycomaniacScript:
	jumptextfaceplayer Text_DevilDancerRumor

ToromaTownLassScript:
	jumptextfaceplayer Text_RememberJumpOverLedges

ToromaTownFisherScript:
	jumptextfaceplayer Text_CongratsBecomingTrainer

ToromaTownSign:
	jumptext ToromaTownSignText

ToromaTownPlayersHouseSign:
	jumptext ToromaTownPlayersHouseSignText

ToromaTownElmsLabSign:
	jumptext ToromaTownElmsLabSignText

ToromaTownElmsHouseSign:
	jumptext ToromaTownElmsHouseSignText

ToromaTownPokecenterSign:
	jumpstd PokecenterSignScript

ToromaTownMartSign:
	jumpstd MartSignScript

ToromaSubwaySign:
	jumptext ToromaSubwaySignText

ToromaTown_TeacherRunsToYouMovement1:
	step DOWN
	step DOWN
	step DOWN
	turn_head LEFT
	step_end

ToromaTown_TeacherRunsToYouMovement2:
	step DOWN
	step DOWN
	step_end

ToromaTown_TeacherBringsYouBackMovement1:
	step UP
	step UP
	step UP
	turn_head DOWN
	step_end

ToromaTown_TeacherBringsYouBackMovement2:
	step UP
	step UP
	turn_head DOWN
	step_end

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON live"
	line "in the grass and"
	cont "in DEVIL'S SHAFT."

	para "If you want to"
	line "go that way,"

	para "you should get"
	line "your own #MON."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

Text_CongratsBecomingTrainer:
	text "Yo, <PLAYER>!"

	para "Congrats on"
	line "getting to"
	
	para "become a"
	line "#MON trainer!"
	done

Text_RememberJumpOverLedges:
	text "Don't you remember"
	line "how we jumped over"
	cont "ledges as kids?"

	para "If you're going on"
	line "a journey, they"
	
	para "should serve as"
	line "great shortcuts."
	done

Text_DevilDancerRumor:
	text "Have you heard of"
	line "DEVIL DANCERs?"

	para "My friend told me"
	line "they came from"
	cont "DEVIL'S SHAFT…"

	para "…but that just"
	line "seems to be a"
	cont "myth."
	done

ToromaTownSignText:
	text "TOROMA TOWN"

	para "The Town of the"
	line "Mountain Hills"
	done

ToromaTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

ToromaTownElmsLabSignText:
	text "SPRUCE #MON LAB"
	done

ToromaTownElmsHouseSignText:
	text "PROF.SPRUCE's"
	line "House"
	done

ToromaSubwaySignText:
	text "TOROMA SUBWAY"
	done

ToromaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  3, ELMS_LAB, 1
	warp_event 13,  5, PLAYERS_HOUSE_1F, 1
	warp_event  5,  3, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11, 11, TOROMA_POKECENTER_1F, 1
	warp_event  3, 13, TOROMA_MART, 1
	warp_event 33,  3, ELMS_HOUSE, 1
	warp_event 34, 13, TOROMA_SUBWAY, 1
	warp_event 36, 13, TOROMA_SUBWAY, 3

	def_coord_events
	coord_event 14, 16, SCENE_DEFAULT, ToromaTown_TeacherStopsYouScene1
	coord_event 15, 16, SCENE_DEFAULT, ToromaTown_TeacherStopsYouScene2

	def_bg_events
	bg_event 13, 15, BGEVENT_READ, ToromaTownSign
	bg_event 11,  5, BGEVENT_READ, ToromaTownPlayersHouseSign
	bg_event 23,  3, BGEVENT_READ, ToromaTownElmsLabSign
	bg_event 31,  3, BGEVENT_READ, ToromaTownElmsHouseSign
	bg_event 12, 11, BGEVENT_READ, ToromaTownPokecenterSign
	bg_event  4, 13, BGEVENT_READ, ToromaTownMartSign
	bg_event 32, 14, BGEVENT_READ, ToromaSubwaySign

	def_object_events
	object_event 15, 13, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ToromaTownTeacherScript, -1
	object_event 27, 15, SPRITE_MYCOMANIAC, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ToromaTownMycomaniacScript, -1
	object_event 23,  6, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ToromaTownLassScript, -1
	object_event  6,  6, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ToromaTownFisherScript, -1
