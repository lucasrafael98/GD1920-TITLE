/*
	Dialog strings can take parameters. A parameter is denoted by {n} where n defines the parameter index.
	Example string "You found a {0}!". This takes 1 parameter and inserts it before the exclamation mark. This is how the string "You found a Battle-Axe!" is created.

	All events and branches are executed from the scope of the instance that originally spawned the dialog.
	If the instance no longer exists then it is executed from the scope of obj_dialog.
	
	Macro expansion for instance variables is also supported, e.g. ${current_hp} will be replaced by the value of the "current_hp" variable on the calling instance if it exists, otherwise not.

*/

//
//	Fallback dialog if you haven't assigned one to a dialog giver
//

//
//	A dialog without branches
//

#macro DIALOG_INTRO_0 0
dialog_add_string(DIALOG_INTRO_0, "What a stupid job.");

#macro DIALOG_INTRO_1 1
dialog_add_string(DIALOG_INTRO_1, "\"Go to the force\", they said. \"You\'ll investigate important things\", they said." +
								  " Meanwhile, I\'m drafted into being undercover… as a fucking conductor? God damn, this job was a mistake.");

#macro DIALOG_INTRO_2 2
dialog_add_string(DIALOG_INTRO_2, "You know, I tried being a decent cop but it\'s impossible. The “best” cops, they\'re just the ones that have friends or family higher above,"+
							      " up in the Institute of Stability. It\'s just impossible to compete when every single thing in this damn job is stacked against you.");

#macro DIALOG_INTRO_3 3
dialog_add_string(DIALOG_INTRO_3, "Guess it\'s better than being your average Joe. Or unemployed. Or homeless. Or dead. The job starts in a few minutes."+
									" I think I have to check some passes or something, but I should probably try to do this properly. Chief gave me a few pointers,"+
									" so I should probably read them before I start..");

#macro DIALOG_INTRO_4 4
dialog_add_string(DIALOG_INTRO_4, "\"So you got forced into the conductor jobs? What a mess. Honestly, I don\'t even know who came up with this, what a terrible goddamn idea."+
									" Public paranoia is at an all-time high, and the powers that be still want these insane operations happening?");

#macro DIALOG_INTRO_5 5
dialog_add_string(DIALOG_INTRO_5, "Anyhow, I know you tried your best but sometimes all you got just ain\'t enough in this life. Still, you gotta keep playing with the cards you\'re dealt,"+ 
								  " so might as well make the most out of it. See, this conductor job, it ain\'t just about taking passes and checking if someone\'s the bad guy. ");

#macro DIALOG_INTRO_6 6
dialog_add_string(DIALOG_INTRO_6, "Sometimes you\'ve got to intrude in people\'s lives to get the good stuff. After you check their passes, there\'s probably a lot of time until new passengers"+
							      " come aboard, time which you must seize. People sometimes start talking, so it\'s up to you to hear them. You never know what might be said openly. If someone\'s"+
								  " whispering though, you\'ve got to try and read their lips. It\'s not gonna be easy, though.");

#macro DIALOG_INTRO_7 7
dialog_add_string(DIALOG_INTRO_7, "Sometimes people don\'t have much to discuss, and they\'re just checking something on their phones or reading. Don\'t stare like some sort of weirdo at their "+
								  "stuff or they\'ll catch on within seconds. Just… glance at it, and try to keep what you just saw in your memory. I know it\'s strange, and it ain\'t easy if you\'re"+
								  " not too observant, but you\'ll get better over time.");

#macro DIALOG_INTRO_8 8
dialog_add_string(DIALOG_INTRO_8, "Anyway, enough with long-winded explanations. We caught word of someone initiated into this new organization. They won\'t have much to tell, but anything goes."+
								  " Seems like we can never find anything about them, but even the most tightly knit group has a loose end or two. We\'ve been told he\'s a bit on the large side and"+
								  " he takes this bus daily, though we don\'t know when he gets in. ");

#macro DIALOG_INTRO_9 9
dialog_add_string(DIALOG_INTRO_9, "Check that he doesn\'t get out before you can identify him, because you\'ll have just wasted your time, and you ain\'t got much of it. Good luck.\"");
