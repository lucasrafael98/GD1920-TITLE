
// You can write your code in this editor
//EAVESDROP
if(alreadyEavesdropped){
	event_inherited();
} else {
	alreadyEavesdropped = true;

	canInteract = true;
	text = [
	    "Miss Kursztova seems to be talking on the phone. The conversation seems to be stressing her out somewhat.",
		[
			"Listen in on the conversation.",
			"Ignore it."
		],
		"The woman\'s making an effort not to scream angrily. The voice on the other side of the line seems to be calm. You only understand a few words:\n\"fire... quit... can\'t do this... lose my...\"",
		"You can\'t hear her well enough. You\'re not going to get anything out of this.",
		[
			"\"Is everything okay, miss?\"",
			"Don\'t bother her."
		],
		"She seems to be pretty shaken, on the verge of crying. Still, she tries to keep a straight face. \"Yes. I suppose there\'s not much demand for housing when we\'re being invaded.\"",
	];
	speakers = [id,id];
	next_line = [-1];
	scripts = [-1];
	dialogue = [
		createDialogMap(0,text[0],id,1,-1),
		createDialogMap(1,text[1],obj_player,[-1,-1],[[skillBranch, id, 1, 2, 1+personalSuspicion, 2, 3],-1]),
		createDialogMap(2,text[2],id,4,-1),
		createDialogMap(3,text[3],id,-1,-1),
		createDialogMap(4,text[4],id,[5,-1],[-1,-1]),
		createDialogMap(5,text[5],id,-1,-1)
	];
}