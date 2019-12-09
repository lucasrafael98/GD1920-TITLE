//image_speed = 1;
//path_start(npc3_enter, 2, path_action_stop, false);
//READ
if(alreadyReadLips){
	event_inherited();
} else {
	canInteract = true;
	alreadyReadLips = false;
	text = [
	    "Nothing to read from her lips...",

	];
	speakers = [id,id];
	next_line = [-1];
	scripts = [-1];
	dialogue = [
		createDialogMap(0,text[0],id,-1,-1),
	
	];

}