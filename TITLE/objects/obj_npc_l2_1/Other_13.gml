//CHECKPASS
if(alreadyCheckedPass){
	event_inherited();
} else {
	alreadyCheckedPass = true;
	text = [
        "You approach an old woman with a regal look about her. She could own the train, the way she looks.",
        ["\"Madam, could I please have your passport?\""],
        "\"Of course.\" She hands you her passport.",
        "Windsor Enterprises, a very, very successful arms corporation fueling the war down south. You remember this woman\'s face; she\'s the chairman.",
        ["\"Hey, I\'ve seen you on TV.\"","\"May I inquire to the specifics of your ‘official business\'?\"","\"Thank you madam, everything checks out.\""],
        "\"You probably have.\" She doesn\'t even bother looking at you, as if you\'re a mere insect in her presence.",
        "\"You don\'t look like a shareholder of Windsor Enterprises, so no.\" ",
        "Windsor Enterprises? Doesn\'t ring a bell, though it seems pretty official. You\'re sure it\'s fine."
        ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[2],[-1]),
            createDialogMap(2,text[2],id,-1,[skillBranch_alt, id, 2, 1, dc_ch, 3, 7]),
            createDialogMap(3,text[3],id,4,[checkl2npc1ch]),
            createDialogMap(4,text[4],id,[5,6,-1],[-1,-1,-1]),
            createDialogMap(5,text[5],id,4,-1),
            createDialogMap(6,text[6],id,4,-1),
            createDialogMap(7,text[7],id,-1,-1),
    ];
}