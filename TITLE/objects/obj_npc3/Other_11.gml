//GLANCE
alreadyGlanced = true;
if(alreadyGlanced){
	event_inherited();
} else {
	canInteract = true;
	alreadyGlanced = false;
	text = [
	    "He is not doing anything special...",

	];
	dialogue = [
		createDialogMap(0,text[0],id,-1,-1),
	
	];
}