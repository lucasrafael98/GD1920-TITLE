//GLANCE
with(obj_music){
	event_user(0);
}
alreadyGlanced = true;
if(alreadyGlanced){
	event_inherited();
} else {
	canInteract = true;
	alreadyGlanced = true;
	text = [
	    "He is not doing anything special...",

	];
	dialogue = [
		createDialogMap(0,text[0],id,-1,-1),
	
	];
}