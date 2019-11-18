#macro DIALOG_NPC5_0 0
dialog_add_string(DIALOG_NPC5_0, "No one remains outside. Not a busy day, surprisingly. You\'re just about to close when...");

#macro DIALOG_NPC5_1 1
dialog_add_string(DIALOG_NPC5_1, "\"Hey, wait!\" an incredibly fat man seems to be flailing his arms and legs in your direction. It takes you a second to understand he\'s trying to run to catch the bus on time.");
								 
dialog_add_branch(DIALOG_NPC5_1, 0, dialog_npc5_closedoor, "Close the door and take off.");
dialog_add_branch(DIALOG_NPC5_1, 1, dialog_npc5_opendoor, "Wait.");

#macro DIALOG_NPC5_CLOSEDOOR 2
dialog_add_string(DIALOG_NPC5_CLOSEDOOR, "The engine starts roaring, and the bus begins to move. That was a fat person though… you consider if you didn\'t just screw up with your choice.");


#macro DIALOG_NPC5_OPENDOOR 3
dialog_add_string(DIALOG_NPC5_OPENDOOR, "The man reaches you after a while, and hands you his pass while panting heavily. \"Thank... you...\" His pass is in order. Apparently he only needs"+
										" to get the bus for one stop?");

dialog_add_branch(DIALOG_NPC5_OPENDOOR, 0, dialog_npc5_q, "Why are you taking this bus if it\'s only for one stop? And how did you get a pass for this?");
dialog_add_branch(DIALOG_NPC5_OPENDOOR, 1, dialog_npc5_accept, "Hell man, calm down a bit there. You can get in, there\'s a seat or two for you.");

#macro DIALOG_NPC5_Q 4
dialog_add_string(DIALOG_NPC5_Q, "He starts to look annoyed. \"Well, I\'m... a bit too large.. and I get tired quickly... the pass is legit...  and I won\'t have you... questioning me..."+
								 ". like this. Can I get in or not?\"");
								 
dialog_add_branch(DIALOG_NPC5_Q, 0, dialog_npc5_accept, "Well... everything is order, so yes.");								 

#macro DIALOG_NPC5_ACCEPT 5
dialog_add_string(DIALOG_NPC5_ACCEPT, "\"Oh... thanks...\" He drags himself into the bus.");