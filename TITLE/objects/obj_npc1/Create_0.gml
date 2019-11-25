/// @description Insert description here
// You can write your code in this editor
event_inherited();

canInteract = true;
colorLevel = 120;
direction = 0;
portrait_index = 0;
voice = snd_sound0;
name = "Jaquelina";
text = [
	"A thin woman with black hair approaches you. She reeks of cigarettes, but doesn\'t look repulsive otherwise. She hands you the pass without a word.", 
	[
		"[check her pass]"
	], 
	"Everything seems to be in order. Right photo, female, around the right height. Travelling to get to work in real estate. Not the hottest area right now,"+
								 " which probably explains her fairly gaunt figure.",
	[
		"Everything in order. You can come in.",
		"Step out of the bus, ma\'am."
	],
	"She doesn\'t say a word and leaves. You can faintly hear some... unkind words being muttered as she does. The other passengers wonder why you\'ve just"+
									   " kicked out a passenger for no discernible reason."
];
speakers = [id, obj_player,id,obj_player,id];
next_line = [1, [2], 3,[-1,4],-1];
scripts = [-1, [-1], -1,[[accept_npc1],[refuse_npc1]],[stopHighlight, id]];