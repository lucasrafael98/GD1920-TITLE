//image_speed = 1;
//path_start(npc1_exit, 2, path_action_stop, false);
//GLANCE
if(alreadyGlanced){
	event_inherited();
} else {
	alreadyGlanced = true;
	obj_npc_l2_5.alreadyGlanced = true;
	canInteract = true;
	text = [
        "Something feels off with the Phillips couple. But what?",
        ["Focus on Joseph.","Focus on Kristen."],
        "He looks pretty annoyed at something, but that\'s likely to be impatience and fear of being kicked out at the border. There\'s nothing wrong here.",
        ["Leave the couple alone."],
        "You can\'t really see anything of note in Joseph. You could try again...",
        ["Give it another go.", "Best not to."],
        "\"You got something you want to say? Or are you just staring like a dumbass?\" Joseph stares at you, and other people notice.",
        "You don\'t seem to notice anything... wait. What\'s that on her wrists, almost under her sleeves? Looks like a bruise. What the hell?",
        ["\"Miss, are you... are you alright?\"","Best not to interfere."],
        "Her reaction seems almost blissful, as if finally, finally someone noticed. \"Please...\" She quickly gets interrupted by her husband, who stands up and gets between you and his wife. \"What is it with you? Can\'t you leave my wife alone?\" People start to take notice.",
        ["\"Is your wife mute? Can\'t she speak?\"","\"Sorry, I thought I saw something.\" Leave them alone."],
        "\"I don\'t have to let her speak to the likes of you! This country\'s always full of assholes who can\'t leave us alone. I\'m glad we\'re leaving.\" His wife keeps looking at you in despair, and people keep staring at this mess.",
        ["\"Look, clearly your wife needs some help. Why don\'t I take her to the infirmary?\"","\"Shit, sorry. I\'ll leave you guys alone.\""],
        "You can barely react before you see his fist coming your way. Fuck, right in the nose. You feel blood rushing down it, and adrenaline rushing up your brain. Are you man enough?",
        ["There\'s been too much violence already.","Yes I am!"],
        "Poor choice. It\'s round two for him, and he gets your left temple. The other passengers stand up to restrain him. It hurts. You hear an incessant ringing in your ears. Eavesdropping just got a bit harder.",
        "Great uppercut, straight to the chin. Sadly, both of you are quickly restrained by the other passengers.",
        "Kristen stands up and goes to her husband, kicking him in the crotch and clawing his face until some restrains her too. \"Finally! This asshole made me marry him just to get on this train. Thank you, officer. Please restrain him.\"",
        "You and the other passengers bring him to another carriage to lock him there. He\'ll go back to the capital when we get to the border crossing. You thank the other people. This got messy, though.",
        "You think of asking Kristen if there\'s anything more she can tell you about her lovely husband. Should you?",
        ["Yes.","No."],
        "You approach her. \"Was there any reason he did all of this?\" She looks at you, and replies \"I don\'t know. He kept calling some people, saying he was gonna meet them in Westburgh and... \'trade\'. He had a gun, but he couldn\'t get it through security. He said he\'d kill me if I sought help though... Thank you. I\'m glad I\'m getting off this country.\"",
        "You can\'t see anything out of the ordinary, but you can give it another go.",
        ["Give it another go.","Best not to."],
        "\"You got something you want to say? Or are you just staring like a dumbass?\" Joseph stares at you, and other people notice."
        ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 3, obj_npc_l2_5.dc_gl, 2, 4], [skillBranch, id, 1, 3, dc_gl, 7, 22]]),
            createDialogMap(2,text[2],id,3,-1),
            createDialogMap(3,text[3],id,[-1],[-1]),
            createDialogMap(4,text[4],id,5,-1),
            createDialogMap(5,text[5],id,[-1,-1],[[skillBranch, id, 5, 3, obj_npc_l2_5.dc_gl-1, 2, 6],-1]),
            createDialogMap(6,text[6],id,-1,[[player_increase_suspicion]]),
            createDialogMap(7,text[7],id,8,-1),
            createDialogMap(8,text[8],id,[9,-1],[-1,-1]),
            createDialogMap(9,text[9],id,10,[player_increase_suspicion]),
            createDialogMap(10,text[10],id,[11,-1],[-1,-1]),
            createDialogMap(11,text[11],id,12,[player_increase_suspicion]),
            createDialogMap(12,text[12],id,[13,-1],[-1,-1]),
            createDialogMap(13,text[13],id,14,-1),
            createDialogMap(14,text[14],id,[15,16],[-1,-1]),
            createDialogMap(15,text[15],id,17,[change_variable, obj_player, s_eavesdropping, s_eavesdropping-1]),
            createDialogMap(16,text[16],id,17,-1),
            createDialogMap(17,text[17],id,18,-1),
            createDialogMap(18,text[18],id,19,[player_increase_suspicion_var, 3]),
            createDialogMap(19,text[19],id,20,[checkl2npc2arrest]),
            createDialogMap(20,text[20],id,[21,-1],[-1,-1]),
            createDialogMap(21,text[21],id,-1,-1),
            createDialogMap(22,text[22],id,23,-1),
            createDialogMap(23,text[23],id,[-1,-1],[[skillBranch, id, 23, 3, dc_gl-1, 7, 24],-1]),
            createDialogMap(24,text[24],id,1,-1)
            ];
}