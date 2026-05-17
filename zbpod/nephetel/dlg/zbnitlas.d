BEGIN ZBNITLAS

CHAIN IF ~Global("ZBNEPHQUEST1","GLOBAL",13) IsGabber(Player1)~ THEN ZBNITLAS ZBNITLAS1
@408 /* Gah! Blast, they’re—you’re here. You’ve come here to take it from me! You’ll never take it! It’s MINE */
== ZBNEPH @409 /* I guess that’s him. Let’s be careful, <CHARNAME>. He seems not all there. ahem We’re not here to take anything from you, friend. What is it that you have? */
== ZBNITLAS @410 /* You’re here for the shard, I know you are! They thought it was junk, but I knew it wasn’t. I just have to figure out these glyphs and no one will EVER be able to take from me again. Who are you? WHO ARE YOU? */
DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",14)~
END
  ++ @411 /* I’m <CHARNAME>, and this is a friend of mine. We’re adventurers—we just want to talk. */ EXTERN ZBNITLAS ZBNITLASR1
  ++ @412 /* Just people passing through. We’re not here to take anything from you. */ EXTERN ZBNITLAS ZBNITLASR2
  ++ @413 /* First, you had better tell us who you are and what you’re doing. */ EXTERN ZBNITLAS ZBNITLASR3
  ++ @414 /* That’s not your concern. Just hand over whatever it is you’re holding and there won’t be trouble. */ EXTERN ZBNITLAS ZBNITLASR4

CHAIN ZBNITLAS ZBNITLASR1
@415 /* Talk? I—I… ungh. Niltash: Did you just call us adventurers? Diving into this hellhole hardly feels like an adventure. What I wouldn’t give for a… for a… */
END
  IF ~~ THEN EXTERN ZBNITLAS ZBNITLASREND

CHAIN ZBNITLAS ZBNITLASR2
@416 /*  Not here to take from me? I— Niltash: Why would we be “passing through”, Brevrick? That was never going to work. Next time, let me do the… the… */
END
  IF ~~ THEN EXTERN ZBNITLAS ZBNITLASREND

CHAIN ZBNITLAS ZBNITLASR3
@417 /* Me? I’m… I’m… Niltash: I’m the best burglar this side of the Heartlands! Trust me, if there’s anyone who can get you in there, it’s… it’s… */
END
  IF ~~ THEN EXTERN ZBNITLAS ZBNITLASREND

CHAIN ZBNITLAS ZBNITLASR4
@418 /* No, it’s mine! It’s— Niltash: No matter how many times you ask, Vilo, you’re not touching the shard! It’s here for—for— */
END
  IF ~~ THEN EXTERN ZBNITLAS ZBNITLASREND

CHAIN ZBNITLAS ZBNITLASREND
@419 /* Ngh! Get out of my head. OUT! Get away from me! */
== ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @420 /* Must we engage with the insane on a regular basis? This wretched fool is too far gone already. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @421 /* This man has clearly played with forces beyond him as all fools wont to do. */
== EDWINJ IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @422 /* The simpleton has driven himself mad with whatever power it is he possesses. We ought to remove it from his inept hands before he damages something. */
== JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @423 /* Ahh he reminds me of Uncle Gerhardt. Rambling, thieving, worried about the demon ferrets eating his brain from the inside out. And people think my stories don’t make any sense. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @424 /* There is a vile aura stemming from this man in a most unsettling fashion. Best that we cut it off at the source before it spreads. */
== ZBNEPH @425 /* I don’t think we’ll get any useful information out of him, <CHARNAME>. Whatever caused him to become this way could be useful, though. */
DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",15)~
END
