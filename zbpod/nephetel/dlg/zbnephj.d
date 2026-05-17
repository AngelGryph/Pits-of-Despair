BEGIN ZBNEPHJ
// Joined Dialogue

/// Before Match 1
IF ~Global("OHB_LAST_BATTLE","GLOBAL",0) Global("ZB_NEPH_INTERJECT_1","GLOBAL",2) GlobalGT("zb_train_spawn","GLOBAL",0)~ THEN BEGIN 0
  SAY @34 /* Why hello, <CHARNAME>. I had the pleasure of watching your battle with the animals. Ferocious, aren’t they? Then again, you’ll face much worse in the pits. */
  IF ~~ THEN GOTO 1
END

IF ~Global("OHB_LAST_BATTLE","GLOBAL",0) Global("ZB_NEPH_INTERJECT_1","GLOBAL",2)~ THEN BEGIN 1
  SAY @35 /* New gladiators always go up against the orc warband. Most people tend to laugh at them—they get resurrected and mocked for every failed match. Remember, in Dennaton’s game, the joke’s always on us. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTERJECT_1","GLOBAL",3)~ EXIT
END
///

/// After Match 1
IF ~Global("ZB_NEPH_POST_INTERJECT_1","GLOBAL",3)~ THEN BEGIN 1.1
  SAY @128 /* Dennaton will raise them and send them back in. Nothing learned. Nothing gained. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_1","GLOBAL",4)~ EXIT
END
///

/// After Match 2 - After Dennaton kills part of a gladiatorial party
IF ~Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)~ THEN BEGIN 2.1
  SAY @41 /* You’ve borne witness to the harshest truth of this place: anyone can be replaced at a moment’s notice, and even the most loyal are enslaved one way or another. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_2","GLOBAL",4)~ EXIT
END
///

/// Before Match 3 - Lizards
IF ~Global("ZB_NEPH_INTERJECT_3","GLOBAL",2)~ THEN BEGIN 3
  SAY @67 /* Lizardfolk are vicious warriors that shouldn’t be underestimated. Be wary—their hides turn blades, and their shamans summon swarms of biting insects. Do me a personal favor and get rid of them, okay? */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_3","GLOBAL",3)~ EXIT
END
///

/// After Match 3
IF ~Global("ZB_NEPH_POST_INTERJECT_3","GLOBAL",3)~ THEN BEGIN 3.1
  SAY @129 /* Are they all dead? ...Good. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_3","GLOBAL",4)~ EXIT
END
///

/// Before Match 4 - Elder Umber Hulks
IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",2)~ THEN BEGIN 4
  SAY @45 /* Umber hulks are extremely dangerous and fast to boot, and their elders more so. They can easily overpower those that gaze into their eyes. Luckily for you, I happen to have a potion that’ll defend you from any adverse effects. It’s all yours for a meager 300 gold. */
  IF ~~ THEN REPLY @46 /* I'll take it! */ DO ~TakePartyGold(700) GiveItemCreate("POTN21",Player1,1,0,0) SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @47 /* Keep your potion, my eyes are on the prize. */ DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ GOTO 6
END

IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 6
  SAY @48 /* As long as you don't meet the gaze of those Umber Hulks, eh? */
  IF ~~ THEN EXIT
END
///

