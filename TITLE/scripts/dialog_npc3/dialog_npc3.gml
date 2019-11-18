#macro DIALOG_NPC3_0 0
dialog_add_string(DIALOG_NPC3_0, "An old woman approaches. She looks extremely angry. \"Why was I waiting out here in the bloody cold behind that woman and the trashman? Your bloody generation "+
								" has no respect for the elderly!\" she shouts. Her voice is weak, but the extremely high pitch manages to give you a small headache nonetheless.");

dialog_add_branch(DIALOG_NPC3_0, 0, dialog_npc3_11, "Lady, give me the damn pass and shut up.");
dialog_add_branch(DIALOG_NPC3_0, 1, dialog_npc3_12, "Sorry about that, I\'m new here. Could I have your pass please?");


#macro DIALOG_NPC3_11 11
dialog_add_string(DIALOG_NPC3_11, "She looks at you, eyes wide open and mouth agape, and gets closer. \"Why you impertinent… I won\'t tolerate this! If I didn\'t have to catch this bus I\'d be out of"+
								  " here.\" She hands you the pass while you silently wipe drops of elderly spittle off your face.");

dialog_add_branch(DIALOG_NPC3_11, 0, npc3_continue, "[check her pass]");


#macro DIALOG_NPC3_12 12
dialog_add_string(DIALOG_NPC3_12, "She sighs, still feeling like she\'s entitled to anything. Not the wisest choice, apologizing. \"Well, you better remember me! I take this bus every day and I don\'t"+
								  " want to see this happening ever again!\" The headache gets worse, and you can hear ringing. She hands you the pass.");

dialog_add_branch(DIALOG_NPC3_12, 0, npc3_continue, "[check her pass]");


#macro DIALOG_NPC3_2 2
dialog_add_string(DIALOG_NPC3_2, "Thankfully, her pass is impeccably clean. Everything checks out, the reason only stating \"the following person is extremely old and currently leaving alone, and "+
								 " requires the use of transport in order to obtain her daily allowance of food\".");
								 
dialog_add_branch(DIALOG_NPC3_2, 0,DO_NOTHING, "Alright, this checks out. Please be a bit more… comprehensive next time.");

#macro DIALOG_NPC3_22 22
dialog_add_string(DIALOG_NPC3_22, "Thankfully, her pass is impeccably clean. Everything checks out, the reason only stating \"the following person is extremely old and currently leaving alone, and "+
								 " requires the use of transport in order to obtain her daily allowance of food\".");
								 
#macro DIALOG_NPC3_23 23
dialog_add_string(DIALOG_NPC3_23, "You notice something sticking out in this piece of paper. You peel a layer off, revealing a different photo.");
dialog_add_branch(DIALOG_NPC3_23, 0, npc3_forgery, "This is a poor forgery. I should have you arrested for this.");

#macro DIALOG_NPC3_FORGERY 3
dialog_add_string(DIALOG_NPC3_FORGERY, "Her confidence and audacity seems to disappear in an instant. \"Well… I live alone anyway. This used to belong to a friend, but she… she passed away a few weeks back"+
									   ", the poor woman. I wasn\'t granted a pass and I can\'t walk the distance in this cold. Please, let me in. I need that bit of food or I\'ll be joining my friend.\"");
									   
dialog_add_branch(DIALOG_NPC3_FORGERY, 0, dialog_npc3_forgery_1, "I didn\'t let the man before you, and I won\'t let you in. I\'d be risking my neck out here too, lady. I can\'t do it.");
dialog_add_branch(DIALOG_NPC3_FORGERY, 1, dialog_npc3_forgery_2, "...Fine, get in. But I\'ll have no more complaining from you, lady.");

#macro DIALOG_NPC3_FORGERY_1 31
dialog_add_string(DIALOG_NPC3_FORGERY_1, "Defeated, she walks away without a word. You can hear quiet sniffing.");
									   
#macro DIALOG_NPC3_FORGERY_2 32
dialog_add_string(DIALOG_NPC3_FORGERY_2, "\"Thank you, thank you so much.\" She almost seems to bow before you, and gets inside the bus.");