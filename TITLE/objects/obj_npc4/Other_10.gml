//image_speed = 1;
//path_start(npc4_enter, 2, path_action_stop, false);
/*
if (!skillcheck(2,1)) {
   
text = [
	
    "You overhear the old woman and the younger college man talking. Seems like things are getting a bit aggressive over there.",

	[
		"[eavesdrop]"
	], 
	
	"You feel the ringing in your ears from your previous conversation with the old woman, and you conclude that it isn\'t worth any more pain. You fail to focus on their conversation.",
	
];
speakers = [id, obj_player,obj_player];
next_line = [0, [2], -1];
scripts = [-1,[-1],-1];
}

else {


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
		"\"Hey man, just let her sit in her usual place.\" ",
		 "\"Lady, shut up and go somewhere else. The bus is almost empty, I\'m sure you have space.\""
	],
	"\"This is bullshit! Can\'t even sit wherever I please. This city\'s gone down the drain and someone has to change this\" He leaves, and the old woman sits on \'her\' spot, a radiant, victorious smirk on her face.",
	" \"How... rude, and disrespectful!\" She storms off. \"Hey, thanks. Good to see not everyone on this city has just gone insane.\"",
];
speakers = [id, obj_player,obj_player,obj_player,id,obj_player,id,id];
next_line = [0, [2], 3,[4,-1],5,[6,7],-1];
scripts = [-1,[-1],-1,[-1,-1],-1,[-1,-1],-1];

}
*/
event0dc = 1; //should decrease on a second attempt.
attempts = 2; //decreases, when 0 the player will be noticed.

text = ["The young student seems to be enraptured by what he sees on the computer screen. You wonder if it\'s worth taking a look.",
			[
			 "Do it.",
			 "Don't."
			],
		"You only looked at the computer for a split second. This is probably not enough for most people, but you just have to focus." +
			" Your mind\'s eye opens, revealing a blurred image of a... strange drawing. This man seems to be viewing music videos with drawings of barely clothed women.",
			[
			 "What the hell is that!?",
			 "Back away, slowly."
			],
		"He almost jumps off his seat. \"WHAT THE- Why the fuck are you looking at my computer, dude!? Go away! You can\'t even have some goddamn"+
			" privacy without some weirdo looking at you these days.\" The other passengers all look at both of you. <suspicion increases>",
		"You can\'t focus with all the noise. The image on your mind never seems to stop shifting and coalesce into something you can understand.",
			[
			 "Try again.",
			 "It\'s probably nothing interesting."
			]
		];
speakers = [id,
			 obj_player,
			id,
			 obj_player,
			id,
			id,
			 obj_player];
			
next_line = [0,
			 [-1, //replace
			  [stopHighlight, id]],
			  3,
			 [4, 
			  [stopHighlight, id]],
			[stopHighlight, id],
			6,
			[1,
			 [stopHighlight, id]]];
			
scripts =  [-1,
			 [[npc4_glance],
			  -1],
			-1,
			 [-1, 
			  -1],
			-1,
			-1,
			[-1,
			 -1]];