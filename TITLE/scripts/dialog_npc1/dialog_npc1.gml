#macro DIALOG_NPC1_1 1
dialog_add_string(DIALOG_NPC1_1, "A thin woman with black hair approaches you. She reeks of cigarettes, but doesn\'t look repulsive otherwise. She hands you the pass without a word.");

dialog_add_branch(DIALOG_NPC1_1, 0, DO_NOTHING, "[check her pass]");


#macro DIALOG_NPC1_2 2
dialog_add_string(DIALOG_NPC1_2, "Everything seems to be in order. Right photo, female, around the right height. Travelling to get to work in real estate. Not the hottest area right now,"+
								 " which probably explains her fairly gaunt figure.");
								 
dialog_add_branch(DIALOG_NPC1_2, 0, accept_npc1, "Everything in order. You can come in. ");
dialog_add_branch(DIALOG_NPC1_2, 1, refuse_npc1, "Step out of the bus, ma\'am.");

#macro DIALOG_NPC1_REFUSAL 3
dialog_add_string(DIALOG_NPC1_REFUSAL, "She doesn\'t say a word and leaves. You can faintly hear some… unkind words being muttered as she does. The other passengers wonder why you\'ve just"+
									   " kicked out a passenger for no discernible reason.");