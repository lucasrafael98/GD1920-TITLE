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
	createDialogMap(0,intro_text[0],id,1,-1),
	createDialogMap(1,intro_text[1],id,2,-1),
	createDialogMap(2,intro_text[2],id,3,-1),
	createDialogMap(3,intro_text[3],id,4,-1),
	createDialogMap(4,intro_text[4],id,5,-1),
	createDialogMap(5,intro_text[5],id,6,-1),
	createDialogMap(6,intro_text[6],id,7,-1),
	createDialogMap(7,intro_text[7],id,-1,[launch_skill_board]),
];
if(room == rm_1) {create_textbox(intro_dialogue)};

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

if(room == rm_3) {create_textbox(exit_dialogue)};