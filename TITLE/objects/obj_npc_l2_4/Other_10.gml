//image_speed = 1;
//path_start(npc1_enter, 2, path_action_stop, false);

if(alreadyReadLips){
	event_inherited();
} else {
	alreadyReadLips = true;

	canInteract = true;
	text = [
        "Mr. Sutherland seems to be mumbling, like he\'s talking to himself. Is he insane as well?",
        ["Only one way to find out.","I really don\'t wanna know."],
        "You try reading his lips, but... he\'s  not making any fuckin\' sense. He\'s not talking in a language you know.\n\"popuedss ont keam nssee ot sit\"",
        "You try reading his lips, but... his accent is weird. Or something.\n\"sit ont popuedss ot keam nssee\"",
        "You try reading his lips and... wait, aren\'t you supposed to be bad at this? You can perfectly understand what he\'s saying.\n\"Its not supposed to make sense.\"",
        ["\"Are you talking to yourself or something?\"","Screw this, I\'m outta here."],
        "Only now did he notice you. \"Oh, hello. I\'m doing this fun game where you try to jumble words. I don\'t know, feels like you\'re trying to visualize what someone\'s saying when you read their lips. I\'ve been doing this since I was created. Have you ever tried it?\" ",
        ["\"... \'Created\'?\"","\"Yeah, I try it all the time.\"","\"Uh... okay.\" Leave him alone."],
        "\"Yes.\" He doesn\'t say anything else.",
        "\"Great!\" He doesn\'t say anything else."
        ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[-1,-1],[[skillBranch_RL, id, 1, 4, dc_rl, 2, 3, 4],-1]),
            createDialogMap(2,text[2],id,5,-1),
            createDialogMap(3,text[3],id,5,-1),
            createDialogMap(4,text[4],id,5,-1),
            createDialogMap(5,text[5],id,[6,-1],[-1,-1]),
            createDialogMap(6,text[6],id,7,-1),
            createDialogMap(7,text[7],id,[8,9,-1],[-1,-1,-1]),
            createDialogMap(8,text[8],id,-1,-1),
            createDialogMap(9,text[9],id,-1,-1)
            ];
}