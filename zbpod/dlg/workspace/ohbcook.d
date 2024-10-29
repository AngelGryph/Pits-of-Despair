// creator  : weidu (version 24900)
// argument : OHBCOOK.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBCOOK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  Global("OHB_FOOD_FIGHT","MYAREA",4)
Global("tier","GLOBAL",0)
~ THEN BEGIN 0
  SAY #90605 /* ~Clangeddin's beard, look at this! All me work ruined by you donkeys! Do y'have any idea what it takes to make braised lobster arabel with broccoli root cream and shellfish vinaigrette? THAT WAS PURE ART!~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY #90608 /* ~Where is that peanut-sized rat? Scurried off to his hole, most like! TARTLE, YOU VERMIN, COME AND FACE ME! ME LOBSTER ARABEL WILL BE AVENGED!~ */
  IF ~~ THEN DO ~AddJournalEntry(102542,INFO)
Face(E)
StartCutSceneMode()
StartCutScene("ohbcut08")
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 46 even though they appear after this state */
~  Global("OHB_TALKED_COOK","LOCALS",0)
Global("tier","GLOBAL",1)
~ THEN BEGIN 2
  SAY #90613 /* ~Oh, here comes another lamb fer the slaughter. What do y'want?~ */
  IF ~  !Global("OHB_COOK_SAID_WHO","LOCALS",1)
~ THEN REPLY #90614 /* ~Who are you?~ */ DO ~SetGlobal("OHB_TALKED_COOK","LOCALS",1)
~ GOTO 3
  IF ~  !Global("OHB_COOK_SAID_WHAT","LOCALS",1)
~ THEN REPLY #90615 /* ~What is this place?~ */ DO ~SetGlobal("OHB_TALKED_COOK","LOCALS",1)
~ GOTO 6
  IF ~  !Global("OHB_COOK_SAID_HOW","LOCALS",1)
~ THEN REPLY #90616 /* ~How can we get out of here?~ */ DO ~SetGlobal("OHB_TALKED_COOK","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY #90617 /* ~Never mind.~ */ EXIT
END

