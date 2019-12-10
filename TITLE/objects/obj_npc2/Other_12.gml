//image_speed = 1;
//path_start(npc2_fwd, 2, path_action_stop, false);
//EAVESDROP
if(alreadyEavesdropped){
	event_inherited();
} else {
	alreadyEavesdropped = true;
	canInteract = true;
	text = [
	    "You hear Bryan talking to Miss Kursztova. They\'re not being loud, but she seems to be disturbed. Maybe you should listen to what they have to say?",
		[
			"Try to eavesdrop on their conversation.",
			"Don\'t disturb them."
		],
		"It\'s  a bit of a hectic conversation, even if they\'re trying to keep their voices down. You get to hear a few words.\n\"Any money... ask someone else... leave me alone... please\"",
		"They seem to be speaking too quietly for you to hear. You could get closer, but it's probably too risky.",
		[
			"\"Is everything okay here?\"",
			"I\'m sure Everything is fine."
		],
		"\"No, it isn\'t. This... man, he won\'t leave me alone. Who even let him in?\" The woman feels a bit stressed.",
		"\"Look sir, ah\'m only troyn\'a get by in this life. She\'s wel\' dressed i\'n\'t she? Ah\'m sur\' she can spare some money for food.\"",
		[
			"\"Mr. Sutter, please leave this woman alone. I won\'t ask a second time.\"",
			"\"Miss, just give the man some change.\""
		],
		"\"Alrigh\' alrigh\'. Ah\'ll... si\'down.\" He goes away, mumbling angrily.",
		"\"Thank you, sir. He just... wouldn\'t leave me alone...\"",
		"\"But I... I\'ve already told him, I have nothing.\" she opens her wallet, revealing... nothing. She\'s pretty much out of money, same as everyone. \"Please, both of you, leave me alone!\"",
		"She\'s on the verge of crying. Everyone is looking at you, wondering why you\'re letting the man beg in the bus like this.",
		"Miss Kursztova is more wary of you as well. You\'ll have to take extra care when talking to her.",
		"\"Ah, \'ell. Tha\' was a waste o\' time.\" He stays in the same place, not uttering another word."
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 2, dc_ed, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,-1),
		createDialogMap(3,text[3],id,-1,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,6,-1),
		createDialogMap(6,text[6],id,7,-1),
		createDialogMap(7,text[7],id,[8,10],[-1,-1]),
		createDialogMap(8,text[8],id,9,-1),
		createDialogMap(9,text[9],id,-1,[NPC2Leaves]),
		createDialogMap(10,text[10],id,11,-1),
		createDialogMap(11,text[11],id,12,[player_increase_suspicion]),
		createDialogMap(12,text[12],id,13,[npc1_personal]),
		createDialogMap(13,text[13],id,-1,[NPC1Leaves])
	];
}