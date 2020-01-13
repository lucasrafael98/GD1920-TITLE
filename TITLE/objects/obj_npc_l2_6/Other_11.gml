//image_speed = 1;
//path_start(npc1_exit, 2, path_action_stop, false);
//GLANCE
if(alreadyGlanced){
	event_inherited();
} else {
	alreadyGlanced = true;
	canInteract = true;
	text = [
	    "He\'s not doing anything you can glance at."
	];
	dialogue = [
		createDialogMap(0,text[0],id,-1,-1),
	];
}