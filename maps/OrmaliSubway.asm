	object_const_def
	const ORMALISUBWAY_ATTENDENT1
	const ORMALISUBWAY_ATTENDENT2
	const ORMALISUBWAY_ATTENDENT3
	const ORMALISUBWAY_FISHER
	const ORMALISUBWAY_POKEFAN_F
	const ORMALISUBWAY_SCIENTIST
	const ORMALISUBWAY_GRANNY

OrmaliSubway_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Scientist

.Scientist
	readvar VAR_BADGES
	ifgreater 2, .ScientistDisappears
	appear ORMALISUBWAY_SCIENTIST
	endcallback

.ScientistDisappears
	disappear ORMALISUBWAY_SCIENTIST
	endcallback

OrmaliSubwayCounterAttendentScript:
	jumpstd SubwayCounterAttendentScript

OrmaliSubwayBoardingAttendentScript:
	jumpstd SubwayBoardingAttendentScript

OrmaliSubwayFisherScript:
	jumptextfaceplayer OrmaliSubwayFisherText

OrmaliSubwayPokefanFScript:
	jumptextfaceplayer OrmaliSubwayPokefanFText

OrmaliSubwayScientistScript:
	jumptextfaceplayer OrmaliSubwayScientistText

OrmaliSubwayGrannyScript:
	jumptextfaceplayer OrmaliSubwayGrannyText

OrmaliSubwayFisherText:
	text "People say that"
	line "you can fish up"

	para "different kinds"
	line "of #MON in di-"
	cont "fferent places."

	para "You should look"
	line "everywhere for"
	cont "#MON, too."
	done

OrmaliSubwayPokefanFText:
	text "I hear in ESMARA"
	line "TOWN, workers"

	para "have to clear the"
	line "SUBWAY tracks of"

	para "vines every year."
	line "Sounds tough!"
	done

OrmaliSubwayScientistText:
	text "Rumors have been"
	line "spreading of a"

	para "legendary #MON"
	line "in MT.VOLATTE."

	para "We've got to beat"
	line "??? CITY's"
	cont "SCIENTISTS to it!"

	para "It's about time"
	line "ORMALI CITY's"

	para "SCIENTISTS were"
	line "recognized!"
	done

OrmaliSubwayGrannyText:
	text "My friends say"
	line "that technology"
	cont "is a curse."

	para "The way I see it,"
	line "it's amazing!"

	para "Thanks to the"
	line "SUBWAY, I can"

	para "see my dearies"
	line "more often!"
	done

OrmaliSubway_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 13, ORMALI_CITY, 8
  warp_event  7, 13, ORMALI_CITY, 8
	warp_event 12, 13, ORMALI_CITY, 9
  warp_event 13, 13, ORMALI_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OrmaliSubwayCounterAttendentScript, -1
	object_event  4,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OrmaliSubwayCounterAttendentScript, -1
	object_event 13,  7, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OrmaliSubwayBoardingAttendentScript, -1
	object_event  0, 12, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliSubwayFisherScript, -1
	object_event  9, 11, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliSubwayPokefanFScript, -1
	object_event 18, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OrmaliSubwayScientistScript, -1
	object_event 19,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OrmaliSubwayGrannyScript, -1
