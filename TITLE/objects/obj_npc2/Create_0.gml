/// @description Insert description here
// You can write your code in this editor
event_inherited();

portrait_index = 0;
voice = snd_sound0;
name = "Lmaobama";
text = [
	"A man with ragged clothes and unkempt hair approaches you. You resist gagging when this awful smell of garbage shoots through your nostrils. He hands you"+
							     " a stained pass with a hand that seems to lack any sort of fat.", 
	[
		"[check his pass]",
		"Please get the hell out of here."
	], 
	"Thankfully you have gloves, because you can\'t tell where these stains came from. You can\'t even make out the name, not that it matters since the reason for travel"+
								 " is \"i ned to\". You\'re a bit of an amateur conductor, but even you know that\'s bullshit.",
	[
		"You... \"ned\" to?",
		"Alright, please get an actual pass next time. Out."
	],
	"\"Please sir, I need some money. The bus is the only place where there\'s people all the time. I can\'t get a job anywhere...\" the smell is just too much when he starts"+
										" talking. You\'re barely holding it in.",
	[
		"Look, I can\'t get you in like this. Get cleaner and we\'ll talk. Sorry.",
		"Get the hell out of here, right now."
	],
	"\"Alright, alright.\" He leaves with no fuss. You feel a smidge of pity, overshadowed by the relief that is being able to breathe without holding everything in."
];
speakers = [id, obj_player,id,obj_player,id,obj_player,id];
next_line = [1, [2,4], 3,[4,4],5,[6,-1],-1];
scripts = [-1, [-1,-1], -1,[-1,-1],-1,[[refuse_npc2_2],[refuse_npc2_2]],-1];