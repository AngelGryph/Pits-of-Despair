BEGIN ~OHBCOOK~

IF WEIGHT #1 ~  Global("OHB_FOOD_FIGHT","MYAREA",4)
Global("tier","GLOBAL",0)
~ THEN BEGIN 0
  SAY #90605
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY #90608
  IF ~~ THEN DO ~AddJournalEntry(102542,INFO)
Face(E)
StartCutSceneMode()
StartCutScene("ohbcut08")
~ EXIT
END

IF WEIGHT #2 ~  Global("OHB_TALKED_COOK","LOCALS",0)
Global("tier","GLOBAL",1)
~ THEN BEGIN 2
  SAY #90613
  IF ~  !Global("OHB_COOK_SAID_WHO","LOCALS",1)
~ THEN REPLY #90614 DO ~SetGlobal("OHB_TALKED_COOK","LOCALS",1)
~ GOTO 3
  IF ~  !Global("OHB_COOK_SAID_WHAT","LOCALS",1)
~ THEN REPLY #90615 DO ~SetGlobal("OHB_TALKED_COOK","LOCALS",1)
~ GOTO 6
  IF ~  !Global("OHB_COOK_SAID_HOW","LOCALS",1)
~ THEN REPLY #90616 DO ~SetGlobal("OHB_TALKED_COOK","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY #90617 EXIT
END

