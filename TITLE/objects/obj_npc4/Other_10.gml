with(obj_music){
	event_user(0);
}
if(alreadyReadLips){
	event_inherited();
} else {
	canInteract = true;
	alreadyReadLips = false;
	text = [
		"Daniel is currently having a chat with someone on his laptop. He\'s keeping his voice down, so you can\'t really hear him.",
		[
			"Try to read his lips.",
			"Ignore it."
		],
		"You\'re excellent at reading lips. Let\'s hope all that investment was worth it.\n\"I\'ll etme you guys tfera I evale.\"",
		"You\'re good at reading lips, but this is still... really hard.\n\"li\'l etme uyo ysgu tfera I evale.\"",
		"You\'re not good enough to understand this. He is pretty much mumbling here. You\'re gonna have a hard time.\n\"Evale ysgu li\'l uyo I etme tfera.\"",
		[
			"\"What\'s going on here?\"",
			"I\'m not gonna risk it."
		],
		"You startled him. \"Are you spying on me? Fuck, is everyone in with the government now?! Go away!\" The other passengers notice you."
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch_RL, id, 1, 4, 3, 2, 3, 4],-1]),
		createDialogMap(2,text[2],id,5,[npc4_checkrl]),
		createDialogMap(3,text[3],id,5,[npc4_checkrl]),
		createDialogMap(4,text[4],id,5,-1),
		createDialogMap(5,text[5],id,[6,-1],[-1,-1]),
		createDialogMap(6,text[6],id,-1,[player_increase_suspicion_end,id])
	];
}