/// @description Insert description here
// You can write your code in this editor
event_inherited();

glance_success = false;
eavesd_success = false;
relips_success = false;
my_id = obj_npc3;
dc_rl = 1;
dc_gl = 4;
dc_ed = 2;
dc_ch = 3;

canInteract = true;
colorLevel = 120;

portrait_index = 0;
voice = snd_sound0;
name = "Angerywoman";
text = [
	"An old woman approaches. She looks extremely angry. \"Why was I waiting out here in the bloody cold behind that woman and the trashman? Your bloody generation "+" has no respect for the elderly!\" she shouts. Her voice is weak, but the extremely high pitch manages to give you a small headache nonetheless.", 
	
	[
		"Lady, give me the damn pass and shut up.",
		"Sorry about that, I\'m new here. Could I have your pass please?"
	], 
	
	"She looks at you, eyes wide open and mouth agape, and gets closer. \"Why you impertinent... I won\'t tolerate this! If I didn\'t have to catch this bus I\'d be out of"+" here.\" She hands you the pass while you silently wipe drops of elderly spittle off your face.",
	
	"She sighs, still feeling like she\'s entitled to anything. Not the wisest choice, apologizing. \"Well, you better remember me! I take this bus every day and I don\'t"+" want to see this happening ever again!\" The headache gets worse, and you can hear ringing. She hands you the pass.",
	
	["[check her pass]"],
	
	"Thankfully, her pass is impeccably clean. Everything checks out, the reason only stating \"the following person is extremely old and currently leaving alone, and "+" requires the use of transport in order to obtain her daily allowance of food\".",
	
	["Alright, this checks out. Please be a bit more... comprehensive next time."],
	
	"Thankfully, her pass is impeccably clean. Everything checks out, the reason only stating \"the following person is extremely old and currently leaving alone, and "+" requires the use of transport in order to obtain her daily allowance of food\".",
	
	"You notice something sticking out in this piece of paper. You peel a layer off, revealing a different photo.",
	
	["This is a poor forgery. I should have you arrested for this."],
	
	"Her confidence and audacity seems to disappear in an instant. \"Well... I live alone anyway. This used to belong to a friend, but she... she passed away a few weeks back"+", the poor woman. I wasn\'t granted a pass and I can\'t walk the distance in this cold. Please, let me in. I need that bit of food or I\'ll be joining my friend.\"",
	
	[
		"I didn\'t let the man before you, and I won\'t let you in. I\'d be risking my neck out here too, lady. I can\'t do it.",
		"...Fine, get in. But I\'ll have no more complaining from you, lady."
	],
	
	"Defeated, she walks away without a word. You can hear quiet sniffing.",
	
	"\"Thank you, thank you so much.\" She almost seems to bow before you, and gets inside the bus."
	
];
dialogue = [
	createDialogMap(0,text[0],id,1,-1),
	createDialogMap(1,text[1],obj_player,[2,3],[[change_variable, obj_player, "s_eavesdropping", (obj_player.s_eavesdropping) - 1],-1]),
	createDialogMap(2,text[2],id,4,-1),
	createDialogMap(3,text[3],id,4,-1),
	createDialogMap(4,text[4],obj_player,[-1],[[npc3_continue]]),
	createDialogMap(5,text[5],id,6,[stopHighlight,id]),
	createDialogMap(6,text[6],obj_player,[-1],[[dialog_npc3_forgery_2]]),
	createDialogMap(7,text[7],id,8,-1),
	createDialogMap(8,text[8],id,9,-1),
	createDialogMap(9,text[9],obj_player,[10],[-1]),
	createDialogMap(10,text[10],id,11,-1),
	createDialogMap(11,text[11],obj_player,[12,13],[[dialog_npc3_forgery_1],[dialog_npc3_forgery_2]]),
	createDialogMap(12,text[12],id,-1,-1),
	createDialogMap(13,text[13],id,-1,-1),
];