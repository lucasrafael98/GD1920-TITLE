/// @description Insert description here
// You can write your code in this editor
event_inherited();
dc_rl = 2;
dc_gl = 4;
dc_ed = 3;
dc_ch = 2;
my_id = obj_npc5;
canInteract = true;
colorLevel = 120;
portrait_index = 0;
voice = snd_sound0;
name = "Fatmandamn";
text = [
	"No one remains outside. Not a busy day, surprisingly. You\'re just about to close when...",
	
	"\"Hey, wait!\" an incredibly fat man seems to be flailing his arms and legs in your direction. It takes you a second to understand he\'s trying to run to catch the bus on time.",
	
	[
		"Close the door and take off.",
		"Wait."
	], 
	
	"The engine starts roaring, and the bus begins to move. That was a fat person though… you consider if you didn\'t just screw up with your choice.",
	
	"The man reaches you after a while, and hands you his pass while panting heavily. \"Thank... you...\" His pass is in order. Apparently he only needs"+" to get the bus for one stop?",
	
	[
		"Why are you taking this bus if it\'s only for one stop? And how did you get a pass for this?",
		 "Hell man, calm down a bit there. You can get in, there\'s a seat or two for you."
	],
	
	"He starts to look annoyed. \"Well, I\'m... a bit too large.. and I get tired quickly... the pass is legit...  and I won\'t have you... questioning me..."+". like this. Can I get in or not?\"",
	
	["Well... everything is order, so yes."],
	
	"\"Oh... thanks...\" He drags himself into the bus."
];
speakers = [id, id, obj_player,id,id,obj_player,id,obj_player,id];
next_line = [0, 2, [3,4], -1, 5, [6,-1],7,[8],-1];
scripts = [-1,-1,[[stopHighlight, id],-1],-1,-1,[-1,[dialog_npc5_accept]],-1,[[dialog_npc5_accept]],-1];

dialogue = [
	createDialogMap(0,text[0],id,1,-1),
	createDialogMap(1,text[1],id,2,-1),
	createDialogMap(2,text[2],obj_player,[3,4],[[stopHighlight, id],-1]),
	createDialogMap(3,text[3],id,-1,-1),
	createDialogMap(4,text[4],id,5,-1),
	createDialogMap(5,text[5],obj_player,[6,-1],[-1,[dialog_npc5_accept]]),
	createDialogMap(6,text[6],id,7,-1),
	createDialogMap(7,text[7],obj_player,[8],[[dialog_npc5_accept]]),
	createDialogMap(8,text[8],id,-1,-1),
];