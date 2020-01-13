
// You can write your code in this editor
//EAVESDROP
if(alreadyEavesdropped){
	event_inherited();
} else {
	alreadyEavesdropped = true;
	obj_npc_l2_1.alreadyEavesdropped = true;

	canInteract = true;
	text = [
        "While Bryan and Ms. Windsor haven\'t been very talkative the whole train ride, they just started talking. Maybe you\'ll get something out of them now?",
        ["Eavesdrop on them.", "Ignore it."],
        "They\'re talking very quietly, but since they\'re together you can\'t really read their lips. You can still hear some words however:\n\"Your job... meet him... when we get there... talk business\"",
        ["\"Important business to attend to?\"","Leave them alone."],
        "You finally caught her attention. She looks at you and replies: \"Important and private. Please leave us alone, unless you\'d like to keep interfering in the business of a very, very powerful corporation.\" You... really don\'t wanna mess with this lady. A lowly conductor bothering such a highly respected member of society is likely to cause a bad impression of you on other people.",
        "They\'re speaking too quietly and you can\'t read their lips from here. You can\'t get anything out of them."
    ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 2, dc_ed, 2, 5],-1]),
            createDialogMap(2,text[2],id,3,-1),
            createDialogMap(3,text[3],id,[4,-1],[-1,-1]),
            createDialogMap(4,text[4],id,-1,[checkl2npc16ed]),
            createDialogMap(5,text[5],id,-1,-1)
    ];
}