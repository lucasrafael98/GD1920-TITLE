//CHECKPASS

text = [
	"A thin woman with black hair approaches you. She reeks of cigarettes, but doesn\'t look repulsive otherwise. She hands you the pass without a word.", 
	
	[
		"[check her pass]"
	],
	
	"Everything seems to be in order. Right photo, female, around the right height. Travelling to get to work in real estate. Not the hottest area right now,"+" which probably explains her fairly gaunt figure.",
	
	[
		"Everything in order. You can come in.",
		"Step out of the bus, ma\'am."
	],
	
	"She doesn\'t say a word and leaves. You can faintly hear some... unkind words being muttered as she does. The other passengers wonder why you\'ve just"+" kicked out a passenger for no discernible reason."
];
dialogue = [
	createDialogMap(0,text[0],id,1,-1),
	createDialogMap(1,text[1],obj_player,[2],[-1]),
	createDialogMap(2,text[2],id,3,-1),
	createDialogMap(3,text[3],obj_player,[-1,4],[[accept_npc1],[refuse_npc1]]),
	createDialogMap(4,text[4],id,-1,[stopHighlight, id]),
];
