//image_speed = 1;
//path_start(npc4_fwd, 2, path_action_stop, false);
with(obj_music){
	event_user(0);
}
if(alreadyEavesdropped){
	event_inherited();
} else {
	alreadyEavesdropped = true;
	obj_npc3.alreadyEavesdropped = true;
	canInteract = true;
	text = [
		"You overhear Mr. Davies and Daniel talking. Seems like a heated argument, from the look of it. ",
		[
			"Eavesdrop on them.",
			"Don\'t bother."
		],
		"You focus on the conversation, but you can only hear a few words:\n\"Are you doing... my right... entitled... unfair... elderly... society\"",
		"You fail to focus on their conversation.",
		[
			"Hey, what the hell are you talking about?!",
			"Seems pointless to barge into this argument."
		],
		"The student looks at you. \"Hey, this none of your damn business! This geezer can\'t seem to understand that I have the same rights as him, and he won\'t leave me alone. Shit, with everyone sane off this city, you only get us students and this rabble. Something\'s got to change soon...\" ",
		"The old man pleads, \"This man doesn\'t seem to respect that I\'m an elder and I go to this seat every day! Young people are a scourge on our society...\"",
		[
			"Hey man, just let him sit in her usual place.",
			"Mr. Davies, shut up and go somewhere else. The bus is almost empty, I\'m sure you have space."
		],
		"\"This is bullshit! Can\'t even sit wherever I please. This city\'s gone down the drain and someone has to change this.\" ",
		"He leaves, and the old man sits on \"his\" spot, a radiant, victorious smirk on his face.",
		"\"How... rude, and disrespectful!\" He storms off. ",
		"\"Hey, thanks. Good to see not everyone on this city has just gone insane.\""
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 2, 1, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,-1),
		createDialogMap(3,text[3],id,-1,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,6,-1),
		createDialogMap(6,text[6],id,7,-1),
		createDialogMap(7,text[7],id,[8,10],[-1,-1]),
		createDialogMap(8,text[8],id,9,-1),
		createDialogMap(9,text[9],id,-1,[letNPC3Sit]),
		createDialogMap(10,text[10],id,11,-1),
		createDialogMap(11,text[11],id,-1,[letNPC4Sit])
	];
}