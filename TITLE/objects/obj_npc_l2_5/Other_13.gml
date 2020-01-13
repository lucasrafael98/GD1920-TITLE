//CHECKPASS
if(alreadyCheckedPass){
	event_inherited();
} else {
	alreadyCheckedPass = true;
	obj_npc_l2_2.alreadyCheckedPass = true;
	text = [
        "You approach a couple. The man looks angry and impatient, like he\'s just waiting for this train ride to be over so he can leave the country. The woman keeps looking around at everything but the man\'s direction, clearly concerned.",
        ["\"Hello, lady and gentleman. Would you care to provide your passport?\""],
        "Local passport? How\'d they get in here?",
        ["\"This is a local passport.\"", "I\'m sure that\'s alright somehow.  Let\'s move on to his wife."],
        "He looks at you like he wants to tear out your guts. \"Look, Mr. ... conductor. My wife here is not a local. We\'re just going back home. Away from this soul-draining war. Leave us alone.\" If his wife truly is a foreigner, she has every right to be on this train. We\'ll see about that then.",
        "Nothing really seems to stand out here. You doubt any of these people have an invalid passport to get this far. You just move on to his wife.",
        "Foreign passport. She has every right to be on this train - as well as her husband.",
        ["\"How long have you been married?\"", "\"This man could be your father.\"", "There\'s no reason to keep bothering them any more. \"Thank you.\""],
        "She opens her mouth as if about to speak, but her husband quickly interjects. His wife is startled by his reaction. \"Almost a year.\" Fellow\'s economic with words. Mrs. Phillips quickly returns to avoiding any stares.",
        "She barely lets out a sound before she\'s quickly interrupted. \"Are you serious, mate?! The people on this fucking country have always been like this. Go worry about your damn life and don\'t bother us!\" You get some strange looks.",
        "Nothing stands out in this passport. You can\'t think of anything to ask here."
        ];

	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[-1],[[skillBranch, id, 1, 1, dc_ch, 2, 5]]),
            createDialogMap(2,text[2],id,3,-1),
            createDialogMap(3,text[3],id,[4,-1],[-1, [skillBranch21, id, 3, 1, obj_npc_l2_2.dc_ch, 6, 10]]),
            createDialogMap(4,text[4],id,3,-1),
            createDialogMap(5,text[5],id,-1,[skillBranch_alt, id, 5, 1, obj_npc_l2_2.dc_ch, 6, 10]),
            createDialogMap(6,text[6],id,7,-1),
            createDialogMap(7,text[7],id,[8,9,-1],[-1,-1,-1]),
            createDialogMap(8,text[8],id,7,-1),
            createDialogMap(9,text[9],id,7,[player_increase_suspicion]),
            createDialogMap(10,text[10],id,-1,-1)
            ];
}