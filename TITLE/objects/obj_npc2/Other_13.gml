//CHECKPASS
if(alreadyCheckedPass){
	event_inherited();
} else {
	alreadyCheckedPass = true;
text = [
	"You approach a man with ragged clothes and unkempt hair. You resist gagging when a strong smell of garbage shoots through your nostrils. He hands you a very stained paper.", 
	["Check his pass."],
	"Thank fuck you have a pair of gloves. You have no idea where these stains come from, but the smell is giving you a pretty good idea (well, it ain\'t good but... you get it, man).",
	"Everyone seems to be suspicious of you. You can\'t quite focus with so many eyes on you, so you see nothing wrong with this pass. Seems very valid, even though this man isn\'t very pleasing to the... nose.",
	[
		"\"I can\'t quite understand your name, sir.\"",
		"\"What are these stops?\"",
		"\"You... \'ned\' to?\"",
		"\"This pass is an obvious fake. Sir, you\'re going to have to get out at the next stop.\"",
	],
	"\"Broyin Sattah.\" His accent is thick, but you can understand this man is called Bryan Sutter.",
	"\"Wel\', the pass they gave me sed ah could enter this stop and ge\' ou\' the un\' two stops aftah.\"",
	"\"Yee, ah need to get in this \'ere bus ser. Ah\'ve go\' no choice but to get some food from any chari\'abul passahs-by. Please, don\'t make me ge\' out.\"",
	"\"Ser, please. Ah go\' nowher\' to go. Please, le\' me be.\" His breath is nearly too much for you to handle. You have to get out of here quickly.",
	[
		"\"Fine. You may stay.\"",
		"\"I\'m sorry, but you can\'t be here.\"",
	],
	"\"Thank ye, thank ye ser.\" He seems extremely grateful, though you shouldn\'t be letting these people in without a pass. Some people look at you in doubt.",
	"He stares at his feet. \"...\'eartless man y\' ar\'. Alrigh\'. I\'ll... fucken leave.\"",
	["Alright, you may come in."],
	"\"Thank ye, thank ye ser.\" Some people look at you in doubt. You may have screwed up a bit here."
];

dialogue = [
	createDialogMap(0,text[0],id,1,-1),
	createDialogMap(1,text[1],id,[-1],[[skillBranch, id, 1, 1, 1, 2, 3]]),
	createDialogMap(2,text[2],id,4,-1),
	createDialogMap(3,text[3],id,12,-1),
	createDialogMap(4,text[4],id,[5,6,7,8],[-1,-1,-1,-1]),
	createDialogMap(5,text[5],id,4,-1),
	createDialogMap(6,text[6],id,4,-1),
	createDialogMap(7,text[7],id,4,-1),
	createDialogMap(8,text[8],id,9,-1),
	createDialogMap(9,text[9],id,[10,11],[-1,-1]),
	createDialogMap(10,text[10],id,-1,[player_increase_suspicion_end, id]),
	createDialogMap(11,text[11],id,-1,-1),
	createDialogMap(12,text[12],id,[13],[-1]),
	createDialogMap(13,text[13],id,-1,[player_increase_suspicion_end, id])
];
}
