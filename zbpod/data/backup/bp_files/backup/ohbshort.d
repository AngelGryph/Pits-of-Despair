BEGIN ~OHBSHORT~

IF ~  Global("OHB_COOK_DEAD","GLOBAL",1)
GlobalGT("OHB_FINALE","GLOBAL",0)
~ THEN BEGIN 0
  SAY #100670
  IF ~~ THEN EXTERN ~OHBMARDU~ 14
END

IF ~  Global("OHB_KITCHEN_TALK","GLOBAL",1)
Global("tier","GLOBAL",1)
~ THEN BEGIN 1
  SAY #90674
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY #93834
  IF ~~ THEN EXTERN ~OHBCOOK~ 37
END

IF ~  False()
Global("OHB_COOK_POISON","GLOBAL",5)
~ THEN BEGIN 3
  SAY #93889
  IF ~~ THEN EXIT
END

IF ~  False()
Global("OHB_COOK_POISON","GLOBAL",2)
~ THEN BEGIN 4
  SAY #93906
  IF ~~ THEN EXIT
END

IF ~  Global("ohb_finale","global",6)
Global("OHB_COOK_DEAD","GLOBAL",2)
~ THEN BEGIN 5
  SAY #92973
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY #93851
  IF ~~ THEN REPLY #91948 EXTERN ~OHBMARDU~ 19
  IF ~~ THEN REPLY #92282 EXTERN ~OHBMARDU~ 28
  IF ~~ THEN REPLY #92097 EXTERN ~OHBMARDU~ 27
END

IF ~~ THEN BEGIN 7
  SAY #93863
  IF ~~ THEN EXTERN ~OHBMARDU~ 22
END

IF ~~ THEN BEGIN 8
  SAY #93869
  IF ~~ THEN EXTERN ~OHBMARDU~ 24
END

IF ~~ THEN BEGIN 9
  SAY #93877
  IF ~~ THEN DO ~AddJournalEntry(94554,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #93879
  IF ~~ THEN DO ~SetGlobal("OHB_SOUSCHEF_PLOT","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY #93881
  IF ~~ THEN EXTERN ~OHBMARDU~ 29
END

IF ~~ THEN BEGIN 12
  SAY #93885
  IF ~~ THEN EXTERN ~OHBMARDU~ 31
END

IF ~~ THEN BEGIN 13
  SAY #90657
  IF ~~ THEN EXTERN ~OHBMARDU~ 33
END

IF ~~ THEN BEGIN 14
  SAY #90660
  IF ~~ THEN EXTERN ~OHBMARDU~ 35
END

IF ~~ THEN BEGIN 15
  SAY #90667
  IF ~~ THEN EXTERN ~OHBCOOK~ 50
END

IF ~  Global("OHB_KITCHEN_TALK","GLOBAL",0)
Global("tier","GLOBAL",1)
~ THEN BEGIN 16
  SAY #90672
  IF ~~ THEN DO ~SetGlobal("OHB_KITCHEN_TALK","GLOBAL",1)
~ EXTERN ~OHBMARDU~ 40
END