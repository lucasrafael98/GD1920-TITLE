
// You can write your code in this editor
//EAVESDROP
if(alreadyEavesdropped){
	event_inherited();
} else {
	alreadyEavesdropped = true;

	canInteract = true;
	text = [
	    "He\'s not talking."
	];
	dialogue = [
		createDialogMap(0,text[0],id,-1,-1),
	];
}