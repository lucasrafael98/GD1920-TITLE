/// @description Insert description here
// You can write your code in this editor
letter_text = "\n*SKILLS*\n"
+ "\nEavesdropping: "+ string(obj_player.s_eavesdropping)
+ "\nReadlips: "+ string(obj_player.s_readlips)
+ "\nGlance: "+ string(obj_player.s_glance)
+ "\nCheckpasses: "+ string(obj_player.s_checkpasses);

if(obj_player.a_suspicion < 5)
	letter_text += "\n\n\nSuspicion: Low\nNobody's on to you.";
else if(obj_player.a_suspicion >= 5 && obj_player.a_suspicion < 10)
	letter_text += "\n\n\nSuspicion: Medium\nSome people are starting to catch on. [-1 to all checks]";
else if(obj_player.a_suspicion > 10)
	letter_text += "\n\n\nSuspicion: High\nEverybody's on to you. [-2 to all checks]";
	
//letter_text +="\n\n*CONTROLS*"
//+ "\n PRESS 'Q' to Check Passes"
//+ "\n PRESS 'W' to take a Glance at what the passengers are doing"
//+ "\n PRESS 'E' to Eavesdrop on conversations"
//+ "\n PRESS 'R' to Read the passengers lips"
//+ "\n PRESS 'Z' to fast forward time";