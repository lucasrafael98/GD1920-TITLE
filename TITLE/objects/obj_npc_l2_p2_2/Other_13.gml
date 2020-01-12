//CHECKPASS
if(alreadyCheckedPass){
	event_inherited();
} else {
	alreadyCheckedPass = true;
	text = [
		"A thin woman with black hair stands in front of you. She reeks of cigarettes, but doesn\'t look repulsive otherwise. She hands you the pass without a word.", 
	
		[
			"\"What do you do for work?\"",
			"\"Why are you only allowed on these stops? Don't you have houses to visit.\"",
			"\"Alright, everything checks out.\""
		],
		"\"Real estate\", she replies with little fanfare. Not the hottest area right now, which explains her gaunt figure.",
		"\"I only need to go to work and get back home, same as everybody. With the war going on, there aren't many houses for sale.\"",
		"The woman nods and takes back her pass."
	];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],obj_player,[2,3,4],[-1,-1,-1]),
		createDialogMap(2,text[2],id,1,-1),
		createDialogMap(3,text[3],id,1,-1),
		createDialogMap(4,text[4],id,-1,-1)
	];
}