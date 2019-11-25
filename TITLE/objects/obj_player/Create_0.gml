/// @description Insert description here
// You can write your code in this editor
//image_speed = 0;
//walkSpeed = 3.5;

w_spd = 1;
n_spd = 2;
r_spd = 3;
spd = n_spd;

radius = 16; 

s_eavesdropping = 1;
s_readlips = 1;
s_glance = 1;
s_checkpasses = 1;

eaves_i = false;
glance_npc4 = false;
glance_npc5 = false;
readlips_npc5 = true;
a_suspicion = 0;

portrait_index = 0;
voice = snd_sound0;
name = "Player";
text = ["Default text"];
active_tbox = noone;

intro_text = [
"What a stupid job.",

"\"Go to the force\", they said. \"You\'ll investigate important things\", they said." +
" Meanwhile, I\'m drafted into being undercover... as a fucking conductor? God damn, this job was a mistake.",


"You know, I tried being a decent cop but it\'s impossible. The \"best\" cops, they\'re just the ones that have friends or family higher above,"+
" up in the Institute of Stability. It\'s just impossible to compete when every single thing in this damn job is stacked against you.",


"Guess it\'s better than being your average Joe. Or unemployed. Or homeless. Or dead. The job starts in a few minutes."+
									" I think I have to check some passes or something, but I should probably try to do this properly. Chief gave me a few pointers,"+
									" so I should probably read them before I start..",


"\"So you got forced into the conductor jobs? What a mess. Honestly, I don\'t even know who came up with this, what a terrible goddamn idea."+
									" Public paranoia is at an all-time high, and the powers that be still want these insane operations happening?",


"Anyhow, I know you tried your best but sometimes all you got just ain\'t enough in this life. Still, you gotta keep playing with the cards you\'re dealt,"+ 
" so might as well make the most out of it. See, this conductor job, it ain\'t just about taking passes and checking if someone\'s the bad guy. ",


"Sometimes you\'ve got to intrude in people\'s lives to get the good stuff. After you check their passes, there\'s probably a lot of time until new passengers"+
" come aboard, time which you must seize. People sometimes start talking, so it\'s up to you to hear them. You never know what might be said openly. If someone\'s"+
" whispering though, you\'ve got to try and read their lips. It\'s not gonna be easy, though.",


"Sometimes people don\'t have much to discuss, and they\'re just checking something on their phones or reading. Don\'t stare like some sort of weirdo at their "+
"stuff or they\'ll catch on within seconds. Just... glance at it, and try to keep what you just saw in your memory. I know it\'s strange, and it ain\'t easy if you\'re"+
" not too observant, but you\'ll get better over time.",


"Anyway, enough with long-winded explanations. We caught word of someone initiated into this new organization. They won\'t have much to tell, but anything goes."+
" Seems like we can never find anything about them, but even the most tightly knit group has a loose end or two. We\'ve been told he\'s a bit on the large side and"+
" he takes this bus daily, though we don\'t know when he gets in. ",


"Check that he doesn\'t get out before you can identify him, because you\'ll have just wasted your time, and you ain\'t got much of it. Good luck.\"",


"I'm new to this, but I should probably focus on what I'm good at.",
"What... am I good at?",
[
	"Checking people's passes.",
	"Eavesdropping on conversations.",
	"Reading lips.",
	"Glancing at objects.",
]
];
intro_speakers = [id,id,id,id,id,id,id,id,id,id,id,id,id];
intro_next_line = [1,2,3,4,5,6,7,8,9,10,11,12,[-1,-1,-1,-1]];
intro_scripts = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
	[
		[change_variable, id,"s_checkpasses",s_checkpasses+1],
		[change_variable, id,"s_eavesdropping",s_eavesdropping+1],
		[change_variable, id,"s_readlips",s_readlips+1],
		[change_variable, id,"s_glance",s_glance+1]
	],
];
create_textbox(intro_text,intro_speakers,intro_next_line,intro_scripts);

exit_text = [
"First day on the job. It wasn’t that bad, I suppose. Now, I only have to figure out who we’re looking for.",
[
	"That student. He’s too angry at the world to be any innocent.",
	"The obese man. He’s got some strange ideas."
],
"He does sound quite angry at the world.",
"He does look like he doesn’t want anything to do with strange people… even though he does watch some weird stuff.",
"...Right?",
[
	"Yes.",
	"Let’s think about this again."
],
"You don’t know what was up with that phone call. He looked pretty nervous.",
"That book he was reading… very strange “friend”, obtaining books from outside the country. But noone would be dumb enough to be associated with terrorists and openly speak against the state of things.",
"...Right?",
[
	"Yes.",
	"Let’s think about this again."
],
"YOU GOT HIM!",
"THE TERRORIST ESCAPED!",
"He does sound quite angry at the world.",
"He does look like he doesn’t want anything to do with strange people… even though he does watch some weird stuff.",
"You don’t know what was up with that phone call. He looked pretty nervous.",
"That book he was reading… very strange “friend”, obtaining books from outside the country. But noone would be dumb enough to be associated with terrorists and openly speak against the state of things.",
];
exit_speakers = [id,id,id,id,id,id,id,id,id,id,id,id,id,id,id,id];
exit_next_line = [1,[-1,-1],4,4,5,[11,1],8,8,9,[10,1],-1,-1,13,4,15,8];
exit_scripts = [-1,[[endCheckNpc4],[endCheckNpc5]],-1,-1,-1,[-1,-1],-1,-1,-1,[-1,-1],-1,-1,-1,-1,-1,-1];
