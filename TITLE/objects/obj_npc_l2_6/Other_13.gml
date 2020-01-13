//CHECKPASS
if(alreadyCheckedPass){
	event_inherited();
} else {
	alreadyCheckedPass = true;
	text = [
        "You approach a very well-groomed man in his fifties. You almost seem to recognize him? You\'re getting major deja vu right now, but there\'s something missing here that would otherwise jog your memory.",
        ["\"Sir, could I please have your pass?\""],
        "He turns towards you, and seems to recognize. \"Oh, i\'s you. \'Allo. Ah s\'pose ye want me pass?\" He hands you his passport.",
        "Wait, it\'s Bryan? The homeless guy from your first conductor assignment? He looks a lot more... clean nowadays. The hell happened?",
        ["\"Bryan? You smell a lot better today.\"","\"Who is this Ms. Windsor and why are you allowed to accompany her?\"","\"This passport looks valid. Thank you.\""],
        "\"Yee, ah\'ve moved up in the world a lo\' since we last me\'.\"",
        "\"That would be me.\" The old woman by his side replies with aristocratic grace. Wait, you\'ve seen this woman on the news. \"Mr. Sutter is on official business.\" What official business? Her face is answering \"above your paygrade, dumbass\", so you refrain from asking.",
        "You can\'t think of anything to ask. You\'re not sure where that deja vu came from, but his passport is perfectly valid."
        ];

	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[2],[-1]),
            createDialogMap(2,text[2],id,-1,[skillBranch_alt, id, 2, 1, dc_ch, 3, 7]),
            createDialogMap(3,text[3],id,4,[checkl2npc6ch]),
            createDialogMap(4,text[4],id,[5,6,-1],[-1,-1,-1]),
            createDialogMap(5,text[5],id,4,-1),
            createDialogMap(6,text[6],id,4,-1),
            createDialogMap(7,text[7],id,-1,-1)
            ];
}