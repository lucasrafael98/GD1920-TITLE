with(obj_music){
	event_user(0);
}
if(alreadyReadLips){
	event_inherited();
} else {
	canInteract = true;
	alreadyReadLips = false;
	text = [
		"The incredibly fat man seems to be taking a phone call, a serious one from the look on his face. He seems to be whispering, so you\'d need to get way too close to hear him.",
		[
			"Read his lips.",
			"Leave him alone."
		],
		"You\'re a rookie, but you\'ve got some practice. You can pick up on some things.\n\"I\'m dagl I joined uyo\"",
		"You\'re a rookie, but you\'ve got some practice. You can pick up on some things.\n\"mi dagl I njeodi uyo\"",
		"You\'re not really trained in this. You can barely understand:\n\"uyo njeodi dagl I mi\"",
		[
			"\"What seems to be the problem?\"",
			"I should probably just ignore this."
		],
		"You startle him. His hands are shaking. \"H-hey! Nothing\'s wrong here. Did anyone ask you anything, man? Get off my back.\" The other passengers exchange looks. Why would a conductor be intruding on people\'s calls?"
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch_RL, id, 1, 4, 1, 2, 3, 4],-1]),
		createDialogMap(2,text[2],id,5,-1),
		createDialogMap(3,text[3],id,5,-1),
		createDialogMap(4,text[4],id,5,-1),
		createDialogMap(5,text[5],id,[6,-1],[-1,-1]),
		createDialogMap(6,text[6],id,-1,[player_increase_suspicion_end,id]),
	];
}