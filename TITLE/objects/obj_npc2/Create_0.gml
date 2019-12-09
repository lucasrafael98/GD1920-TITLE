/// @description Insert description here
// You can write your code in this editor
event_inherited();
canInteract = true;
colorLevel = 120;
portrait_index = 0;
my_id = obj_npc2;
dc_gl = 0;
dc_rl = 1;
dc_ed = 2;
dc_ch = 1;

voice = snd_sound0;
name = "Lmaobama";
text = [
	"A man with ragged clothes and unkempt hair approaches you. You resist gagging when this awful smell of garbage shoots through your nostrils. He hands you"+" a stained pass with a hand that seems to lack any sort of fat.", 
	
	[
		"[check his pass]",
		"Please get the hell out of here."
	], 
	
	"Thankfully you have gloves, because you can\'t tell where these stains came from. You can\'t even make out the name, not that it matters since the reason for travel"+" is \"i ned to\". You\'re a bit of an amateur conductor, but even you know that\'s bullshit.",
	
	[
		"You... \"ned\" to?",
		"Alright, please get an actual pass next time. Out."
	],
	
	"\"Please sir, I need some money. The bus is the only place where there\'s people all the time. I can\'t get a job anywhere...\" the smell is just too much when he starts"+" talking. You\'re barely holding it in.",
	
	[
		"Look, I can\'t get you in like this. Get cleaner and we\'ll talk. Sorry.",
		"Get the hell out of here, right now."
	],
	
	"\"Alright, alright.\" He leaves with no fuss. You feel a smidge of pity, overshadowed by the relief that is being able to breathe without holding everything in."
];

dialogue = [
	createDialogMap(0,text[0],id,1,-1),
	createDialogMap(1,text[1],obj_player,[2,4],[-1,-1]),
	createDialogMap(2,text[2],id,3,-1),
	createDialogMap(3,text[3],obj_player,[4,4],[-1,-1]),
	createDialogMap(4,text[4],id,5,-1),
	createDialogMap(5,text[5],obj_player,[6,-1],[[refuse_npc2_2],[refuse_npc2_2]]),
	createDialogMap(6,text[6],id,-1,[stopHighlight, id]),

];