//image_speed = 1;
//path_start(npc3_notsit, 2, path_action_stop, false);

//CHECKPASS
with(obj_music){
	event_user(0);
}
if(alreadyCheckedPass){
	event_inherited();
} else {
	alreadyCheckedPass = true;
	text = [
		"You see a slightly overweight old man. He looks at you. \"Why wasn\'t I given priority when entering this bus? It\'s so cold outside, and still an elder such as myself was made to wait before that woman and the ghastly man with that awful smell! Anyway, here\'s the bloody pass, get on with it.\"",
		["Check his pass."],
		"Everything seems to be in order... Wait. You notice something slightly off. You peel off a layer in the pass, revealing a woman\'s photo, and the name \"Martha Davies\".",
		"Everything seems to be in order. Old people are usually given a pass to nearby food distribution centers in Winter, mostly so they don\'t die out in the cold.",
		["Show him the true pass. \"Sir, what\'s this?\""],
		"His face suddenly grows a lot more serious. \"Oh.\" He stammers for a second or two before recollecting himself. \"Well... They stopped giving out these passes a while ago. I didn\'t have one, and my wife couldn\'t get food for the both of us by herself. Last time we went out in this cold, she... she didn\'t make it. I\'m very sorry for this, but please... please, don\'t kick me out.\"",
		[
			"\"Very well. You may stay. No reason to let you out in this cold.\"",
			"\"I\'m sorry. I can\'t allow anyone without a pass. You should be arrested for this forgery. You\'re out at the next stop.\""
		],
		"\"Thank you... Thank you very much, sir. I\'m sorry about this mess.\" You hand him the pass and leave him alone.",
		"\"No... no, please!\" He breaks down and starts to cry. \"Please don\'t do this...\" You leave. The law is the law.",
		[
			"\"Market Square?\"",
			"\"Well, this pass seems valid. I\'ll let you in.\""
		],
		"\"Yes, it\'s the nearest food center here. I\'m glad the government is still finding a way to keep the eldest fed, even with the war going on.",
		"\"Alright, thank you.\" You hand him back the pass and go away. "
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],obj_player,[-1],[[skillBranch, id, 1, 1, 3, 2, 3]]),
		createDialogMap(2,text[2],obj_player,4,-1),
		createDialogMap(3,text[3],obj_player,9,-1),
		createDialogMap(4,text[4],obj_player,[5],[-1]),
		createDialogMap(5,text[5],id,6,-1),
		createDialogMap(6,text[6],obj_player,[7,8],[-1,-1]),
		createDialogMap(7,text[7],id,-1,-1),
		createDialogMap(8,text[8],id,-1,-1),
		createDialogMap(9,text[9],obj_player,[10,11],[-1,-1]),
		createDialogMap(10,text[10],id,9,-1),
		createDialogMap(11,text[11],id,-1,-1),
	];
}
