event1dc = 2;
attempts = 2;

text=[
	  "The incredibly fat man is reading a book. You wonder if it might have anything interesting to the case.",
			[
			"Take a glance.",
			"Don\'t."
			],
	  "Here we go. You glance at the cover, and recreate it in your head. Very detailed finish, imported?"+
			" You can\'t quite read the full title, but it seems like it\'s something about rising up and"+
			" changing things. Is change truly a bad thing?",
			[
			"Hey, interesting you book you got there.",
			"Best not interrupt."
			],
	  " \"Oh, uh.. it\'s this very interesting book a friend gave me. I don\'t know... Don\'t you feel there\'s "+
			"something wrong with this place?",
			[
			"Uhh... no. All's right with the world.",
			"Yeah, I don\'t know. I guess this city never felt quite... right."
			],
	  "\"Then I guess you just don\'t get it, man. Sorry.\"",
	  
	  "\"It\'s nice to see someone agrees. This book... it\'s not from here. People think differently, on the"+
			" outside. It\'s just refreshing to read about different views, that\'s all. Not much of that"+
			" around here.\" Quite candid. Most people don\'t have the balls to say that sorta thing out loud. ",
			
	  "The image in your head keeps moving around, not wanting to stay still. You can\'t get anything out of "+
			"this, but you give it another shot.",
			[
			 "Go for it.",
			 "Don\'t risk a second failure."
			],
	  "\"Oh... are you interested in my reading? This is a pretty interesting book my friend gave me."+
			" I don\'t know, I just feel something is wrong with people, but I don\'t know how to change it."+
			" Don\'t you feel the same?\""
	];
speakers = [id,
				obj_player,
			id,
				obj_player,
			id,
				obj_player,
			id,
			id,
			id,
				obj_player,
			id];
next_line = [0,
				[-1,-1],
			 3,
				[4,-1],
		     5,
				[6,7],
			 -1,
			 -1,
			 9,
				[1,-1],
			 5];
scripts = [-1,
				[[npc5_glance], [stopHighlight, id]],
			[change_variable,obj_player,"glance_npc5",true],
				[-1,[stopHighlight, id]],
			-1,
				[-1,-1],
			[stopHighlight, id],
			[stopHighlight, id],
			-1,
				[-1,[stopHighlight, id]],
			-1];