/// After Match 4
IF ~Global("ZB_NEPH_POST_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 4.1
  SAY @130 /* Well, you seem to be walking straight, so I guess you did okay. Not bad. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_4","GLOBAL",4)~ EXIT
END
///

/// Before Match 5
IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",2)~ THEN BEGIN 7
  SAY @60 /* I spotted a war party of drow that were taken by the Planar Hunters. I suspect that you’re about to go face-to-face with a menagerie of spiders and magic, so be careful. They will use every advantage they can get to destroy you. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ GOTO 8
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN 8
  SAY @123 /* In fact, perhaps you could use an advantage of your own. While most of these amateur fighters here will charge you for their assistance, I’ll fight with you—free, this time. A favor to my new favorite gladiator. What say you? */
  IF ~~ THEN REPLY @64 /* Your help would be greatly appreciated */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.2
  IF ~Global("ZB_NEPH_INTERJECT_5_ONCE","GLOBAL",0)~ THEN REPLY @65 /* How can you assist me? */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.5
  IF ~~ THEN REPLY @55 /* We don’t need any dead weight. */ GOTO zbneph5.3
  IF ~~ THEN REPLY @66 /* I appreciate the offer, but we’ll be fine on our own. */  DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.4
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.2
  SAY @49 /* You won't regret it. I'll meet you in the arena with my dagger drawn. */
  IF ~~ THEN REPLY @50 /* Very well, we will take on these drow on together. */ DO ~SetGlobal("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",1)~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.3
  SAY @51 /* You may find yourself with a whole lot more without my help, but so be it. Good luck out there. */
  IF ~~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.4
  SAY @53 /* Suit yourself, 'Hero' */
  IF ~~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.5
  SAY @54 /* I am a dancer in the shadows, a knife in the dark. Let me show you what I can do on the battlefield, and I promise that you won’t be disappointed. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_5_ONCE","GLOBAL",1)~ GOTO 8
END

/// Soa

IF ~Global("ZBNEPHQUEST1","GLOBAL",5)~ THEN BEGIN zbnephq1.0
  SAY @377 /* I don’t enjoy being summoned like that, but I must act on this information—even if it turns out to be a dead end for my task. But I’m likely getting ahead of myself. I don’t want to keep you in the dark, and I’m sure you have questions. */
  IF ~~ THEN REPLY @378 /* I want to hear about your task if I’m going to be helping you. */ DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",6)~ GOTO zbnephq1.1
  IF ~~ THEN REPLY @379 /* You’re damn right I do. Who was that? What is it that you do? */ DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",6)~ GOTO zbnephq1.2
  IF ~~ THEN REPLY @380 /* I couldn’t care less about the specifics. */ DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",6) IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1)~ GOTO zbnephq1.3
END

IF ~Global("ZBNEPHQUEST1","GLOBAL",6)~ THEN BEGIN zbnephq1.1
  SAY @381 /* Right, that’s completely reasonable. Though it’s not the easiest thing to talk about. */
  IF ~~ THEN GOTO zbnephq1.1.5
END

IF ~Global("ZBNEPHQUEST1","GLOBAL",6)~ THEN BEGIN zbnephq1.2
  SAY @385 /* I’ll tell you as much as I can, but it may not be as much as you want. */
  IF ~~ THEN GOTO zbnephq1.1.5
END

IF ~Global("ZBNEPHQUEST1","GLOBAL",6)~ THEN BEGIN zbnephq1.1.5
  SAY @382 /* I am seeking a magical tome, but not just because I was hired to do it. A long time ago, someone that I failed got… hurt. As long as this tome exists, the people who are responsible remain beyond consequence. */
  =
  @383 /* I found resources to help me, and those resources came with expectations. My employer is not someone you would like—ambitious, well-connected, and very invested in seeing this finished. Mardrick, the man from before, serves the same interests. */
  =
  @384 /* So I search, and I have to suffer the occasional drop-in from my unlikeable bedfellows from time to time. */
  = @426 /* Let’s go to the Umar Hills soon. */
  IF ~~ THEN DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",7)~ EXIT
END

IF ~Global("ZBNEPHQUEST1","GLOBAL",6)~ THEN BEGIN zbnephq1.3
  SAY @386 /* That makes my life easier then. Let’s go to the Umar Hills soon. */
  IF ~~ THEN DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",7)~ EXIT
END

IF ~Global("ZBNEPHQUEST1","GLOBAL",10)~ THEN ZBNEPHQ1.4
  SAY @427 /* Well, I can certainly see my quarry coming to a place like this, judging from his description. Let’s look around. Perhaps he’s still here. */
  IF ~~ THEN DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",11)~ EXIT
END

/// Quests

APPEND_EARLY UHINN01
  IF WEIGHT #-999 ~InParty("ZBNEPH")
      InMyArea("ZBNEPH")
      !StateCheck("ZBNEPH",CD_STATE_NOTVALID)
      Global("ZBNEPHQUEST1","GLOBAL",7)~
  THEN BEGIN ZBNEPHQUEST1PART2INTRO
    SAY @396 /* Well, that’s not a sight ye see wanderin’ in off th’ road every day. Welcome, me friends, and do be mindin’ yer horns on th’ beams, me lady. I’d hate t’ have the place collapse on us all! */
    IF ~~ THEN DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",8)~ EXIT
  END
END

INTERJECT_COPY_TRANS UHINN01 ZBNEPHQUEST1PART2INTRO ZBNEPHQUEST1PART2
  == ZBNEPHJ @397 /* Keep your head about you, if you please. I’m here for information—I heard word that you had something of a disturbing customer visit your inn recently. Possibly mentioned something about a magic book. */
  == UHINN02 IF ~!Dead("uhinn02")~ THEN @398 /* Aye, a right blatherer, that one! */
  == UHINN01 IF ~!Dead("uhinn02")~ THEN @399 /* Quiet, boy! Ye’ve gone an’ told ‘er that he WAS here. */
  == UHINN01 @400 /* Aye… no point tryin’ t’ play clever now. What is it ye want to know? */
  == ZBNEPHJ @401 /* Tell me what he looked like, what he was speaking of, and where he went. This is more important than you know. */
  == UHINN01 @402 /* As ye wish. He wore tattered black robes, looked like he hadn’t slept proper in days. I offered th’ fellow a room ’fore I realized he’d be bad for business, but he just kept mutterin’ on about some book, and a… shard?. Figured he got knocked on th' head. */
  == UHINN01 @403 /* Last I saw, he headed north. An’ if he’s wandered off toward th’ old forest… well. Them creepies out there’ve likely done their way with him by now. */
  == ZBNEPHJ @404 /* Thank you. That will be all. */
  == UHINN02 IF ~!Dead("uhinn02")~ THEN @405 /* ‘Ey, that lady’s got a tail! */
END
