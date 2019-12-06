//image_speed = 1;
//path_start(npc3_sit, 2, path_action_stop, false);
//EAVESDROP
canInteract = true;
text = [
	
    "You overhear the old woman and the younger college man talking. Seems like things are getting a bit aggressive over there.",

	[
		"[eavesdrop]"
	], 
	
    "You focus on the conversation, but you can only hear a few words:\n \"Are you doing... my right... entitled... unfair... elderly... society\"",


	[
		"\"Hey, what the hell are you talking about?!\" ",
		 "Seems pointless to barge into this argument."
	],
	"The student looks at you. \"Hey, this none of your damn business! This geezer can\'t seem to understand that I have the same rights as her, and she won\'t leave me alone. Shit, with everyone sane off this city, you only get us students and this rabble. Something\'s got to change soon...\" The old woman pleads, \"This man doesn\'t seem to respect that I\'m an elder and I go to this seat every day!\"",
	
	[
		"\"Hey man, just let the lady sit in her usual place.\" ",
		 "\"Lady, shut up and go somewhere else. The bus is almost empty, I\'m sure you have space.\""
	],
	"\"This is bullshit! Can\'t even sit wherever I please. This city\'s gone down the drain and someone has to change this\" He leaves, and the old woman sits on \'her\' spot, a radiant, victorious smirk on her face.",
	" \"How... rude, and disrespectful!\" She storms off. \"Hey, thanks. Good to see not everyone on this city has just gone insane.\"",
	"You feel the ringing in your ears from your previous conversation with the old woman, and you conclude that it isn\'t worth any more pain. You fail to focus on their conversation."
];
speakers = [id, obj_player,obj_player,obj_player,obj_npc4,obj_player,id,id,obj_player];
next_line = [0, [-1], 3,[4,-1],5,[6,7],-1,-1,-1];
scripts = [-1,[[npc34_eavesdrop]],-1,[[change_variable,obj_player,"eaves_i",true],-1],-1,[-1,-1],[letNPC3Sit],[letNPC4Sit], [stopHighlight, id]];

dialogue = [
	createDialogMap(0,text[0],id,1,-1),
	createDialogMap(1,text[1],obj_player,[-1],[[npc34_eavesdrop]]),
	createDialogMap(2,text[2],obj_player,3,-1),
	createDialogMap(3,text[3],obj_player,[4,-1],[[change_variable,obj_player,"eaves_i",true],-1]),
	createDialogMap(4,text[4],obj_npc4,5,-1),
	createDialogMap(5,text[5],obj_player,[6,7],[-1,-1]),
	createDialogMap(6,text[6],id,-1,[letNPC3Sit]),
	createDialogMap(7,text[7],id,-1,[letNPC4Sit]),
	createDialogMap(8,text[8],obj_player,-1,[stopHighlight, id]),

];