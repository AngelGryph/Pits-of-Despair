BEGIN ~OHBSTANN~

IF ~  Global("OHB_TALKED_STANNEL","LOCALS",0)
Global("OHB_LAST_BATTLE","GLOBAL",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 0
  SAY #92303
  IF ~~ THEN REPLY #92304 DO ~SetGlobal("OHB_TALKED_STANNEL","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY #90614 DO ~SetGlobal("OHB_TALKED_STANNEL","LOCALS",1)
~ GOTO 3
  IF ~~ THEN REPLY #90682 DO ~SetGlobal("OHB_TALKED_STANNEL","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY #92305 GOTO 1
  IF ~~ THEN REPLY #92306 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY #92307
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92308
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY #92309
  IF ~~ THEN REPLY #92310 DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 4
  IF ~  CheckStatGT(Player1,17,INT)
~ THEN REPLY #92311 DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 5
  IF ~~ THEN REPLY #92312 DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY #92291 DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #92313 DO ~SetGlobal("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY #92314
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY #92315
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY #92316
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY #92317
  IF ~~ THEN REPLY #101258 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY #101257
  IF ~~ THEN REPLY #101259 DO ~AddJournalEntry(93912,INFO)
~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY #92318
  IF ~~ THEN REPLY #92319 GOTO 14
  IF ~~ THEN REPLY #92320 GOTO 1
  IF ~~ THEN REPLY #92321 GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY #92322
  IF ~~ THEN REPLY #92323 DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY #92324 DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY #92325 DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY #92291 DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #92326 DO ~SetGlobal("OHB_STANNEL_SAID_MET","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11
  SAY #92327
  IF ~~ THEN REPLY #92328 GOTO 14
  IF ~~ THEN REPLY #92329 GOTO 12
  IF ~~ THEN REPLY #92330 GOTO 1
  IF ~~ THEN REPLY #92331 GOTO 2
END

IF ~~ THEN BEGIN 12
  SAY #92332
  IF ~~ THEN DO ~AddJournalEntry(93913,INFO)
~ EXIT
END

IF ~  OR(2)
Global("OHB_TALKED_STANNEL","LOCALS",1)
!GlobalLT("OHB_LAST_BATTLE","GLOBAL",101)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",405)
Global("ohb_finale","global",0)
~ THEN BEGIN 13
  SAY #90675
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",101)
~ THEN REPLY #90676 GOTO 31
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",102)
~ THEN REPLY #90676 GOTO 35
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN REPLY #90676 GOTO 38
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN REPLY #90676 GOTO 41
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",105)
~ THEN REPLY #90676 GOTO 45
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN REPLY #90676 GOTO 49
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN REPLY #90676 GOTO 53
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN REPLY #90676 GOTO 57
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY #90676 GOTO 61
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY #90676 GOTO 65
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN REPLY #90676 GOTO 69
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN REPLY #90676 GOTO 73
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN REPLY #90676 GOTO 77
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN REPLY #90676 GOTO 80
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN REPLY #90676 GOTO 84
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN REPLY #90676 GOTO 88
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN REPLY #90676 GOTO 92
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN REPLY #90676 GOTO 96
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN REPLY #90676 GOTO 100
  IF ~  GlobalLT("OHB_brodle_uprising_ready","GLOBAL",4)
~ THEN REPLY #90677 GOTO 14
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 14
  SAY #90680
  IF ~  !Global("OHB_STANNEL_SAID_WHO","LOCALS",1)
~ THEN REPLY #90614 GOTO 3
  IF ~  !Global("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ THEN REPLY #90681 GOTO 15
  IF ~  !Global("OHB_STANNEL_SAID_MET","LOCALS",1)
~ THEN REPLY #90682 GOTO 10
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #90683 GOTO 21
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
OR(2)
!Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
!Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #90683 GOTO 21
  IF ~  OR(2)
Global("OHB_305","GLOBAL",-1)
Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
!Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #90683 GOTO 21
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
OR(2)
!Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #90683 GOTO 21
  IF ~  OR(2)
Global("OHB_305","GLOBAL",-1)
Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #90683 GOTO 21
  IF ~  OR(2)
Global("OHB_305","GLOBAL",-1)
Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
OR(2)
!Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
!Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #90683 GOTO 21
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
!Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #90683 GOTO 21
  IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",2)
!PartyHasItem("ohbring1")
HasItem("ohbring1","OHBSTANN")
~ THEN REPLY #90684 GOTO 25
  IF ~~ THEN REPLY #90685 GOTO 1
END

IF ~~ THEN BEGIN 15
  SAY #90686
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY #90687
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY #90688
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY #90689
  IF ~~ THEN REPLY #90690 DO ~SetGlobal("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY #90691 DO ~SetGlobal("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ GOTO 19
  IF ~~ THEN REPLY #90692 DO ~SetGlobal("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #90693 DO ~SetGlobal("OHB_STANNEL_SAID_ROLE","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 19
  SAY #90694
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #90695
  IF ~~ THEN REPLY #90696 GOTO 14
  IF ~~ THEN REPLY #90697 GOTO 2
  IF ~~ THEN REPLY #90698 GOTO 1
END

IF ~~ THEN BEGIN 21
  SAY #90699
  IF ~  !Global("OHB_305","GLOBAL",-1)
!Global("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
~ THEN REPLY #90700 DO ~SetGlobal("OHB_STANNEL_PERPLEX_DEMON","LOCALS",1)
~ GOTO 22
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
!Global("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
~ THEN REPLY #90701 DO ~SetGlobal("OHB_STANNEL_PERPLEX_POISON","LOCALS",1)
~ GOTO 28
  IF ~  !Global("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
~ THEN REPLY #90702 DO ~SetGlobal("OHB_STANNEL_PERPLEX_SCROLL","LOCALS",1)
~ GOTO 29
  IF ~~ THEN REPLY #90703 DO ~SetGlobal("OHB_STANNEL_SAID_PERPLEX","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #90704 DO ~SetGlobal("OHB_STANNEL_SAID_PERPLEX","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 22
  SAY #90705
  IF ~  !Global("OHB_205","GLOBAL",-1)
~ THEN GOTO 23
  IF ~  Global("OHB_205","GLOBAL",-1)
!Global("OHB_302","GLOBAL",-1)
~ THEN GOTO 24
  IF ~  Global("OHB_205","GLOBAL",-1)
Global("OHB_302","GLOBAL",-1)
~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY #90706
  IF ~  !Global("OHB_302","GLOBAL",-1)
~ THEN GOTO 24
  IF ~  Global("OHB_302","GLOBAL",-1)
~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY #90707
  IF ~~ THEN REPLY #90708 GOTO 14
  IF ~~ THEN REPLY #90709 GOTO 1
  IF ~~ THEN REPLY #90710 GOTO 2
END

IF ~~ THEN BEGIN 25
  SAY #90711
  IF ~~ THEN REPLY #90712 GOTO 26
  IF ~~ THEN REPLY #90713 GOTO 1
  IF ~~ THEN REPLY #90714 GOTO 2
END

IF ~~ THEN BEGIN 26
  SAY #90715
  IF ~  PartyGoldGT(1999)
~ THEN REPLY #90716 DO ~TakePartyGold(2000)
~ GOTO 27
  IF ~~ THEN REPLY #90717 GOTO 1
  IF ~~ THEN REPLY #93909 GOTO 1
  IF ~~ THEN REPLY #90718 GOTO 2
END

IF ~~ THEN BEGIN 27
  SAY #90719
  IF ~~ THEN DO ~AddJournalEntry(93914,INFO)
GiveItem("ohbring1",LastTalkedToBy)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY #90720
  IF ~~ THEN REPLY #90721 GOTO 14
  IF ~~ THEN REPLY #90722 GOTO 1
  IF ~~ THEN REPLY #90723 GOTO 2
END

IF ~~ THEN BEGIN 29
  SAY #92483
  IF ~~ THEN REPLY #93910 GOTO 14
  IF ~~ THEN REPLY #93911 GOTO 1
  IF ~~ THEN REPLY #90723 GOTO 2
END

IF ~~ THEN BEGIN 30
  SAY #94538
  IF ~~ THEN REPLY #94539 GOTO 31
  IF ~~ THEN REPLY #94540 GOTO 31
  IF ~~ THEN REPLY #94541 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY #94542
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY #94543
  IF ~~ THEN REPLY #94544 GOTO 33
  IF ~~ THEN REPLY #94545 GOTO 33
  IF ~~ THEN REPLY #94546 GOTO 34
END

IF ~~ THEN BEGIN 33
  SAY #94547
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY #94548
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35
  SAY #94108
  IF ~~ THEN REPLY #94109 GOTO 36
  IF ~~ THEN REPLY #94111 GOTO 36
  IF ~~ THEN REPLY #94112 GOTO 36
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 36
  SAY #94113
  IF ~~ THEN REPLY #94114 GOTO 37
  IF ~~ THEN REPLY #94115 GOTO 37
  IF ~~ THEN REPLY #94117 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY #94119
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38
  SAY #94176
  IF ~~ THEN REPLY #94177 GOTO 39
  IF ~~ THEN REPLY #94179 GOTO 39
  IF ~~ THEN REPLY #94181 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY #94182
  IF ~~ THEN REPLY #94184 GOTO 40
  IF ~~ THEN REPLY #94186 GOTO 40
  IF ~~ THEN REPLY #94188 GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY #94189
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY #94210
  IF ~~ THEN REPLY #94211 GOTO 42
  IF ~~ THEN REPLY #94212 GOTO 42
  IF ~~ THEN REPLY #94213 GOTO 42
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 42
  SAY #94214
  IF ~~ THEN REPLY #94215 GOTO 43
  IF ~~ THEN REPLY #94216 GOTO 43
  IF ~~ THEN REPLY #94217 GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY #94218
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44
  SAY #94219
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45
  SAY #94261
  IF ~~ THEN REPLY #94262 GOTO 46
  IF ~~ THEN REPLY #94263 GOTO 46
  IF ~~ THEN REPLY #94264 GOTO 47
END

IF ~~ THEN BEGIN 46
  SAY #94265
  IF ~~ THEN REPLY #94266 GOTO 48
  IF ~~ THEN REPLY #94267 GOTO 48
  IF ~~ THEN REPLY #94268 GOTO 48
END

IF ~~ THEN BEGIN 47
  SAY #94269
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 48
  SAY #94270
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49
  SAY #94868
  IF ~~ THEN REPLY #94869 GOTO 50
  IF ~~ THEN REPLY #94870 GOTO 50
  IF ~~ THEN REPLY #94871 GOTO 50
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 50
  SAY #94872
  IF ~~ THEN REPLY #94873 GOTO 51
  IF ~~ THEN REPLY #94874 GOTO 51
  IF ~~ THEN REPLY #94875 GOTO 52
END

IF ~~ THEN BEGIN 51
  SAY #94876
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52
  SAY #94877
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53
  SAY #95019
  IF ~~ THEN REPLY #95020 GOTO 54
  IF ~~ THEN REPLY #95021 GOTO 54
  IF ~~ THEN REPLY #95039 GOTO 54
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 54
  SAY #95043
  IF ~~ THEN REPLY #95048 GOTO 55
  IF ~~ THEN REPLY #95051 GOTO 55
  IF ~~ THEN REPLY #95053 GOTO 56
END

IF ~~ THEN BEGIN 55
  SAY #95056
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56
  SAY #95059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57
  SAY #95105
  IF ~~ THEN REPLY #95106 GOTO 58
  IF ~~ THEN REPLY #95107 GOTO 58
  IF ~~ THEN REPLY #95108 GOTO 58
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 58
  SAY #95109
  IF ~~ THEN REPLY #95110 GOTO 59
  IF ~~ THEN REPLY #95111 GOTO 59
  IF ~~ THEN REPLY #95112 GOTO 60
END

IF ~~ THEN BEGIN 59
  SAY #95113
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60
  SAY #95114
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61
  SAY #95353
  IF ~~ THEN REPLY #95354 GOTO 62
  IF ~~ THEN REPLY #95355 GOTO 62
  IF ~~ THEN REPLY #95356 GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY #95357
  IF ~~ THEN REPLY #95358 GOTO 63
  IF ~~ THEN REPLY #95359 GOTO 63
  IF ~~ THEN REPLY #95360 GOTO 64
END

IF ~~ THEN BEGIN 63
  SAY #95361
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64
  SAY #95362
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65
  SAY #95396
  IF ~~ THEN REPLY #95397 GOTO 66
  IF ~~ THEN REPLY #95398 GOTO 66
  IF ~~ THEN REPLY #95399 GOTO 66
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 66
  SAY #95400
  IF ~~ THEN REPLY #95402 GOTO 67
  IF ~~ THEN REPLY #95403 GOTO 67
  IF ~~ THEN REPLY #95404 GOTO 68
END

IF ~~ THEN BEGIN 67
  SAY #95405
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68
  SAY #95406
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69
  SAY #95440
  IF ~~ THEN REPLY #95441 GOTO 70
  IF ~~ THEN REPLY #95442 GOTO 70
  IF ~~ THEN REPLY #95443 GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY #95444
  IF ~~ THEN REPLY #95445 GOTO 71
  IF ~~ THEN REPLY #95446 GOTO 71
  IF ~~ THEN REPLY #95447 GOTO 72
END

IF ~~ THEN BEGIN 71
  SAY #95448
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72
  SAY #95449
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73
  SAY #95468
  IF ~~ THEN REPLY #95469 GOTO 74
  IF ~~ THEN REPLY #95470 GOTO 74
  IF ~~ THEN REPLY #95471 GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY #95472
  IF ~~ THEN REPLY #95473 GOTO 75
  IF ~~ THEN REPLY #95474 GOTO 75
  IF ~~ THEN REPLY #95475 GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY #95476
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76
  SAY #95477
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77
  SAY #95511
  IF ~~ THEN REPLY #95512 GOTO 78
  IF ~~ THEN REPLY #95513 GOTO 78
  IF ~~ THEN REPLY #95514 GOTO 78
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 78
  SAY #95515
  IF ~~ THEN REPLY #95516 GOTO 79
  IF ~~ THEN REPLY #95517 GOTO 79
  IF ~~ THEN REPLY #95518 GOTO 79
END

IF ~~ THEN BEGIN 79
  SAY #95519
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80
  SAY #95553
  IF ~~ THEN REPLY #95554 GOTO 81
  IF ~~ THEN REPLY #95555 GOTO 81
  IF ~~ THEN REPLY #95556 GOTO 81
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 81
  SAY #95557
  IF ~~ THEN REPLY #95558 GOTO 82
  IF ~~ THEN REPLY #95559 GOTO 82
  IF ~~ THEN REPLY #95560 GOTO 83
END

IF ~~ THEN BEGIN 82
  SAY #95561
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83
  SAY #95562
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84
  SAY #95579
  IF ~~ THEN REPLY #95580 GOTO 85
  IF ~~ THEN REPLY #95581 GOTO 85
  IF ~~ THEN REPLY #95582 GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY #95583
  IF ~~ THEN REPLY #95584 GOTO 86
  IF ~~ THEN REPLY #95585 GOTO 86
  IF ~~ THEN REPLY #95586 GOTO 87
END

IF ~~ THEN BEGIN 86
  SAY #95587
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87
  SAY #95588
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 88
  SAY #94355
  IF ~~ THEN REPLY #94356 GOTO 89
  IF ~~ THEN REPLY #94357 GOTO 89
  IF ~~ THEN REPLY #94358 GOTO 89
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 89
  SAY #94359
  IF ~~ THEN REPLY #94360 GOTO 90
  IF ~~ THEN REPLY #94361 GOTO 90
  IF ~~ THEN REPLY #94362 GOTO 91
END

IF ~~ THEN BEGIN 90
  SAY #94363
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91
  SAY #94364
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92
  SAY #94398
  IF ~~ THEN REPLY #94399 GOTO 93
  IF ~~ THEN REPLY #94400 GOTO 93
  IF ~~ THEN REPLY #94401 GOTO 93
END

IF ~~ THEN BEGIN 93
  SAY #94402
  IF ~~ THEN REPLY #94403 GOTO 94
  IF ~~ THEN REPLY #94404 GOTO 94
  IF ~~ THEN REPLY #94405 GOTO 95
END

IF ~~ THEN BEGIN 94
  SAY #94406
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95
  SAY #94407
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96
  SAY #94441
  IF ~~ THEN REPLY #94442 GOTO 97
  IF ~~ THEN REPLY #94443 GOTO 97
  IF ~~ THEN REPLY #94444 GOTO 97
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 97
  SAY #94445
  IF ~~ THEN REPLY #94446 GOTO 98
  IF ~~ THEN REPLY #94447 GOTO 98
  IF ~~ THEN REPLY #94448 GOTO 99
END

IF ~~ THEN BEGIN 98
  SAY #94449
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99
  SAY #94450
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 100
  SAY #95624
  IF ~~ THEN REPLY #95625 GOTO 101
  IF ~~ THEN REPLY #95626 GOTO 101
  IF ~~ THEN REPLY #95627 GOTO 101
  IF ~~ THEN REPLY #90678 GOTO 1
  IF ~~ THEN REPLY #90679 GOTO 2
END

IF ~~ THEN BEGIN 101
  SAY #95628
  IF ~~ THEN REPLY #95629 GOTO 102
  IF ~~ THEN REPLY #95630 GOTO 102
  IF ~~ THEN REPLY #95631 GOTO 103
END

IF ~~ THEN BEGIN 102
  SAY #95632
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103
  SAY #95633
  IF ~~ THEN EXIT
END

IF ~  Global("ohb_finale","global",10)
~ THEN BEGIN 104
  SAY #100634
  IF ~~ THEN REPLY #100648 DO ~SetGlobal("ohb_finale","global",11)
~ GOTO 105
  IF ~~ THEN REPLY #100649 DO ~SetGlobal("ohb_finale","global",11)
~ GOTO 106
  IF ~~ THEN REPLY #100650 DO ~SetGlobal("ohb_finale","global",11)
~ GOTO 105
END

IF ~~ THEN BEGIN 105
  SAY #100635
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 106
  SAY #100636
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
  SAY #100637
  IF ~~ THEN REPLY #100651 GOTO 108
  IF ~~ THEN REPLY #100652 GOTO 109
  IF ~~ THEN REPLY #100653 GOTO 110
END

IF ~~ THEN BEGIN 108
  SAY #100638
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT52")
~ EXIT
END

IF ~~ THEN BEGIN 109
  SAY #100639
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT52")
~ EXIT
END

IF ~~ THEN BEGIN 110
  SAY #100640
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT52")
~ EXIT
END

IF ~  Global("ohb_finale","global",11)
~ THEN BEGIN 111
  SAY #100641
  IF ~~ THEN DO ~SetGlobal("OHB_ENDGAME","GLOBAL",1)
ClearAllActions()
SetCutSceneLite(TRUE)
~ EXIT
END