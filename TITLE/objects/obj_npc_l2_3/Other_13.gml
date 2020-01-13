//CHECKPASS
if(alreadyCheckedPass){
	event_inherited();
} else {
	alreadyCheckedPass = true;
	text = [
        "You see a blonde man with a very dense beard in front of you. He looks completely focused on something else, as if this \"real\" world is not important to him.",
        [
			"\"Sir, could I please have your pass?\""
		],
        "Kursztov? Might this man be related to that realtor in your first conductor assignment?",
        [
			"\"Would you happen by any chance to know a Katerina Kurstova, sir?\"",
			"\"You are a citizen of Westburgh?\"",
			"\"Alright, your passport is quite valid.\""
		],
        "He suddenly gets a lot more focused in this reality. He gets out of his thousand-yard stare to look at you in rage and pain, saying only: \"Do not ask me about her.\"",
        "\"Yes I am. Not this Burnham shithole where people\'s souls come to die.\"",
        "Citizens of Westburgh are allowed on this train. Apart from that, you don\'t notice anything of note."
    ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[-1],[[skillBranch, id, 1, 1, dc_ch, 2, 6]]),
            createDialogMap(2,text[2],id,3,-1),
            createDialogMap(3,text[3],id,[4,5,-1],[-1,-1,-1]),
            createDialogMap(4,text[4],id,3,-1),
            createDialogMap(5,text[5],id,3,-1),
            createDialogMap(6,text[6],id,-1,-1)
    ];
}