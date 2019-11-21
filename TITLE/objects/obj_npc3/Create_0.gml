/// @description Insert description here
// You can write your code in this editor
event_inherited();

portrait_index = 0;
voice = snd_sound0;
name = "Angerywoman";
text = [
	"An old woman approaches. She looks extremely angry. \"Why was I waiting out here in the bloody cold behind that woman and the trashman? Your bloody generation "+
								" has no respect for the elderly!\" she shouts. Her voice is weak, but the extremely high pitch manages to give you a small headache nonetheless.", 
	[
		"Lady, give me the damn pass and shut up.",
		"Sorry about that, I\'m new here. Could I have your pass please?"
	], 
	"She looks at you, eyes wide open and mouth agape, and gets closer. \"Why you impertinent… I won\'t tolerate this! If I didn\'t have to catch this bus I\'d be out of"+
								  " here.\" She hands you the pass while you silently wipe drops of elderly spittle off your face.",
	"She sighs, still feeling like she\'s entitled to anything. Not the wisest choice, apologizing. \"Well, you better remember me! I take this bus every day and I don\'t"+
								  " want to see this happening ever again!\" The headache gets worse, and you can hear ringing. She hands you the pass.",
	["[check her pass]"],
	"Thankfully, her pass is impeccably clean. Everything checks out, the reason only stating \"the following person is extremely old and currently leaving alone, and "+
								 " requires the use of transport in order to obtain her daily allowance of food\".",
	["Alright, this checks out. Please be a bit more… comprehensive next time."],
	["[check her pass]"],
	"Thankfully, her pass is impeccably clean. Everything checks out, the reason only stating \"the following person is extremely old and currently leaving alone, and "+
								 " requires the use of transport in order to obtain her daily allowance of food\".",
	"You notice something sticking out in this piece of paper. You peel a layer off, revealing a different photo.",
	["This is a poor forgery. I should have you arrested for this."],
	"Her confidence and audacity seems to disappear in an instant. \"Well… I live alone anyway. This used to belong to a friend, but she… she passed away a few weeks back"+
									   ", the poor woman. I wasn\'t granted a pass and I can\'t walk the distance in this cold. Please, let me in. I need that bit of food or I\'ll be joining my friend.\"",
	[
		"I didn\'t let the man before you, and I won\'t let you in. I\'d be risking my neck out here too, lady. I can\'t do it.",
		"...Fine, get in. But I\'ll have no more complaining from you, lady."
	],
	"Defeated, she walks away without a word. You can hear quiet sniffing.",
	"\"Thank you, thank you so much.\" She almost seems to bow before you, and gets inside the bus."
	
];
speakers = [id, obj_player,id,id,obj_player,id,obj_player,obj_player,id,id,obj_player,id,obj_player,id,id];
next_line = [0, [2,3],4,7,[5],6,[-1],[8],9,10,[11],12,[13,14],-1,-1];
scripts = [-1, [-1,-1], -1,-1,[-1],-1,[[dialog_npc3_forgery_2]],[-1],-1,-1,[-1],-1,[[dialog_npc3_forgery_1],[dialog_npc3_forgery_2]]];