BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_MycomaniacDon ; this reverts back to the player
	dw BugContestant_MycomaniacDon
	dw BugContestant_MycomaniacEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_MycomaniacBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_MycomaniacJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_MycomaniacDon:
	db MYCOMANIAC, DON
	dbw KAKUNA,     300
	dbw METAPOD,    285
	dbw CATERPIE,   226

BugContestant_MycomaniacEd:
	db MYCOMANIAC, ED
	dbw BUTTERFREE, 286
	dbw BUTTERFREE, 251
	dbw CATERPIE,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCYTHER,    357
	dbw BUTTERFREE, 349
	dbw PINSIR,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw PINSIR,     332
	dbw BUTTERFREE, 324
	dbw VENONAT,    321

BugContestant_MycomaniacBenny:
	db MYCOMANIAC, MYCOMANIAC_BENNY
	dbw BUTTERFREE, 318
	dbw WEEDLE,     295
	dbw CATERPIE,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw PINSIR,     366
	dbw VENONAT,    329
	dbw KAKUNA,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw BUTTERFREE, 341
	dbw METAPOD,    301
	dbw CATERPIE,   264

BugContestant_MycomaniacJosh:
	db MYCOMANIAC, JOSH
	dbw SCYTHER,    326
	dbw BUTTERFREE, 292
	dbw METAPOD,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw WEEDLE,     270
	dbw PINSIR,     282
	dbw CATERPIE,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw VENONAT,    267
	dbw PARAS,      254
	dbw KAKUNA,     259