IF ~~ THEN BEGIN 3
  SAY #90618 /* ~I'm the bleedin' chef. Wasn't fer me, ye'd have nothin' GOOD to eat. None of ye would, the hunters upstairs or the slaves below.~ */
  IF ~~ THEN DO ~SetGlobal("OHB_COOK_SAID_WHO","LOCALS",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY #90619 /* ~I best never find ye lingering around me kitchen, poking in me pots, complaining about yer food... Even look at me crossways and ye'll answer to him.~ */
  IF ~~ THEN GOTO 5
  IF ~  Range("ohbcogua",30)
!StateCheck("ohbgua01",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHBCOGUA~ 0
END

IF ~~ THEN BEGIN 5
  SAY #90621 /* ~Anythin' else?~ */
  IF ~  !Global("OHB_COOK_SAID_WHAT","LOCALS",1)
~ THEN REPLY #90622 /* ~What is this place?~ */ GOTO 6
  IF ~  !Global("OHB_COOK_SAID_HOW","LOCALS",1)
~ THEN REPLY #90623 /* ~How can we get out of here?~ */ GOTO 10
  IF ~~ THEN REPLY #90624 /* ~That's all.~ */ EXIT
END

IF ~~ THEN BEGIN 6
  SAY #90625 /* ~It's yer world now. Ye sleep in yer bunk, eat what I cook, and fight fer yer life. If ye're good an' lucky, y'might keep it a while.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY #90626 /* ~The kitchen an' banquet hall are mine. Upstairs is the Hunters'. All that goes up there is food and drink and the bloody Nosers.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY #90627 /* ~If y'want to poke about, go see the merchants or the clerics. Better yet, keep to the lounge or trainin' hall. And the arena, of course.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY #90629 /* ~Anythin' else?~ */
  IF ~  !Global("OHB_COOK_SAID_WHO","LOCALS",1)
~ THEN REPLY #90614 /* ~Who are you?~ */ DO ~SetGlobal("OHB_COOK_SAID_WHAT","LOCALS",1)
~ GOTO 3
  IF ~  !Global("OHB_COOK_SAID_HOW","LOCALS",1)
~ THEN REPLY #90616 /* ~How can we get out of here?~ */ DO ~SetGlobal("OHB_COOK_SAID_WHAT","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY #90617 /* ~Never mind.~ */ DO ~SetGlobal("OHB_COOK_SAID_WHAT","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #90631 /* ~Ye don't, that's how.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #90632 /* ~Anything else y'want to ask, or can I get back to work now?~ */
  IF ~  !Global("OHB_COOK_SAID_WHO","LOCALS",1)
~ THEN REPLY #90614 /* ~Who are you?~ */ DO ~SetGlobal("OHB_COOK_SAID_HOW","LOCALS",1)
~ GOTO 3
  IF ~  !Global("OHB_COOK_SAID_WHAT","LOCALS",1)
~ THEN REPLY #90615 /* ~What is this place?~ */ DO ~SetGlobal("OHB_COOK_SAID_HOW","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY #90617 /* ~Never mind.~ */ DO ~SetGlobal("OHB_COOK_SAID_HOW","LOCALS",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 46 even though they appear after this state */
~  Global("ohb_finale","global",0)
GlobalGT("OHB_TALKED_COOK","LOCALS",0)
Global("tier","GLOBAL",1)
~ THEN BEGIN 12
  SAY #90633 /* ~I'm busy. What do y'want?~ */
  IF ~~ THEN REPLY #90634 /* ~I have some questions.~ */ GOTO 13
  IF ~  Global("ohb_cook_ask_food","locals",0)
Global("ohb_tartle_rotten_food","global",1)
~ THEN REPLY #90635 /* ~Tartle's feeding me nothing but rotten food. May I have something to eat?~ */ GOTO 14
  IF ~~ THEN REPLY #90617 /* ~Never mind.~ */ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #90636 /* ~Make it quick.~ */
  IF ~~ THEN REPLY #90614 /* ~Who are you?~ */ GOTO 3
  IF ~  !Global("OHB_COOK_SAID_WHAT","LOCALS",1)
~ THEN REPLY #90622 /* ~What is this place?~ */ GOTO 6
  IF ~~ THEN REPLY #90623 /* ~How can we get out of here?~ */ GOTO 10
  IF ~~ THEN REPLY #90617 /* ~Never mind.~ */ EXIT
END

IF ~~ THEN BEGIN 14
  SAY #90637 /* ~Sounds like somethin' the wretched weasel'd do. Here, take this. I'll make sure y'get proper food from now on. I'll not accept anything but the best served 'round here. Could reflect poorly on me skills.~ */
  IF ~~ THEN REPLY #90638 /* ~I'll remember this gesture. Bless you.~ */ GOTO 15
  IF ~~ THEN REPLY #90639 /* ~I should pay you for this. ~ */ GOTO 15
  IF ~~ THEN REPLY #90640 /* ~Glad I could help you preserve your reputation.~ */ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY #90641 /* ~Get out. I've work to do.~ */
  IF ~~ THEN DO ~SetGlobal("ohb_cook_ask_food","locals",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 46 even though they appear after this state */
~  Global("ohb_finale","global",0)
GlobalGT("tier","GLOBAL",1)
Global("OHB_COOK_MUSHROOM","GLOBAL",0)
~ THEN BEGIN 16
  SAY #93797 /* ~Hey! Get over here! I want to talk wi' ye.~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY #93798 /* ~Y'want a little boost on yer plate before yer next fight? There's something y'can do fer me.~ */
  IF ~~ THEN REPLY #93799 /* ~I don't do favors for the likes of you.~ */ DO ~SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",-1)
~ GOTO 18
  IF ~~ THEN REPLY #93800 /* ~I'll take any advantage I can get.~ */ DO ~AddJournalEntry(93847,QUEST)
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",1)
~ GOTO 19
  IF ~~ THEN REPLY #93801 /* ~I'm doing just fine in the arena. But I might be willing to do you a favor.~ */ DO ~AddJournalEntry(93847,QUEST)
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY #93802 /* ~Suit yerself; I'll ask another one of yer sad bunch. I've a mind t' feed ye wyvern slop fer the next week. Count yerself lucky I'm proud of what I serve here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY #93803 /* ~Listen up. What I tell ye stays between us.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #93804 /* ~Blab about it and I'll turn your mind into sausage.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY #93805 /* ~I want ye to get me a piece—doesn't have to be a big one... just the size of me thumb, say—~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY #93806 /* ~—a piece o' that walkin' mushroom in the market.~ */
  IF ~~ THEN REPLY #93807 /* ~The Concocter? That's terrible! What did it do to you?~ */ GOTO 23
  IF ~~ THEN REPLY #93808 /* ~What would you want with that? Disgusting.~ */ GOTO 24
  IF ~~ THEN REPLY #93809 /* ~Hmm... Tasty. I like mushroom too.~ */ GOTO 25
END

IF ~~ THEN BEGIN 23
  SAY #93810 /* ~It'll grow back. Ye've done worse in the arena.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24
  SAY #93811 /* ~Y'obviously haven't tasted myconid flesh.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY #93812 /* ~Exactly! Glad t' find another epicurean in this place, finally.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY #93813 /* ~A while back, somebody gave me a few pieces of myconid t' cook. They meant it as a joke. But I simmered slivers in a light stock a full day, added a bit o' salt, and that was it. Best soup I ever tasted.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #93815 /* ~Get some o' that giant mushroom an' bring it to me. I can be quite helpful t' those who do me a service.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY #93817 /* ~Ferget it. I wouldn't waste it on ye.~ */
  IF ~~ THEN DO ~AddJournalEntry(93848,QUEST)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 46 even though they appear after this state */
~  Global("ohb_finale","global",0)
GlobalGT("tier","GLOBAL",1)
~ THEN BEGIN 29
  SAY #93818 /* ~Y'better have a good reason fer disturbing me.~ */
  IF ~  Global("OHB_COOK_MUSHROOM","GLOBAL",-1)
~ THEN REPLY #93819 /* ~You said earlier there was something I could do for you.~ */ DO ~SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",1)
~ GOTO 30
  IF ~  Global("OHB_COOK_MUSHROOM","GLOBAL",2)
PartyHasItem("OHBCOM02")
~ THEN REPLY #93820 /* ~I have a piece of the Concocter.~ */ GOTO 31
  IF ~  Global("ohb_cook_ask_food","locals",0)
Global("ohb_tartle_rotten_food","global",1)
~ THEN REPLY #90635 /* ~Tartle's feeding me nothing but rotten food. May I have something to eat?~ */ GOTO 14
  IF ~  Global("OHB_COOK_POISON","GLOBAL",1)
~ THEN REPLY #93821 /* ~You should know your sous-chefs have asked me to poison you.~ */ DO ~SetGlobal("OHB_COOK_POISON","GLOBAL",5)
~ GOTO 35
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #93822 /* ~I'm looking for a "special" ingredient for a drink I'd like to make.~ */ GOTO 39
  IF ~~ THEN REPLY #93823 /* ~I'd like to ask you something.~ */ GOTO 38
  IF ~~ THEN REPLY #90617 /* ~Never mind.~ */ EXIT
END

IF ~~ THEN BEGIN 30
  SAY #93824 /* ~Changed yer mind, have ye? Listen up, this stays between us.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 31
  SAY #93825 /* ~Y'do? Bring it here!~ */
  IF ~~ THEN REPLY #93826 /* ~Here it is.~ */ DO ~TakePartyItem("OHBCOM02")
DestroyItem("OHBCOM02")
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",3)
~ GOTO 32
  IF ~~ THEN REPLY #93827 /* ~First, I want your assurance I'll get some of that soup when it's ready.~ */ GOTO 34
END

IF ~~ THEN BEGIN 32
  SAY #93828 /* ~Mmmm, smell that! Hard to believe such an amazing scent comes from such an 'orrible creature.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY #93829 /* ~Here, I promised y'these. Eat one before yer next fight. It'll give ye a mighty edge.~ */
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
  SAY #93830 /* ~Fine. But I'm not making it just now. Don't have time to enjoy it, keepin' you performers fed. Ye'll get yer taste once this tournament is done, y'have me word. Now give me the myconid.~ */
  IF ~~ THEN DO ~TakePartyItem("OHBCOM02")
DestroyItem("OHBCOM02")
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",3)
~ GOTO 32
END

IF ~~ THEN BEGIN 35
  SAY #93831 /* ~Is that so? Ye ingrate monkeys! Did y'really think ye'd get away wi' this?~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY #93833 /* ~I should just cook ye up and see what halfling-gnome soup tastes like. Wait till Dennaton hears about this. Ye'll wish I had!~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 2
END

IF ~~ THEN BEGIN 37
  SAY #93835 /* ~And ye, thanks for coming to me wi' this. I suppose I'm in yer debt now.~ */
  IF ~~ THEN DO ~AddJournalEntry(94555,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY #93836 /* ~So y'fancy yerself an innkeeper now?  Why would a slave want to make drinks?~ */
  IF ~~ THEN REPLY #90614 /* ~Who are you?~ */ GOTO 3
  IF ~~ THEN REPLY #90622 /* ~What is this place?~ */ GOTO 6
  IF ~~ THEN REPLY #90617 /* ~Never mind.~ */ EXIT
END

IF ~~ THEN BEGIN 39
  SAY #93836 /* ~So y'fancy yerself an innkeeper now?  Why would a slave want to make drinks?~ */
  IF ~~ THEN REPLY #93837 /* ~It's better you don't know the details.~ */ GOTO 40
  IF ~  OR(2)
Global("OHB_COOK_POISON","GLOBAL",5)
Global("OHB_COOK_MUSHROOM","GLOBAL",3)
~ THEN REPLY #92096 /* ~I helped you once. Now I need you to help me.~ */ GOTO 41
  IF ~~ THEN REPLY #92290 /* ~It's a surprise for one of the Planar Hunters.~ */ GOTO 42
END

IF ~~ THEN BEGIN 40
  SAY #93838 /* ~I see... What is this ingredient y'need?~ */
  IF ~~ THEN REPLY #93839 /* ~Poison.~ */ GOTO 43
  IF ~~ THEN REPLY #92170 /* ~Never mind. Forget I brought it up.~ */ GOTO 45
END

IF ~~ THEN BEGIN 41
  SAY #93840 /* ~A dwarf always pays his debts. What's this ingredient ye're looking for?~ */
  IF ~~ THEN REPLY #93841 /* ~Some sort of poison that could kill or incapacitate a man or woman.~ */ GOTO 43
  IF ~~ THEN REPLY #92170 /* ~Never mind. Forget I brought it up.~ */ GOTO 45
END

IF ~~ THEN BEGIN 42
  SAY #93842 /* ~Ye've got it in fer one of the Winged's thugs, have ye? I like the sound of that. What's this ingredient y'need?~ */
  IF ~~ THEN REPLY #93843 /* ~Some sort of poison.~ */ GOTO 43
  IF ~~ THEN REPLY #92170 /* ~Never mind. Forget I brought it up.~ */ GOTO 45
END

IF ~~ THEN BEGIN 43
  SAY #93844 /* ~Not thinking of poisoning me, are ye? Hah! Wouldn't think so! Who'd feed ye?~ */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY #93845 /* ~Some people are deathly allergic to funguswood... but fer the average person, a healthy dose of rat poison should do the trick. There's some in the cupboard. Help yerself.~ */
  IF ~~ THEN DO ~AddJournalEntry(101266,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY #93846 /* ~Damn. I was enjoying where this conversation was headed. Come back around if y'have a change of heart.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("OHB_COOK_POISON","GLOBAL",3)
~ THEN BEGIN 46
  SAY #90642 /* ~Stop watching the stew! It'll be ready soon enough.~ */
  IF ~~ THEN EXTERN ~OHBCOGUA~ 9
END

IF ~~ THEN BEGIN 47
  SAY #90644 /* ~Ye didn't put anything in there, did ye? (The cook dips his spoon in the stew, swirls it around, then brings the spoon to his lips...)~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY #90645 /* ~Hmm. That's odd. Tastes a bit like... mushroom.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY #90646 /* ~Come here and taste this! (The cook pushes his spoon towards his bodyguard.)~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut12")
~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY #90668 /* ~Hey. No talking to the help. They've pots to clean, ye know.~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 39
END

IF ~~ THEN BEGIN 51
  SAY #90670 /* ~Quit yammerin' and get back to work. Do y'want to feel me spoon on the back of yer heads again?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52
  SAY #90668 /* ~Hey. No talking to the help. They've pots to clean, ye know.~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 41
END

IF ~~ THEN BEGIN 53
  SAY #90670 /* ~Quit yammerin' and get back to work. Do y'want to feel me spoon on the back of yer heads again?~ */
  IF ~~ THEN EXIT
END