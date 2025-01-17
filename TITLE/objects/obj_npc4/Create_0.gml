/// @description Insert description here
// You can write your code in this editor
event_inherited();

glance_success = false;
eavesd_success = false;
relips_success = false;
my_id = obj_npc4;
dc_rl = 3;
dc_ch = 2;
dc_gl = 4;
dc_ed = 2;

canInteract = true;
colorLevel = 120;
portrait_index = 0;
voice = snd_sound0;
name = "WeebMaster";
text = [
	"A larger young man stands in front of you, seemingly angry at the world. \"Damn entitled old people. She just got in front of me without a word!\", he sighs."+" \"Anyway, let\'s get this over with already.\" he hands you his pass.", 
	
	"Everything in order. The letter mentioned a fat man, so you should pay attention to this one. He\'s a student at the Institute of Technical Mastery, and he\'s"+" been granted permission to get on this bus.",
								 
	[
		"Why didn\'t you tell her to bugger off and not get in your way like that? ",
		"Student? What are you studying?",
		"Alright, you can get in.",
		"You can\'t enter if you\'re too much of a weakling to stand up to an old lady. Out."
	],
	
	"\"And make a scene with her? You saw how she spoke, even to you. I would have gained nothing by attempting to take my rightful place in the queue.\"",
	
	"\"Computer Engineering. I suppose typing till my hands fall off for some barely working government mess does beat having to go to the Western front as"+" a more hardware oriented engineer. Hardware is those metal things with circuitry, mind you.\"",
	
	"He doesn\'t say a word and gets on the bus.",
	
	"\"What the fuck? Hey, I have every right to be on this...\" he remembers what could happen to his pass if he argues, and silently leaves. The other passengers"+" find your reply quite strange."
];

dialogue = [
	createDialogMap(0,text[0],id,1,-1),
	createDialogMap(1,text[1],id,2,-1),
	createDialogMap(2,text[2],obj_player,[3,4,5,6],[-1,-1,[dialog_npc4_13],[dialog_npc4_14]]),
	createDialogMap(3,text[3],id,2,-1),
	createDialogMap(4,text[4],id,2,-1),
	createDialogMap(5,text[5],id,-1,[accept_npc4]),
	createDialogMap(6,text[6],id,-1,[stopHighlight, id]),
];