//image_speed = 1;
//path_start(npc1_enter, 2, path_action_stop, false);

if(alreadyReadLips){
	event_inherited();
} else {
	alreadyReadLips = true;

	canInteract = true;
text = [
        "You see Mr. Kursztov taking a phone call, very quietly. You\'d have to read his lips to understand it. Perhaps it may have interesting information?",
        ["Read his lips.","Leave him alone."],
        "He\'s mumbling quite a lot, so it\'s hard to understand him. However, you get a pretty good idea of what he\'s saying:\n\"mi ginomc back ferat siht mess.\"",
        "He\'s mumbling quite a lot, so it\'s hard to understand him. You still get a decent idea of what he\'s saying:\n\"mi ginomc kabc ferat siht sems.\"",
        "He\'s mumbling quite a lot, so it\'s hard to understand him. You don\'t have a clue:\n\"Sems mi ferat kabc siht ginomc.\"",
        ["\"Is everything okay, sir?\"","Leave the man alone."],
        "He doesn\'t bother looking at you, his phone call interrupted. He suddenly looks like he wants to be a lot less quiet. \"Excuse me, did I ask for your help? I\'m taking a private. Phonecall. Try to be less like everyone in your hot mess of a country and leave me the hell alone.\" He managed to be pretty quiet anyway, so no one noticed you."
        ];
	dialogue = [
            createDialogMap(0,text[0],id,1,-1),
            createDialogMap(1,text[1],id,[-1,-1],[[skillBranch_RL, id, 1, 4, dc_rl, 2, 3, 4],-1]),
            createDialogMap(2,text[2],id,5,-1),
            createDialogMap(3,text[3],id,5,-1),
            createDialogMap(4,text[4],id,5,-1),
            createDialogMap(5,text[5],id,[6,-1],[-1,-1]),
            createDialogMap(6,text[6],id,-1,[checkl2npc3rl])
            ];
	
}