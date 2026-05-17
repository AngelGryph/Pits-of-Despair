BEGIN ZBMADCK

CHAIN IF ~IsGabber(Player1)~ THEN ZBMADCK ZBMADCKINTRO1
  @372 /* Greetings, shadowdancer. It has been some time, has it not? I received word you were back in Amn—despite your profession, perhaps you are not as inconspicuous as you may think. */
  == ZBNEPHJ @390 /* The pleasure is all yours, I’m sure. I wish I could say I’m surprised you came looking for me so quickly, but I’m not. Speak freely, Mardrick. I don’t have all day. */
  == ZBMADCK @391 /* Mm. Patience is a virtue, shadowdancer, and one that is particularly pertinent to your task. I have yet another lead for you. */
  = @374 /* In the Umar Hills, there is a little village named Imnesvale. There is an innkeep there that has been running his tongue about a rather disturbing visitor who spoke of things pertaining to your task. It would be pertinent for you to investigate. */
  == ZBNEPHJ @392 /* That’s more information than I had before, but not by much. Do you have any *specifics* about this disturbing visitor? */
  == ZBMADCK @393 /* No. */
  == ZBNEPHJ @394 /* Fantastic. Well, I know what to do now. No need to hang around! */
  == ZBMADCK @395 /* As you wish. I expect that I will see you again. */
  DO ~SetGlobal("ZBNEPHQUEST1","GLOBAL",4)~ EXIT
