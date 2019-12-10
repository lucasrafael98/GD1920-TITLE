//GLANCE
with(obj_music){
	event_user(0);
}
if(alreadyGlanced){
	event_inherited();
} else {
	canInteract = true;
	alreadyGlanced = true;
	text = [
	    "The elderly Mr. Davies seems to reading the newspaper. You wonder if hes reading anything of interest.",
		[
			"Try to glance at it.",
			"Leave the man alone."
		],
		"You take a quick look and focus. After a few seconds, the image in your mind\'s eye becomes unblurred, and you view... just average news about the war.",
		"You take a quick look, but the image you\'re seeing through your mind\'s eye never coalesces into anything you can understand. You can give it another try, though.",
		[
			"\"The war? Right mess...\"",
			"Leave the man alone."
		],
		"\"What? The war is our only chance at independence, young man! Do you think that we should just bow down to those damn invaders? This generation is lost. Get out of here!\"",
		[
			"Try again.",
			"One try was enough."
		],
		"He notices you.\"Leave me alone! I still remember the days we had some privacy...\" The other passengers notice you."
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 3, 2, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,[npc3_checkgl]),
		createDialogMap(3,text[3],id,6,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,-1,-1),
		createDialogMap(6,text[6],id,[-1,-1],[[skillBranch, id, 6, 3, 2-1, 2, 7],-1]),
		createDialogMap(7,text[7],id,-1,[player_increase_suspicion_end, id]),
	];
}