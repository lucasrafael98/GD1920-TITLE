//image_speed = 1;
//path_start(npc1_enter, 2, path_action_stop, false);

if(alreadyReadLips){
	event_inherited();
} else {
	alreadyReadLips = true;

	canInteract = true;
	text = [
	    "The realtor seems to be... talking to herself? She keeps whispering and whispering. You can barely hear her, but you might be able to read her lips.",
		[
			"Try it.",
			"Don\'t bother."
		],
		"You can faintly hear her, but you understand what she\'s saying pretty well.\n\"You nca keep ingog.\"",
		"You can barely hear her or even understand what she\'s saying, but some words start forming in your head.\n\"uyo nca epek ingog.\"",
		"You can\'t quite understand anything, but you tried.\n\"epek uyo ngiog nca.\"",
		[
			"\"Uh... are you alright?\"",
			"Go away. It\'s probably for the best.",
		],
		"\"What... what are you doing, looking at me?\" She\'s incredibly shaken and uncomfortable. \"Go away!\"",
		"You get some weird looks."
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch_RL, id, 1, 4, 2+personalSuspicion, 2, 3, 4],-1]),
		createDialogMap(2,text[2],id,5,-1),
		createDialogMap(3,text[3],id,5,-1),
		createDialogMap(4,text[4],id,5,-1),
		createDialogMap(5,text[5],id,[6,-1],[-1,-1]),
		createDialogMap(6,text[6],id,7,-1),
		createDialogMap(7,text[7],id,-1,[player_increase_suspicion_end, id]),
	];
	
}