#macro DIALOG_NPC4_0 0
dialog_add_string(DIALOG_NPC4_0, "A larger young man stands in front of you, seemingly angry at the world. \"Damn entitled old people. She just got in front of me without a word!\", he sighs."+
								 " \"Anyway, let\'s get this over with already.\" he hands you his pass.");
								 
								 
#macro DIALOG_NPC4_1 1
dialog_add_string(DIALOG_NPC4_1, "Everything in order. The letter mentioned a fat man, so you should pay attention to this one. He\'s a student at the Institute of Technical Mastery, and he\'s"+
								 " been granted permission to get on this bus.");
dialog_add_branch(DIALOG_NPC4_1, 0,	dialog_npc4_11, "Why didn\'t you tell her to bugger off and not get in your way like that? ");
dialog_add_branch(DIALOG_NPC4_1, 1, dialog_npc4_12, "Student? What are you studying?");
dialog_add_branch(DIALOG_NPC4_1, 2, dialog_npc4_13, "Alright, you can get in.");
dialog_add_branch(DIALOG_NPC4_1, 3, dialog_npc4_14, "You can\'t enter if you\'re too much of a weakling to stand up to an old lady. Out.");

#macro DIALOG_NPC4_11 11
dialog_add_string(DIALOG_NPC4_11, "\"And make a scene with her? You saw how she spoke, even to you. I would have gained nothing by attempting to take my rightful place in the queue.\"");

#macro DIALOG_NPC4_12 12
dialog_add_string(DIALOG_NPC4_12, "\"Computer Engineering. I suppose typing till my hands fall off for some barely working government mess does beat having to go to the Western front as"+
								  " a more hardware oriented engineer. Hardware is those metal things with circuitry, mind you.\"");
								 
#macro DIALOG_NPC4_13 13
dialog_add_string(DIALOG_NPC4_13, "He doesn\'t say a word and gets on the bus.");
								 
#macro DIALOG_NPC4_14 14
dialog_add_string(DIALOG_NPC4_14, "\"What the fuck? Hey, I have every right to be on this…\" he remembers what could happen to his pass if he argues, and silently leaves. The other passengers"+
								  " find your reply quite strange.");