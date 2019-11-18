#macro DIALOG_NPC3_0 0
dialog_add_string(DIALOG_NPC3_0, "An old woman approaches. She looks extremely angry. \"Why was I waiting out here in the bloody cold behind that woman and the trashman? Your bloody generation "+
								" has no respect for the elderly!\" she shouts. Her voice is weak, but the extremely high pitch manages to give you a small headache nonetheless.");

dialog_add_branch(DIALOG_NPC3_0, 0, dialog_npc3_11, "Lady, give me the damn pass and shut up.");
dialog_add_branch(DIALOG_NPC3_0, 1, dialog_npc3_12, "Sorry about that, I\'m new here. Could I have your pass please?");


#macro DIALOG_NPC3_11 11
dialog_add_string(DIALOG_NPC3_11, "She looks at you, eyes wide open and mouth agape, and gets closer. \"Why you impertinent… I won\'t tolerate this! If I didn\'t have to catch this bus I\'d be out of"+
								  " here.\" She hands you the pass while you silently wipe drops of elderly spittle off your face.");

dialog_add_branch(DIALOG_NPC3_11, 0, npc3_continue, "[check her pass]");


#macro DIALOG_NPC3_12 22
dialog_add_string(DIALOG_NPC3_12, "She sighs, still feeling like she\'s entitled to anything. Not the wisest choice, apologizing. \"Well, you better remember me! I take this bus every day and I don\'t"+
								  " want to see this happening ever again!\" The headache gets worse, and you can hear ringing. She hands you the pass.");

dialog_add_branch(DIALOG_NPC3_12, 0, npc3_continue, "[check her pass]");


#macro DIALOG_NPC3_2 2
dialog_add_string(DIALOG_NPC3_2, "Thankfully, her pass is impeccably clean. Everything checks out, the reason only stating \"the following person is extremely old and currently leaving alone, and "+
								 " requires the use of transport in order to obtain her daily allowance of food\".");
								 
dialog_add_branch(DIALOG_NPC3_2, 0,DO_NOTHING, "Alright, this checks out. Please be a bit more… comprehensive next time.");
