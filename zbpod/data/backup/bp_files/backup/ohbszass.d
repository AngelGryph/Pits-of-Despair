BEGIN ~OHBSZASS~

IF ~~ THEN BEGIN 0
  SAY #94277
  IF ~~ THEN EXTERN ~OHBDENNA~ 248
END

IF ~~ THEN BEGIN 1
  SAY #94279
  IF ~~ THEN EXTERN ~OHBDENNA~ 249
END

IF ~~ THEN BEGIN 2
  SAY #94281
  IF ~~ THEN EXTERN ~OHBDENNA~ 250
END

IF ~~ THEN BEGIN 3
  SAY #94283
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT54")
~ EXIT
END