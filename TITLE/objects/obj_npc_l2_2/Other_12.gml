

// You can write your code in this editor
//EAVESDROP
if(alreadyEavesdropped){
	event_inherited();
} else {
	alreadyEavesdropped = true;
	obj_npc_l2_5.alreadyEavesdropped = true;
	canInteract = true;
	text = [
        "The couple seems to be having a chat. As usual, the husband seems angry, though it might not be anything.",
        ["Eavesdrop on them.","Leave them alone."],
        "They\'re mumbling, but you can hear the husband say some words:\n\"almost out... don\'t... scene... through\"",
        ["\"Is everything okay?\"","Leave them alone."],
        "\"Yes, officer. Everything's okay. Now LEAVE! US! ALONE!\" His insane shouting bats a few eyelids. ",
        "You can\'t hear anything."
        ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[-1,-1],[[skillBranch, id, 1, 2, obj_npc_l2_5.dc_ed, 2, 5], -1]),
            createDialogMap(2,text[2],id,3,-1),
            createDialogMap(3,text[3],id,[4,-1],[-1,-1]),
            createDialogMap(4,text[4],id,-1,[player_increase_suspicion_end, id]),
            createDialogMap(5,text[5],id,-1,-1)
            ];
}