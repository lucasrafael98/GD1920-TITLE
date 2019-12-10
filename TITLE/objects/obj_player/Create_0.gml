/// @description Insert description here
// You can write your code in this editor
//image_speed = 0;
//walkSpeed = 3.5;

w_spd = 1;
n_spd = 2;
r_spd = 3;
spd = n_spd;

radius = 16; 

s_eavesdropping = global.eavesdropping;
s_readlips = global.readlips;
s_glance = global.glance;
s_checkpasses = global.checkpasses;

eaves_i = false;
glance_npc4 = false;
glance_npc5 = false;
readlips_npc5 = true;
a_suspicion = 0;
a_susp_mod = 0;

portrait_index = 0;
voice = snd_sound0;
name = "Player";
text = ["Default text"];
active_tbox = noone;

intro_text = [
"I never expected this.",

"After years of trying my hardest working in the force, it just seems like you can never do enough.",

"The \"best\" cops, they\'re just the ones with friends or family higher up, in the Institute of Stability. It\'s impossible to compete when everything in this damn job is stacked against you.",

"But I suppose it\'s better than being your average Joe. Or unemployed. Or homeless. Or dead. Since I don\'t have any influence, I was sent to these new conductor jobs. ",

"I don\'t understand the point of trying to find out about this new terrorist cell from checking people\'s passes disguised as a conductor, but I guess all I can do is try my best. Yet again. ",

"Well, I got this letter from chief, as well as this journal. I should probably read it before I start.",

"I should probably focus on what I'm good at when I start.",

"What... am I good at?"

];


intro_dialogue = [
	createDialogMap(0,intro_text[0],id,1,[npc_move,obj_npc1]),
	createDialogMap(1,intro_text[1],id,2,-1),
	createDialogMap(2,intro_text[2],id,3,[npc_move,obj_npc2]),
	createDialogMap(3,intro_text[3],id,4,-1),
	createDialogMap(4,intro_text[4],id,5,[npc_move,obj_npc3]),
	createDialogMap(5,intro_text[5],id,6,[npc_move,obj_npc4]),
	createDialogMap(6,intro_text[6],id,7,[npc_move,obj_npc5]),
	createDialogMap(7,intro_text[7],id,-1,[launch_skill_board]),
];
if(room == rm_1) {create_textbox(intro_dialogue,id,"noonecares")};

exit_text = [
	"First day on the job. It wasn\'t that bad, I suppose. Now, I only have to figure out who we\'re looking for.",
	[
		"That student, Daniel Torres. He keeps complaining that something has to change.",
		"The obese man, Ethan Maciejewski. He\'s a weird guy, with some strange friends.",
		"The old man, John Davies. He seems suspicious."
	],
	"Torres keeps saying that something has to change.",
	"Torres keeps saying that something has to change.",
	"Torres keeps saying that something has to change.",
	"He seems paranoid, asking if everyone is with the government.",
	"He seems paranoid, asking if everyone is with the government.",
	"He does look like he doesn\'t want anything to do with strange people... even though he does watch some weird stuff.",
	"...Right?",
	[
		"Yes.",
		"Let\'s think about this again."
	],
	"I don\'t know what was up with that phone call. He looked pretty nervous.",
	"I don\'t know what was up with that phone call. He looked pretty nervous.",
	"I don\'t know what was up with that phone call. He looked pretty nervous.",
	"Was he going to work or not? I wasn\'t sure...",
	"Was he going to work or not? I wasn\'t sure...",
	"That book he was reading... very strange \"friend\", obtaining books from outside the country. But noone would be dumb enough to be associated with terrorists and openly speak against the state of things.",
	"...Right?",
	[
		"Yes.",
		"Let\'s think about this again."
	],
	"He seemed like a bit of an ass, but he just wanted \"his\" seat for some reason.",
	"He seemed like a bit of an ass, but he just wanted \"his\" seat for some reason.",
	"He seemed like a bit of an ass, but he just wanted \"his\" seat for some reason.",
	"Placeholder for RL",
	"Placeholder for RL",
	"He seemed to be supporting the government. I\'m not sure if agree, but why would a terrorist be so openly in support of the current state of things?",
	"...Right?",
	[
		"Yes.",
		"Let\'s think about this again."
	],
	"The die is cast. The obese man will be intercepted and arrest by the police later today. Until then, all you can do is wait and hope you did the right thing.",  
	"...It\'s been hours since you left the bus. The obese man has been intercepted and interrogated. You... made the right choice here.",
	"How surprising. You didn\'t expect that someone colluding with terrorists would be... this obvious, but he\'s probably not the sharpest tool in the shed.",
	"The police didn\'t get a whole lot of information from him, and they concluded that he was probably viewed as somewhat disposable, so no one\'s going to look at you the wrong way on the next job.",
	"The die is cast. The student will be intercepted by the police later today. Until then, all you can do is wait and hope you did the right thing.",
	"... It\'s been hours since you left the bus. The student has been intercepted and interrogated. You made the wrong choice, and the terrorists got wind of this arrest. They will be more wary of you next time.",
	"The die is cast. The old man will be intercepted by the police later today. Until then, all you can do is wait and hope you did the right thing.",
	"... It\'s been hours since you left the bus. The old man has been intercepted and interrogated. You made the wrong choice, and the terrorists got wind of this arrest. They will be more wary of you next time.",
];

