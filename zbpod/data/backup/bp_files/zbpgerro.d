BEGIN ~OHBGERRO~

IF ~  Global("OHB_FINALE","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY #95876
  IF ~~ THEN REPLY #95877 GOTO 3
  IF ~~ THEN REPLY #95878 GOTO 2
  IF ~~ THEN REPLY #95879 GOTO 1
  IF ~~ THEN REPLY #95880 EXIT
END

IF ~~ THEN BEGIN 1
  SAY #95881
  IF ~~ THEN REPLY #95882 GOTO 3
  IF ~~ THEN REPLY #95883 GOTO 2
  IF ~~ THEN REPLY #95884 EXIT
END

IF ~~ THEN BEGIN 2
  SAY #95885
  IF ~~ THEN EXTERN ~OHBMOLZA~ 50
END

IF ~~ THEN BEGIN 3
  SAY #95886
  IF ~~ THEN EXTERN ~OHBMOLZA~ 50
END

IF ~~ THEN BEGIN 4
  SAY #95888
  IF ~~ THEN DO ~AddJournalEntry(95946,INFO)
~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY #95889
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY #95890
  IF ~~ THEN EXTERN ~OHBMOLZA~ 51
END

IF ~~ THEN BEGIN 7
  SAY #95892
  IF ~~ THEN REPLY #95893 GOTO 8
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95894 GOTO 9
  IF ~  !Global("OHB_DULF_MIRROR","GLOBAL",1)
Global("OHB_BANNOR_SWITCH","GLOBAL",1)
~ THEN REPLY #95895 GOTO 18
  IF ~~ THEN REPLY #95896 EXIT
END

IF ~~ THEN BEGIN 8
  SAY #95897
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95898 GOTO 9
  IF ~  !Global("OHB_DULF_MIRROR","GLOBAL",1)
Global("OHB_BANNOR_SWITCH","GLOBAL",1)
~ THEN REPLY #95899 GOTO 18
  IF ~~ THEN REPLY #95896 EXIT
END

IF ~~ THEN BEGIN 9
  SAY #95900
  IF ~~ THEN REPLY #95901 GOTO 10
  IF ~~ THEN REPLY #95902 GOTO 11
  IF ~~ THEN REPLY #95903 GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY #95904
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY #95905
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY #95906
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY #95907
  IF ~  PartyGoldGT(499)
~ THEN REPLY #95908 DO ~TakePartyGold(500)
~ GOTO 14
  IF ~  Global("OHB_GERRO_FREE","LOCALS",0)
~ THEN REPLY #95909 GOTO 15
  IF ~  Global("OHB_GERRO_FREE","LOCALS",1)
~ THEN REPLY #95909 GOTO 16
  IF ~~ THEN REPLY #95910 GOTO 17
END

IF ~~ THEN BEGIN 14
  SAY #95911
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_GERRO_HIRED","GLOBAL",1)
SetGlobal("OHB_GERRO_HIREDBEFORE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY #95912
  IF ~~ THEN REPLY #95913 DO ~SetGlobal("OHB_GERRO_FREE","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY #95914 GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY #95915
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY #95916
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY #95917
  IF ~  Global("healscroll","LOCALS",0)
~ THEN REPLY #95918 DO ~SetGlobal("healscroll","LOCALS",1)
~ GOTO 19
  IF ~  Global("strengthscroll","LOCALS",0)
~ THEN REPLY #95919 DO ~SetGlobal("strengthscroll","LOCALS",1)
~ GOTO 20
  IF ~~ THEN REPLY #95920 DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",1)
~ GOTO 21
  IF ~  Global("chickenscroll","LOCALS",0)
~ THEN REPLY #95921 DO ~SetGlobal("chickenscroll","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY #95922 EXIT
END

IF ~~ THEN BEGIN 19
  SAY #95923
  IF ~  Global("strengthscroll","LOCALS",0)
~ THEN REPLY #95924 DO ~SetGlobal("strengthscroll","LOCALS",1)
~ GOTO 20
  IF ~~ THEN REPLY #95925 DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",1)
~ GOTO 21
  IF ~  Global("chickenscroll","LOCALS",0)
~ THEN REPLY #95926 DO ~SetGlobal("chickenscroll","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY #95927 EXIT
END

IF ~~ THEN BEGIN 20
  SAY #95928
  IF ~  Global("healscroll","LOCALS",0)
~ THEN REPLY #95929 DO ~SetGlobal("healscroll","LOCALS",1)
~ GOTO 19
  IF ~~ THEN REPLY #95930 DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",1)
~ GOTO 21
  IF ~  Global("chickenscroll","LOCALS",0)
~ THEN REPLY #95931 DO ~SetGlobal("chickenscroll","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY #95932 EXIT
END

IF ~~ THEN BEGIN 21
  SAY #95933
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY #95934
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY #95935
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY #95936
  IF ~  PartyHasItem("ohbcom12")
~ THEN REPLY #95937 DO ~AddJournalEntry(95782,QUEST)
~ GOTO 27
  IF ~~ THEN REPLY #95938 EXIT
  IF ~~ THEN REPLY #95939 EXIT
END

IF ~~ THEN BEGIN 25
  SAY #95940
  IF ~  Global("healscroll","LOCALS",0)
~ THEN REPLY #95941 DO ~SetGlobal("healscroll","LOCALS",1)
~ GOTO 19
  IF ~  Global("strengthscroll","LOCALS",0)
~ THEN REPLY #95942 DO ~SetGlobal("strengthscroll","LOCALS",1)
~ GOTO 20
  IF ~~ THEN REPLY #95943 DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #95944 EXIT
END

IF ~  Global("OHB_FINALE","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 26
  SAY #95947
  IF ~  Global("OHB_BANNOR_SWITCH","GLOBAL",1)
!Global("OHB_DULF_MIRROR","GLOBAL",1)
Global("OHB_GERR_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95948 GOTO 18
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom12")
~ THEN REPLY #95949 GOTO 27
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",2)
PartyGoldGT(3999)
~ THEN REPLY #95950 DO ~TakePartyGold(4000)
~ GOTO 29
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",3)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY #95951 GOTO 32
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",3)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY #95951 GOTO 33
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_GERRO_HIREDBEFORE","LOCALS",0)
~ THEN REPLY #95952 GOTO 9
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_GERRO_HIREDBEFORE","LOCALS",1)
~ THEN REPLY #95952 GOTO 34
  IF ~~ THEN REPLY #95953 GOTO 8
  IF ~~ THEN REPLY #95954 EXIT
END

IF ~~ THEN BEGIN 27
  SAY #95955
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",5)
TakePartyItem("ohbcom12")
DestroyItem("ohbcom12")
~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY #95956
  IF ~  PartyGoldGT(3999)
~ THEN REPLY #95957 DO ~TakePartyGold(4000)
~ GOTO 29
  IF ~~ THEN REPLY #95958 DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #95959 DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",2)
~ GOTO 31
END

IF ~~ THEN BEGIN 29
  SAY #95960
  IF ~~ THEN DO ~SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",3)
SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",3)
AddJournalEntry(95787,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY #95961
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY #95962
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32
  SAY #95963
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33
  SAY #95964
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY #95965
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_GERRO_HIREDBEFORE","LOCALS",1)
~ THEN REPLY #95966 GOTO 35
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_GERRO_HIREDBEFORE","LOCALS",0)
~ THEN REPLY #95967 GOTO 35
  IF ~~ THEN REPLY #95968 GOTO 17
END

IF ~~ THEN BEGIN 35
  SAY #95969
  IF ~  PartyGoldGT(499)
~ THEN REPLY #95970 DO ~TakePartyGold(500)
~ GOTO 36
  IF ~  Global("OHB_GERRO_FREE","LOCALS",0)
~ THEN REPLY #95971 GOTO 37
  IF ~  Global("OHB_GERRO_FREE","LOCALS",1)
~ THEN REPLY #95971 GOTO 16
  IF ~~ THEN REPLY #95972 GOTO 17
END

IF ~~ THEN BEGIN 36
  SAY #95973
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_GERRO_HIRED","GLOBAL",1)
SetGlobal("OHB_GERRO_HIREDBEFORE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 37
  SAY #95974
  IF ~~ THEN REPLY #95975 DO ~SetGlobal("OHB_GERRO_FREE","LOCALS",1)
~ GOTO 36
  IF ~~ THEN REPLY #95976 GOTO 17
END

IF ~  Global("ohb_finale_arena","oh8200",4)
~ THEN BEGIN 38
  SAY #94317
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("scrl07",Player1,1,0,0)
EscapeAreaMove("oh8100",4240,3020,W)
~ EXIT
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN DO ~ClearAllActions()
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("scrl07",Player1,1,0,0)
EscapeAreaMove("oh8100",4240,3020,W)
~ EXTERN ~OHBLEA~ 16
  IF ~  Global("OHB_GERR_BANNORSWITCH","GLOBAL",3)
~ THEN DO ~GiveItemCreate("scrl07",Player1,1,0,0)
~ GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY #101778
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",4)
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("ohbscrl2",Player1,1,0,0)
EscapeAreaMove("oh8100",4240,3020,W)
~ EXIT
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN DO ~ClearAllActions()
SetGlobal("OHB_GERR_BANNORSWITCH","GLOBAL",4)
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("ohbscrl2",Player1,1,0,0)
EscapeAreaMove("oh8100",4240,3020,W)
~ EXTERN ~OHBLEA~ 16
END

IF ~~ THEN BEGIN 40
  SAY #100623
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
END