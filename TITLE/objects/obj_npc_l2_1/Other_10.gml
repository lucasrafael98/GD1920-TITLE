//image_speed = 1;
//path_start(npc1_enter, 2, path_action_stop, false);

if(alreadyReadLips){
	event_inherited();
} else {
	alreadyReadLips = true;

	canInteract = true;
	text = [
	    "She\'s not talking or whispering, so you can\'t read her lips."
	];
	dialogue = [
		createDialogMap(0,text[0],id,-1,-1),
	];
	
}