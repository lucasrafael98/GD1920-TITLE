//GLANCE
if(alreadyGlanced){
	event_inherited();
} else {
	canInteract = true;
	alreadyGlanced = false;
	text = [
		"The young student seems to be enraptured by what he sees on the computer screen. You wonder if it\'s worth taking a look.",
		[
			"Do it.",
			"Don\'t"
		],
		"You only looked at the computer for a split second. This is probably not enough for most people, but you just have to focus. Your mind\'s eye opens, revealing a blurred image of a... strange drawing. This man seems to be viewing music videos with drawings of barely clothed women.",
		"You can\'t focus with all the noise. The image on your mind never seems to stop shifting and coalesce into something you can understand.",
		[
			"\"What the hell is that!?\"",
			"Back away slowly."
		],
		"He almost jumps off his seat. \"WHAT THE- Why the fuck are you looking at my computer, dude!? Go away! You can\'t even have some goddamn privacy without some weirdo looking at you these days. Fucking government spies or something stalking us all the time. I bet you\'re one of them!\" The other passengers look at both of you. [suspicion increases]",
		[
			"Try again.",
			"It\'s probably nothing interesting."
		]
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 3, 2, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,-1),
		createDialogMap(3,text[3],id,6,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,-1,[player_increase_suspicion_end, id]),
		createDialogMap(6,text[6],id,[-1,-1],[[skillBranch, id, 6, 3, 2, 2, 5],-1])
	];
}