exit_dialogue = [
	createDialogMap(0,exit_text[0],id,1,-1),
	createDialogMap(1,exit_text[1],id,[-1,-1,-1],[[endCheckNpc4],[endCheckNpc5],[endCheckNpc3]]),
	createDialogMap(2,exit_text[2],id,5,-1),
	createDialogMap(3,exit_text[3],id,7,-1),
	createDialogMap(4,exit_text[4],id,8,-1),
	createDialogMap(5,exit_text[5],id,7,-1),
	createDialogMap(6,exit_text[6],id,8,-1),
	createDialogMap(7,exit_text[7],id,8,-1),
	createDialogMap(8,exit_text[8],id,9,-1),
	createDialogMap(9,exit_text[9],id,[30,1],[-1,-1]),
	createDialogMap(10,exit_text[10],id,13,-1),
	createDialogMap(11,exit_text[11],id,15,-1),
	createDialogMap(12,exit_text[12],id,16,-1),
	createDialogMap(13,exit_text[13],id,15,-1),
	createDialogMap(14,exit_text[14],id,16,-1),
	createDialogMap(15,exit_text[15],id,16,-1),
	createDialogMap(16,exit_text[16],id,17,-1),
	createDialogMap(17,exit_text[17],id,[26,1],[-1,-1]),
	createDialogMap(18,exit_text[18],id,21,-1),
	createDialogMap(19,exit_text[19],id,23,-1),
	createDialogMap(20,exit_text[20],id,24,-1),
	createDialogMap(21,exit_text[21],id,23,-1),
	createDialogMap(22,exit_text[22],id,24,-1),
	createDialogMap(23,exit_text[23],id,24,-1),
	createDialogMap(24,exit_text[24],id,25,-1),
	createDialogMap(25,exit_text[25],id,[32,1],[-1,-1]),
	createDialogMap(26,exit_text[26],id,27,[goodEndMusic]),
	createDialogMap(27,exit_text[27],id,28,-1),
	createDialogMap(28,exit_text[28],id,29,-1),
	createDialogMap(29,exit_text[29],id,-1,-1),
	createDialogMap(30,exit_text[30],id,31,[badEndMusic]),
	createDialogMap(31,exit_text[31],id,-1,-1),
	createDialogMap(32,exit_text[32],id,33,[badEndMusic]),
	createDialogMap(33,exit_text[33],id,-1,-1),
];

if(room == rm_3) {create_textbox(exit_dialogue,id,"noonecares")};