//image_speed = 1;
//path_start(npc4_fwd, 2, path_action_stop, false);

//CHECKPASS
with(obj_music){
	event_user(0);
}
if(alreadyCheckedPass){
	event_inherited();
} else {
	canInteract = true;
	alreadyCheckedPass = true;
	text = [
		"An incredibly large man stands in front of you. He hands you his pass without a word.",
		["Check his pass."],
		"You notice the reason for travel. \"Work\"? Wasn\'t it \"work-related\"?",
		"Everything seems to check out.",
		["\"Did something happen with this pass?\""],
		"\"Why do you ask? It\'s a standard pass, everything is cleared out.\"",
		["\"The reason for travel is wrong.\""],
		"\"Look, maybe the printer made a mistake. Are you going to let me stay or not? I went to the local station and got it, there\'s nothing wrong here.\"",
		[
			"\"Sure, I\'ll believe you this once.\"",
			"\"You\'re getting out at the next stop. I can\'t trust this.\""
		],
		["\"Alright, the pass is valid. You may come in.\""]
	];

	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1],[[skillBranch, id, 1, 1, 2, 2, 3]]),
		createDialogMap(2,text[2],id,4,-1),
		createDialogMap(3,text[3],id,9,-1),
		createDialogMap(4,text[4],id,[5],[-1]),
		createDialogMap(5,text[5],id,6,-1),
		createDialogMap(6,text[6],id,[7],[-1]),
		createDialogMap(7,text[7],id,8,-1),
		createDialogMap(8,text[8],id,[-1,-1],[-1,-1]),
		createDialogMap(9,text[9],id,[-1],[-1]),
	];
}
