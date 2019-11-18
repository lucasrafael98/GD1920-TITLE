#macro DIALOG_NPC2_1 1
dialog_add_string(DIALOG_NPC2_1, "A man with ragged clothes and unkempt hair approaches you. You resist gagging when this awful smell of garbage shoots through your nostrils. He hands you"+
							     " a stained pass with a hand that seems to lack any sort of fat.");

dialog_add_branch(DIALOG_NPC2_1, 0, check_npc2, "[check his pass]");
dialog_add_branch(DIALOG_NPC2_1, 1, refuse_npc2, "Please get the hell out of here.");


#macro DIALOG_NPC2_2 2
dialog_add_string(DIALOG_NPC2_2, "Thankfully you have gloves, because you can\'t tell where these stains came from. You can\'t even make out the name, not that it matters since the reason for travel"+
								 " is \"i ned to\". You\'re a bit of an amateur conductor, but even you know that\'s bullshit.");
								 
dialog_add_branch(DIALOG_NPC2_2, 0, refuse_npc2, "You… \"ned\" to?");
dialog_add_branch(DIALOG_NPC2_2, 1, refuse_npc2, "Alright, please get an actual pass next time. Out.");


#macro DIALOG_NPC2_REFUSAL 3
dialog_add_string(DIALOG_NPC2_REFUSAL, "\"Please sir, I need some money. The bus is the only place where there\'s people all the time. I can\'t get a job anywhere…\" the smell is just too much when he starts"+
										" talking. You\'re barely holding it in.");
										
dialog_add_branch(DIALOG_NPC2_REFUSAL, 0, refuse_npc2_2, "Look, I can\'t get you in like this. Get cleaner and we\'ll talk. Sorry.");
dialog_add_branch(DIALOG_NPC2_REFUSAL, 1, refuse_npc2_2, "Get the hell out of here, right now.");

#macro DIALOG_NPC2_REFUSAL_2 4
dialog_add_string(DIALOG_NPC2_REFUSAL_2, "\"Alright, alright.\" He leaves with no fuss. You feel a smidge of pity, overshadowed by the relief that is being able to breathe without holding everything in.");