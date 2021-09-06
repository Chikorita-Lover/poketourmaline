	object_const_def

OrmaliGym_MapScripts:
	def_scene_scripts

	def_callbacks

OrmaliGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	; lobby warps
	warp_event  4, 35, ORMALI_CITY, 3
	warp_event  5, 35, ORMALI_CITY, 3
	warp_event  8, 35, ORMALI_CITY, 4
	warp_event  9, 35, ORMALI_CITY, 4
	warp_event  6, 24, ORMALI_GYM, 7
	warp_event  7, 24, ORMALI_GYM, 8
	; hallway warps
	warp_event 22, 35, ORMALI_GYM, 5
	warp_event 23, 35, ORMALI_GYM, 6
	warp_event 32, 18, ORMALI_GYM, 11
	warp_event 33, 18, ORMALI_GYM, 12
	; ring warps
	warp_event 29, 11, ORMALI_GYM, 9
	warp_event 29, 10, ORMALI_GYM, 10

	def_coord_events

	def_bg_events

	def_object_events