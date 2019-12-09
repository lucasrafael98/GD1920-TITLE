//image_speed = 1;
//path_start(npc1_exit, 2, path_action_stop, false);
//GLANCE
if(alreadyGlanced){
	event_inherited();
} else {
	alreadyGlanced = true;
	canInteract = true;
	text = [
	    "Mr. Sutter seems to be checking something in his hands with a gleeful smile.",
		[
			"Maybe I should check it out.",
			"Screw that, I don\'t want to go near that smell."
		],
		"It\'s very easy to see what he\'s doing. He\'s just counting the money he got from begging in this bus. He\'s got... a lot of it. Damn.",
		"You really screwed this investigation up. Everyone\'s looking at you and you can\'t even approach him.",
		[
			"\"Fucking hell, did you get all of that now?\"",
			"Impressive. I guess I\'ll leave him alone.",
		],
		"\"It\'s  me bloody money! You have no business with it. Leave me alone.\"The other passangers look at the both of you."
	];
	speakers = [id,id];
	next_line = [-1];
	scripts = [-1];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1], [[skillBranch, id, 1, 4, dc_gl, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,-1),
		createDialogMap(3,text[3],id,-1,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,-1,[player_increase_suspicion_end, id]),
	];
}