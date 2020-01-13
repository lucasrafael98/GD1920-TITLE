//image_speed = 1;
//path_start(npc1_exit, 2, path_action_stop, false);
//GLANCE
if(alreadyGlanced){
	event_inherited();
} else {
	alreadyGlanced = true;
	canInteract = true;
	text = [
        "Mr. Sutherland brought out a laptop. He seems to be very engaged in whatever he\'s doing.",
        ["Take a glance at his laptop.","Leave the man alone."],
        "You see a pretty strange computer game. It\'s being played from a person\'s eyes, and you can see bars with \"Hunger\" and \"Exhaustion\" mostly in the red. He seems to be cutting up a bull in parts. It\'s very... brown and dull-looking.",
        ["\"Seems like a fun game.\"","Leave him alone with his game."],
        "He\'s a bit startled and notices you. He doesn\'t seem to question why you\'re looking at him, but he seems interested in talking about the game. \"This isn\'t a... ‘fun\' game. Honestly... do you think games can be art?\"",
        ["\"Video games are for children.\"","\"Hmm... maybe. What makes you think that?\""],
        "\"I see there\'s no reasoning with you.\" He gets back to his game.",
        "\"Well... it seems to explore the human condition in a way that hasn\'t been done before in your average cinematic shooter. You see, I\'m currently about to die of starvation and exhaustion, but hopefully this bull will gift me with some food so I can survive for another three minutes. I hate this game... but I also love it. It\'s hard to explain.\"",
        ["\"Uh... okay.\" Let him play the game.","\"You sound like a pretentious asshole.\""],
        "\"Look here... You just don\'t get it! Get out of here.\" You get some weird looks.",
        "You can\'t make out anything on his laptop except for smears of brown (...not that shade of brown). He hasn\'t noticed you yet, though.",
        ["Try again.","Leave the man alone."],
        "He notices you, and looks slightly annoyed. \"Young man, I believe you already checked my pass.\" The other passengers notice you."
        ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 3, dc_gl, 2, 10],-1]),
            createDialogMap(2,text[2],id,3,-1),
            createDialogMap(3,text[3],id,[4,-1],[-1,-1]),
            createDialogMap(4,text[4],id,5,-1),
            createDialogMap(5,text[5],id,[6,7],[-1,-1]),
            createDialogMap(6,text[6],id,-1,-1),
            createDialogMap(7,text[7],id,8,-1),
            createDialogMap(8,text[8],id,[-1,9],[-1,-1]),
            createDialogMap(9,text[9],id,-1,[player_increase_suspicion_end, id]),
            createDialogMap(10,text[10],id,11,-1),
            createDialogMap(11,text[11],id,[-1,-1],[[skillBranch, id, 11, 3, dc_gl-1, 2, 12],-1]),
            createDialogMap(12,text[12],id,-1,[player_increase_suspicion_end, id])
            ];
}