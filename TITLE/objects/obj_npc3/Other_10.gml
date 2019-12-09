//image_speed = 1;
//path_start(npc3_enter, 2, path_action_stop, false);
//READ
with(obj_music){
	event_user(0);
}
alreadyReadLips = true;
if(alreadyReadLips){
	event_inherited();
} else {
	canInteract = true;
	alreadyReadLips = false;
	text = [
	    "Nothing to read from her lips...",

	];
	dialogue = [
		createDialogMap(0,text[0],id,-1,-1),
	
	];

}