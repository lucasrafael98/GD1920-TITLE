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
			" privacy without some weirdo looking at you these days.\" The other passengers all look at both of you.",
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
			  -1],
			  3,
			 [4, 
			  -1],
			-1,
			6,
			[1,
			 -1]];
			
scripts =  [-1,
			  [[npc4_glance],[stopHighlight, id]],
			-1,
			  [-1,[stopHighlight, id]],
			[player_increase_suspicion_end, id],
			-1,
			  [-1,[stopHighlight, id]]];