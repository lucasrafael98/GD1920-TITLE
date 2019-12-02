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
a_suspicion = 1;

time = 1;

portrait_index = 0;
voice = snd_sound0;
name = "Player";
text = ["Default text"];
active_tbox = noone;

intro_text = [
"What a stupid job.",

"\"Go to the force\", they said. \"You\'ll investigate important things\", they said." +" Meanwhile, I\'m drafted into being undercover... as a fucking conductor? God damn, this job was a mistake.",

"You know, I tried being a decent cop but it\'s impossible. The \"best\" cops, they\'re just the ones that have friends or family higher above,"+" up in the Institute of Stability. It\'s just impossible to compete when every single thing in this damn job is stacked against you.",

"Guess it\'s better than being your average Joe. Or unemployed. Or homeless. Or dead. The job starts in a few minutes."+" I think I have to check some passes or something, but I should probably try to do this properly. Chief gave me a few pointers,"+" so I should probably read them before I start..",

"\"So you got forced into the conductor jobs? What a mess. Honestly, I don\'t even know who came up with this, what a terrible goddamn idea."+" Public paranoia is at an all-time high, and the powers that be still want these insane operations happening?",

"Anyhow, I know you tried your best but sometimes all you got just ain\'t enough in this life. Still, you gotta keep playing with the cards you\'re dealt,"+ " so might as well make the most out of it. See, this conductor job, it ain\'t just about taking passes and checking if someone\'s the bad guy. ",

"Sometimes you\'ve got to intrude in people\'s lives to get the good stuff. After you check their passes, there\'s probably a lot of time until new passengers"+" come aboard, time which you must seize. People sometimes start talking, so it\'s up to you to hear them. You never know what might be said openly. If someone\'s"+" whispering though, you\'ve got to try and read their lips. It\'s not gonna be easy, though. If you\'re not bad, you\'ll visualize a complete sentence where the"+" words seem to be jumbled, but if you haven\'t got practice, both the sentence order and the words are going to be switched.",

"Sometimes people don\'t have much to discuss, and they\'re just checking something on their phones or reading. Don\'t stare like some sort of weirdo at their "+"stuff or they\'ll catch on within seconds. Just... glance at it, and try to keep what you just saw in your memory. I know it\'s strange, and it ain\'t easy if you\'re"+" not too observant, but you\'ll get better over time.",

"Anyway, enough with long-winded explanations. We caught word of someone initiated into this new organization. They won\'t have much to tell, but anything goes."+" Seems like we can never find anything about them, but even the most tightly knit group has a loose end or two. We\'ve been told he\'s a bit on the large side and"+" he takes this bus daily, though we don\'t know when he gets in. ",

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


intro_dialogue = [
	createDialogMap(0,intro_text[0],id,1,-1),
	createDialogMap(1,intro_text[1],id,2,-1),
	createDialogMap(2,intro_text[2],id,3,-1),
	createDialogMap(3,intro_text[3],id,4,-1),
	createDialogMap(4,intro_text[4],id,5,-1),
	createDialogMap(5,intro_text[5],id,6,-1),
	createDialogMap(6,intro_text[6],id,7,-1),
	createDialogMap(7,intro_text[7],id,8,-1),
	createDialogMap(8,intro_text[8],id,9,-1),
	createDialogMap(9,intro_text[9],id,10,-1),
	createDialogMap(10,intro_text[10],id,11,-1),
	createDialogMap(11,intro_text[11],id,12,-1),
	createDialogMap(12,intro_text[12],id,[-1,-1,-1,-1],[
														[change_variable, id,"s_checkpasses",s_checkpasses+1],
														[change_variable, id,"s_eavesdropping",s_eavesdropping+1],
														[change_variable, id,"s_readlips",s_readlips+1],
														[change_variable, id,"s_glance",s_glance+1]
												      ]),
];
create_textbox(intro_dialogue);

exit_text = [
"First day on the job. It wasn\'t that bad, I suppose. Now, I only have to figure out who we\'re looking for.",
[
	"That student. He\'s too angry at the world to be any innocent.",
	"The obese man. He\'s got some strange ideas."
],

"He does sound quite angry at the world.",

"He does look like he doesn\'t want anything to do with strange people... even though he does watch some weird stuff.",

"...Right?",

[
	"Yes.",
	"Let\'s think about this again."
],

"You don\'t know what was up with that phone call. He looked pretty nervous.",

"That book he was reading... very strange \"friend\", obtaining books from outside the country. But noone would be dumb enough to be associated with terrorists and openly speak against the state of things.",

"...Right?",

[
	"Yes.",
	"Let\'s think about this again."
],

"The die is cast. The obese man will be intercepted and arrest by the police later today. Until then, all you can do is wait and hope you did the right thing.  ...It\'s been hours since you left the bus. The obese man has been intercepted and interrogated. How surprising. You didn\'t expect that someone colluding with terrorists would be... this obvious. The police didn\'t get a whole lot of information from him, and they concluded that he was probably viewed as somewhat disposable, so no one\'s going to look at you the wrong way on the next job.",

"The die is cast. The student will be intercepted by the police later today. Until then, all you can do is wait and hope you did the right thing. ... It\'s been hours since you left the bus. The student has been intercepted and interrogated. You made the wrong choice, and the terrorists got wind of this arrest. They will be more wary of you next time.",

"He does sound quite angry at the world.",

"He does look like he doesn\'t want anything to do with strange people... even though he does watch some weird stuff.",

"You don\'t know what was up with that phone call. He looked pretty nervous.",

"That book he was reading... very strange \"friend\", obtaining books from outside the country. But noone would be dumb enough to be associated with terrorists and openly speak against the state of things.",
];

exit_dialogue = [
	createDialogMap(0,exit_text[0],id,1,-1),
	createDialogMap(1,exit_text[1],id,[-1,-1],[[endCheckNpc4],[endCheckNpc5]]),
	createDialogMap(2,exit_text[2],id,4,-1),
	createDialogMap(3,exit_text[3],id,4,-1),
	createDialogMap(4,exit_text[4],id,5,-1),
	createDialogMap(5,exit_text[5],id,[11,1],[-1,-1]),
	createDialogMap(6,exit_text[6],id,8,-1),
	createDialogMap(7,exit_text[7],id,8,-1),
	createDialogMap(8,exit_text[8],id,9,-1),
	createDialogMap(9,exit_text[9],id,[10,1],[-1,-1]),
	createDialogMap(10,exit_text[10],id,-1,-1),
	createDialogMap(11,exit_text[11],id,-1,-1),
	createDialogMap(11,exit_text[11],id,13,-1),
	createDialogMap(11,exit_text[11],id,4,-1),
	createDialogMap(11,exit_text[11],id,15,-1),
	createDialogMap(11,exit_text[11],id,8,-1)
];