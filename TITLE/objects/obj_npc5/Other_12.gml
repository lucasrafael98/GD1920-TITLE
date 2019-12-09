//image_speed = 1;
//path_start(npc5_fwd, 2, path_action_stop, false);
//EAVESDROP
if(alreadyEavesdropped){
	event_inherited();
} else {
	canInteract = true;
	alreadyEavesdropped = false;
	text = [
		"Mr. Maciejewski seems to be in a lively phone call. He\'s laughing constantly. You can try to overhear the conversation.",
		[
			"Do it.",
			"Don\'t"
		],
		"Hearing him is no challenge. You can very easily understand what he says.\n\"Can\'t wait... much fun...\"",
		"You can\'t get close enough to hear without someone noticing. You can\'t risk it.",
		[
			"\"You gonna have fun at work?\"",
			"Nothing seems out of the ordinary."
		],
		"\"Uh... yeah. I told you, that was a fucking printer mistake. Leave me alone already!\" His shout alerts the other passengers."
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillcheck, id, 1, 2, 1, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,-1),
		createDialogMap(3,text[3],id,-1,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,-1,[player_increase_suspicion_end, id]),
	];
}