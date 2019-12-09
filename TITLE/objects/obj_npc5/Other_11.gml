with(obj_music){
	event_user(0);
}
if(alreadyGlanced){
	event_inherited();
} else {
	canInteract = true;
	alreadyGlanced = true;
	text = [
		"The incredibly fat man is reading a book. You wonder if it might have anything interesting to the case.",
		[
			"Take a glance.",
			"Don\'t."
		],
		"Here we go. You glance at the cover, and recreate it in your head. Very detailed finish, imported? You can\'t quite read the full title, but it seems like it\'s something about rising up and changing things. Is change truly a bad thing?",
		"The image in your head keeps moving around, not wanting to stay still. You can\'t get anything out of this, but you give it another shot.",
		[
			"Hey, interesting you book you got there.",
			"Best not interrupt."
		],
		"\"Oh, uh... it\'s just a book, man. Why... have you read this one?\"",
		[
			"Yeah, I have.",
			"No, I haven\'t."
		],
		"\"It\'s nice to see a fellow scholar. It\'s refreshing to read about the outside, isn\'t it? People seem to have interesting and different views. Not much of that here.\" Quite candid. Most people don\'t have the balls to say that sort of thing out loud. ",
		"\"Oh, then you won\'t understand. Sorry.\"",
		[
			"Go for it.",
			"Don\'t risk a second failure."
		],
		"\"Hey, what are you doing? I\'m just reading a book. Go away you creep!\""
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 3, 3, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,[npc5_checkgl]),
		createDialogMap(3,text[3],id,9,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,6,-1),
		createDialogMap(6,text[6],id,[7,8],[-1,-1]),
		createDialogMap(7,text[7],id,-1,-1),
		createDialogMap(8,text[8],id,-1,-1),
		createDialogMap(9,text[9],id,[-1,-1],[[skillBranch, id, 1, 3, 3-1, 2, 10],-1]),
		createDialogMap(10,text[10],id,-1,[player_increase_suspicion_end, id])
	];
}