IF ~~ THEN BEGIN 3
  SAY #90618
  IF ~~ THEN DO ~SetGlobal("OHB_COOK_SAID_WHO","LOCALS",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY #90619
  IF ~~ THEN GOTO 5
  IF ~  Range("ohbcogua",30)
!StateCheck("ohbgua01",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHBCOGUA~ 0
END

IF ~~ THEN BEGIN 5
  SAY #90621
  IF ~  !Global("OHB_COOK_SAID_WHAT","LOCALS",1)
~ THEN REPLY #90622 GOTO 6
  IF ~  !Global("OHB_COOK_SAID_HOW","LOCALS",1)
~ THEN REPLY #90623 GOTO 10
  IF ~~ THEN REPLY #90624 EXIT
END

IF ~~ THEN BEGIN 6
  SAY #90625
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY #90626
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY #90627
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY #90629
  IF ~  !Global("OHB_COOK_SAID_WHO","LOCALS",1)
~ THEN REPLY #90614 DO ~SetGlobal("OHB_COOK_SAID_WHAT","LOCALS",1)
~ GOTO 3
  IF ~  !Global("OHB_COOK_SAID_HOW","LOCALS",1)
~ THEN REPLY #90616 DO ~SetGlobal("OHB_COOK_SAID_WHAT","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY #90617 DO ~SetGlobal("OHB_COOK_SAID_WHAT","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #90631
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #90632
  IF ~  !Global("OHB_COOK_SAID_WHO","LOCALS",1)
~ THEN REPLY #90614 DO ~SetGlobal("OHB_COOK_SAID_HOW","LOCALS",1)
~ GOTO 3
  IF ~  !Global("OHB_COOK_SAID_WHAT","LOCALS",1)
~ THEN REPLY #90615 DO ~SetGlobal("OHB_COOK_SAID_HOW","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY #90617 DO ~SetGlobal("OHB_COOK_SAID_HOW","LOCALS",1)
~ EXIT
END

IF WEIGHT #3 ~  Global("ohb_finale","global",0)
GlobalGT("OHB_TALKED_COOK","LOCALS",0)
Global("tier","GLOBAL",1)
~ THEN BEGIN 12
  SAY #90633
  IF ~~ THEN REPLY #90634 GOTO 13
  IF ~  Global("ohb_cook_ask_food","locals",0)
Global("ohb_tartle_rotten_food","global",1)
~ THEN REPLY #90635 GOTO 14
  IF ~~ THEN REPLY #90617 EXIT
END

IF ~~ THEN BEGIN 13
  SAY #90636
  IF ~~ THEN REPLY #90614 GOTO 3
  IF ~  !Global("OHB_COOK_SAID_WHAT","LOCALS",1)
~ THEN REPLY #90622 GOTO 6
  IF ~~ THEN REPLY #90623 GOTO 10
  IF ~~ THEN REPLY #90617 EXIT
END

IF ~~ THEN BEGIN 14
  SAY #90637
  IF ~~ THEN REPLY #90638 GOTO 15
  IF ~~ THEN REPLY #90639 GOTO 15
  IF ~~ THEN REPLY #90640 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY #90641
  IF ~~ THEN DO ~SetGlobal("ohb_cook_ask_food","locals",1)
~ EXIT
END

IF WEIGHT #4 ~  Global("ohb_finale","global",0)
GlobalGT("tier","GLOBAL",1)
Global("OHB_COOK_MUSHROOM","GLOBAL",0)
~ THEN BEGIN 16
  SAY #93797
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY #93798
  IF ~~ THEN REPLY #93799 DO ~SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",-1)
~ GOTO 18
  IF ~~ THEN REPLY #93800 DO ~AddJournalEntry(93847,QUEST)
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",1)
~ GOTO 19
  IF ~~ THEN REPLY #93801 DO ~AddJournalEntry(93847,QUEST)
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY #93802
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY #93803
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #93804
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY #93805
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY #93806
  IF ~~ THEN REPLY #93807 GOTO 23
  IF ~~ THEN REPLY #93808 GOTO 24
  IF ~~ THEN REPLY #93809 GOTO 25
END

IF ~~ THEN BEGIN 23
  SAY #93810
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24
  SAY #93811
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY #93812
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY #93813
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #93815
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY #93817
  IF ~~ THEN DO ~AddJournalEntry(93848,QUEST)
~ EXIT
END

IF WEIGHT #5 ~  Global("ohb_finale","global",0)
GlobalGT("tier","GLOBAL",1)
~ THEN BEGIN 29
  SAY #93818
  IF ~  Global("OHB_COOK_MUSHROOM","GLOBAL",-1)
~ THEN REPLY #93819 DO ~SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",1)
~ GOTO 30
  IF ~  Global("OHB_COOK_MUSHROOM","GLOBAL",2)
PartyHasItem("OHBCOM02")
~ THEN REPLY #93820 GOTO 31
  IF ~  Global("ohb_cook_ask_food","locals",0)
Global("ohb_tartle_rotten_food","global",1)
~ THEN REPLY #90635 GOTO 14
  IF ~  Global("OHB_COOK_POISON","GLOBAL",1)
~ THEN REPLY #93821 DO ~SetGlobal("OHB_COOK_POISON","GLOBAL",5)
~ GOTO 35
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #93822 GOTO 39
  IF ~~ THEN REPLY #93823 GOTO 38
  IF ~~ THEN REPLY #90617 EXIT
END

IF ~~ THEN BEGIN 30
  SAY #93824
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 31
  SAY #93825
  IF ~~ THEN REPLY #93826 DO ~TakePartyItem("OHBCOM02")
DestroyItem("OHBCOM02")
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",3)
~ GOTO 32
  IF ~~ THEN REPLY #93827 GOTO 34
END

IF ~~ THEN BEGIN 32
  SAY #93828
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY #93829
  IF ~  RandomNum(2,1)
~ THEN DO ~GiveItemCreate("BDDUMPL",LastTalkedToBy,2,0,0)
AddJournalEntry(93849,QUEST_DONE)
EraseJournalEntry(93847)
EraseJournalEntry(93848)
EraseJournalEntry(90957)
~ EXIT
  IF ~  RandomNum(2,2)
~ THEN DO ~GiveItemCreate("BDDUMPL",LastTalkedToBy,3,0,0)
AddJournalEntry(93849,QUEST_DONE)
EraseJournalEntry(93847)
EraseJournalEntry(93848)
EraseJournalEntry(90957)
~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY #93830
  IF ~~ THEN DO ~TakePartyItem("OHBCOM02")
DestroyItem("OHBCOM02")
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",3)
~ GOTO 32
END

IF ~~ THEN BEGIN 35
  SAY #93831
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY #93833
  IF ~~ THEN EXTERN ~OHBSHORT~ 2
END

IF ~~ THEN BEGIN 37
  SAY #93835
  IF ~~ THEN DO ~AddJournalEntry(94555,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY #93836
  IF ~~ THEN REPLY #90614 GOTO 3
  IF ~~ THEN REPLY #90622 GOTO 6
  IF ~~ THEN REPLY #90617 EXIT
END

IF ~~ THEN BEGIN 39
  SAY #93836
  IF ~~ THEN REPLY #93837 GOTO 40
  IF ~  OR(2)
Global("OHB_COOK_POISON","GLOBAL",5)
Global("OHB_COOK_MUSHROOM","GLOBAL",3)
~ THEN REPLY #92096 GOTO 41
  IF ~~ THEN REPLY #92290 GOTO 42
END

IF ~~ THEN BEGIN 40
  SAY #93838
  IF ~~ THEN REPLY #93839 GOTO 43
  IF ~~ THEN REPLY #92170 GOTO 45
END

IF ~~ THEN BEGIN 41
  SAY #93840
  IF ~~ THEN REPLY #93841 GOTO 43
  IF ~~ THEN REPLY #92170 GOTO 45
END

IF ~~ THEN BEGIN 42
  SAY #93842
  IF ~~ THEN REPLY #93843 GOTO 43
  IF ~~ THEN REPLY #92170 GOTO 45
END

IF ~~ THEN BEGIN 43
  SAY #93844
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY #93845
  IF ~~ THEN DO ~AddJournalEntry(101266,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY #93846
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("OHB_COOK_POISON","GLOBAL",3)
~ THEN BEGIN 46
  SAY #90642
  IF ~~ THEN EXTERN ~OHBCOGUA~ 9
END

IF ~~ THEN BEGIN 47
  SAY #90644
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY #90645
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY #90646
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut12")
~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY #90668
  IF ~~ THEN EXTERN ~OHBMARDU~ 39
END

IF ~~ THEN BEGIN 51
  SAY #90670
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52
  SAY #90668
  IF ~~ THEN EXTERN ~OHBMARDU~ 41
END

IF ~~ THEN BEGIN 53
  SAY #90670
  IF ~~ THEN EXIT
END