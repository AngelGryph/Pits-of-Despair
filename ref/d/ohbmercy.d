BEGIN ~OHBMERCY~

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY #92942
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY #92943
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY #92664
  IF ~~ THEN REPLY #90889 GOTO 4
END

IF WEIGHT #4 ~  Global("OHB_TALKED_MERCY","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 3
  SAY #91896
  IF ~~ THEN REPLY #91897 DO ~SetGlobal("OHB_TALKED_MERCY","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY #91898 GOTO 4
  IF ~~ THEN REPLY #91899 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY #91900
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY #91901
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY #91902
  IF ~  Global("OHB_ASKED_MERCY_WHO","GLOBAL",0)
~ THEN REPLY #90614 GOTO 7
  IF ~  Global("OHB_ASKED_MERCY_HOW","GLOBAL",0)
~ THEN REPLY #91903 GOTO 15
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #91904 GOTO 17
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #91904 GOTO 23
  IF ~~ THEN REPLY #90889 GOTO 4
END

IF ~~ THEN BEGIN 7
  SAY #91905
  IF ~~ THEN REPLY #91906 DO ~SetGlobal("OHB_ASKED_MERCY_WHO","GLOBAL",1)
AddJournalEntry(92700,QUEST)
~ GOTO 8
  IF ~~ THEN REPLY #91907 DO ~SetGlobal("OHB_ASKED_MERCY_WHO","GLOBAL",1)
AddJournalEntry(92700,QUEST)
~ GOTO 13
  IF ~~ THEN REPLY #91908 DO ~SetGlobal("OHB_ASKED_MERCY_WHO","GLOBAL",1)
AddJournalEntry(92700,QUEST)
~ GOTO 4
  IF ~~ THEN REPLY #91909 DO ~SetGlobal("OHB_ASKED_MERCY_WHO","GLOBAL",1)
AddJournalEntry(92700,QUEST)
~ GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY #91910
  IF ~~ THEN REPLY #91911 GOTO 9
  IF ~~ THEN REPLY #91912 GOTO 10
  IF ~  CheckStatGT(Player1,15,WIS)
~ THEN REPLY #91913 GOTO 11
  IF ~~ THEN REPLY #91914 GOTO 18
  IF ~~ THEN REPLY #91915 GOTO 4
  IF ~~ THEN REPLY #91916 GOTO 5
END

IF ~~ THEN BEGIN 9
  SAY #91917
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 10
  SAY #91918
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 11
  SAY #91919
  IF ~~ THEN REPLY #91920 GOTO 12
  IF ~~ THEN REPLY #91921 GOTO 18
  IF ~~ THEN REPLY #91915 GOTO 4
  IF ~~ THEN REPLY #91922 GOTO 5
END

IF ~~ THEN BEGIN 12
  SAY #91923
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 13
  SAY #91924
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY #91925
  IF ~~ THEN REPLY #91926 GOTO 18
  IF ~~ THEN REPLY #91927 GOTO 4
  IF ~~ THEN REPLY #91928 GOTO 5
END

IF ~~ THEN BEGIN 15
  SAY #91929
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY #91930
  IF ~~ THEN REPLY #91931 DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 18
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #91932 DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 30
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #91932 DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #91933 DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #91934 DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 17
  SAY #91935
  IF ~~ THEN REPLY #91936 GOTO 18
  IF ~~ THEN REPLY #91937 GOTO 19
  IF ~~ THEN REPLY #91938 GOTO 4
  IF ~~ THEN REPLY #91939 GOTO 5
END

IF WEIGHT #5 ~  Global("OHB_TALKED_MERCY","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 18
  SAY #92664
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #92665 GOTO 19
  IF ~~ THEN REPLY #92666 GOTO 20
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #92667 GOTO 17
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #92667 GOTO 23
  IF ~~ THEN REPLY #90889 GOTO 4
END

IF ~~ THEN BEGIN 19
  SAY #92668
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #92669 DO ~TakePartyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_MERCY_HIRED","GLOBAL",1)
~ EXIT
  IF ~  !PartyGoldGT(1499)
