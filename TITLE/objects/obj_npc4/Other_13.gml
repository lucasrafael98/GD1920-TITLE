//image_speed = 1;
//path_start(npc4_notsit, 2, path_action_stop, false);

if(alreadyCheckedPass){
	event_inherited();
} else {
	canInteract = true;
	alreadyCheckedPass = false;
	text = [
		"A larger young man stands in front of you, seemingly angry at the world. \"Damn entitled old people. That geezer just got in front of me without a word!\" He sighs. \"Anyway, let\'s get this over with already.\" he hands you his pass.",
		"Everything in order. The letter mentioned a fat man, so you should pay attention to this one. He\'s a student at the Institute of Technical Mastery, and he\'s been granted permission to get on this bus.",
		"Everything is in order. Nothing seems to stand out here.",
		[
			"\"Why didn\'t you tell him to bugger off and not get in your way like that?\"",
			"\"Education? What are you studying?\"",
			"\"Alright, you\'re cleared.\""
		],
		"\"And make a scene with her? You saw how she spoke, even to you. I would have gained nothing by attempting to take my rightful place in the queue.\"",
		"\"Computer Engineering. I suppose typing till my hands fall off for some barely working government mess does beat having to go to the Western front as a more hardware oriented engineer. Hardware is those metal things with circuitry, mind you.\"",
		[
			"\"Alright, you\'re cleared.\""
		]
	];
	dialogue = [
		createDialogMap(0,text[0],id,-1,[skillcheck, id, 0, 1, 2, 1, 2]),
		createDialogMap(1,text[1],id,3,-1),
		createDialogMap(2,text[2],id,6,-1),
		createDialogMap(3,text[3],id,[4,5,-1],[-1,-1,-1]),
		createDialogMap(4,text[4],id,3,-1),
		createDialogMap(5,text[5],id,3,-1),
		createDialogMap(6,text[6],id,[-1],[-1])
	];
}