//image_speed = 1;
//path_start(npc1_exit, 2, path_action_stop, false);
//GLANCE
if(alreadyGlanced){
	event_inherited();
} else {
	alreadyGlanced = true;
	canInteract = true;
	text = [
	    "Miss Kursztova appears to be reading a newspaper. Could this have anything to do with your investigation?",
		[
			"Try to glance at it.",
			"She\'s probably not a suspect anyway."
		],
		"You look at it for a split second, but a split second is so much more than enough. The newspaper appears inside your head. It\'s a bit blurry, sure, but you can understand she\'s reading job postings.",
		"Shit, a split second isn\'t nearly enough for this. How do you even do it? The newspaper seems like a grey, blurry mess in your mind, constantly shifting around and breaking apart. You can\'t focus on it, but you can try again. Don\'t screw it up a second time, though.",
		[
			"\"You looking for a job?\"",
			"This is irrelevant."
		],
		"\"I... I guess I am.\" She\'s clearly not in a talking mood. You should leave her alone.",
		[
			"Give it another try.",
			"One try was enough."
		],
		"She\'s a bit startled, and jumps out of her seat slightly. \"What? Hey, why are you looking at my newspaper? Go away!\"",
		"You get some weird looks."
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 3, 2+personalSuspicion, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,-1),
		createDialogMap(3,text[3],id,6,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,-1,-1),
		createDialogMap(6,text[6],id,[-1,-1],[[skillBranch, id, 6, 3, 2-1, 2, 7],-1]),
		createDialogMap(7,text[7],id,8,-1),
		createDialogMap(8,text[8],id,-1,[player_increase_suspicion_end,id]),
	];
}