~ THEN REPLY #92670 GOTO 4
  IF ~~ THEN REPLY #90889 GOTO 4
  IF ~~ THEN REPLY #92671 GOTO 5
END

IF ~~ THEN BEGIN 20
  SAY #92672
  IF ~  Global("OHB_ASKED_MERCY_WHO","GLOBAL",0)
~ THEN REPLY #90614 GOTO 7
  IF ~  Global("OHB_ASKED_MERCY_HOW","GLOBAL",0)
~ THEN REPLY #91903 GOTO 15
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #92673 GOTO 30
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #92673 GOTO 21
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #92674 GOTO 26
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY #92674 GOTO 22
  IF ~~ THEN REPLY #90889 GOTO 4
END

IF ~~ THEN BEGIN 21
  SAY #92675
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY #92676
  IF ~~ THEN REPLY #92677 DO ~AddJournalEntry(92701,QUEST_DONE)
EraseJournalEntry(92699)
EraseJournalEntry(92700)
~ GOTO 18
  IF ~~ THEN REPLY #91937 DO ~AddJournalEntry(92701,QUEST_DONE)
EraseJournalEntry(92699)
EraseJournalEntry(92700)
~ GOTO 19
  IF ~~ THEN REPLY #91938 DO ~AddJournalEntry(92701,QUEST_DONE)
EraseJournalEntry(92699)
EraseJournalEntry(92700)
~ GOTO 4
  IF ~~ THEN REPLY #92678 DO ~AddJournalEntry(92701,QUEST_DONE)
EraseJournalEntry(92699)
EraseJournalEntry(92700)
~ GOTO 5
END

IF ~~ THEN BEGIN 23
  SAY #92679
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY #92680
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY #92681
  IF ~~ THEN REPLY #92682 DO ~AddJournalEntry(92699,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY #90709 DO ~AddJournalEntry(92699,QUEST)
~ GOTO 4
  IF ~~ THEN REPLY #92683 DO ~AddJournalEntry(92699,QUEST)
~ GOTO 5
END

IF ~~ THEN BEGIN 26
  SAY #92684
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #92685
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY #92686
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY #92687
  IF ~~ THEN REPLY #92688 GOTO 18
  IF ~~ THEN REPLY #92689 GOTO 4
  IF ~~ THEN REPLY #92690 GOTO 5
END

IF ~~ THEN BEGIN 30
  SAY #92691
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY #92692
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY #92693
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY #92694
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY #92695
  IF ~~ THEN REPLY #92696 GOTO 18
  IF ~~ THEN REPLY #92697 GOTO 4
  IF ~~ THEN REPLY #92698 GOTO 5
END

IF ~~ THEN BEGIN 35
  SAY #92871
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 57
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 38
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 54
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 37
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 32
END

IF ~~ THEN BEGIN 36
  SAY #92885
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 58
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 33
END

IF ~~ THEN BEGIN 37
  SAY #92302
  IF ~~ THEN EXTERN ~OHBBRODL~ 63
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 34
END

IF ~~ THEN BEGIN 38
  SAY #100502
  IF ~~ THEN EXTERN ~OHBBRODL~ 69
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 60
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 35
END

IF ~~ THEN BEGIN 39
  SAY #92921
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 36
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 58
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 41
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 61
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 42
END

IF WEIGHT #6 ~  Global("ohb_finale","global",1)
~ THEN BEGIN 40
  SAY #92921
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~  Global("ohb_finale","global",6)
~ THEN BEGIN 41
  SAY #92981
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY #100621
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 66
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 61
  IF ~  InMyArea("ohbgerro")
!Dead("ohbgerro")
~ THEN EXTERN ~OHBGERRO~ 40
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 39
END

IF ~~ THEN BEGIN 43
  SAY #90493
  IF ~~ THEN EXTERN ~OHBMESSE~ 3
END

IF ~~ THEN BEGIN 44
  SAY #90558
  IF ~~ THEN EXTERN ~OHBDENNA~ 268
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 45
  SAY #92871
  IF ~~ THEN EXIT
END
