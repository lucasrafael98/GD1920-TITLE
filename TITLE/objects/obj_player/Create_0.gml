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

intro_text2 = [
		"It\'s been months.",
        "Grinding away at this job, slowly getting ever closer to the center of it all. From busting dumb small-time punks to this day. This might be the beginning of the end for my little detour into these conductor jobs.",
        "After the shit that\'s been going on in the war down south, the Institute of Stability decided to open the border for this train, evacuate some foreigners. As well as assholes with the right connections.",
        "Some of these people are part of the terrorist cell that I started busting oh-so long ago. In this carriage, I\'ve been told there\'s two of them. They\'re all separated, trying to get some support from associations up north.",
        "I was told I might be getting out of this conductor shithole and back into real cop work if I do things right here. Same as any other day, just gotta figure out every single detail of everyone\'s lives.",
        "They gave me a gun. Chekhov, nine mil. \"Self-defence\", they said. I\'m pretty unlikely to win on a one-versus-two,  but it\'s still nice to have.",
        "No big deal by now, I suppose."
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

intro_dialogue2 = [
	createDialogMap(0,intro_text2[0],id,1,[npc_move,obj_npc_l2_1]),
	createDialogMap(1,intro_text2[1],id,2,[npc_move,obj_npc_l2_2]),
	createDialogMap(2,intro_text2[2],id,3,[npc_move,obj_npc_l2_3]),
	createDialogMap(3,intro_text2[3],id,4,[npc_move,obj_npc_l2_4]),
	createDialogMap(4,intro_text2[4],id,5,[npc_move,obj_npc_l2_5]),
	createDialogMap(5,intro_text2[5],id,6,[npc_move,obj_npc_l2_6]),
	createDialogMap(6,intro_text2[6],id,-1,[launch_skill_board]),
];

if(room == rm_1) {create_textbox(intro_dialogue,id,"noonecares")};
if(room == rm_4) {create_textbox(intro_dialogue2,id,"noonecares2")};
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

exit_text2 = [
        "That\'s one carriage down. I have to signal the intervention team to take down the two people quietly. One question remains: who are they?",
        "But...",
        "Shit.",
        "We\'re almost at the border. I could just... wait things out as we cross it. Escape. Live a new life in a new country. Would anyone care? Would anyone... look for me outside? I don\'t give a fuck about this anymore.",
        "I\'m so close to becoming a real cop again. But... who\'s to say my efforts will be appreciated? That I won\'t be back in this situation in a year? Or that I won\'t be dead, should the capital be invaded in this shitstorm of a war?",
        "What should I do here? Should I keep going?", // 5
        ["Yes.","No."],
        "Who\'s the first terrorist, then?",
        ["Joseph Phillips.","Kristen Phillips.","Krysztof Kursztov.","James Sutherland.","Bryan Sutter.","Grace Windsor."],
        "He does seem on edge all the time. Might it be because he\'s about to do something?",
        "He does seem on edge all the time. Might it be because he\'s about to do something?", // 10
        "Well, he\'s locked in another carriage for trying to punch me. If that\'s not suspicious as hell, I don\'t know what is.",
        "... is he one of the terrorists, then?",
        ["Yes.","No."],
        "She doesn\'t seem suspicious at all. More like she was terrified or something.",
        "She doesn\'t seem suspicious at all. More like she was terrified or something.", // 15
        "PLACEHOLDER ARREST TEXT",
        "... is she one of the terrorists, then?",
        ["Yes.","No."],
        "He seemed a bit aloof, but might he have been nervous about doing something in this train?",
        "He seemed a bit aloof, but might he have been nervous about doing something in this train?", // 20
        "He seemed a bit aloof, but might he have been nervous about doing something in this train?",
        "He was extremely defensive about everything, blaming this country for everything that\'s happened to him.",
        "He was extremely defensive about everything, blaming this country for everything that\'s happened to him.",
        "He can\'t forget about his wife... He\'s pinning the blame for her suicide on Burnham for some reason. Seems like very accusatory evidence.",
        "... is he one of the terrorists, then?", // 25
        ["Yes.","No."],
        "I... I don\'t even know what\'s up with the guy, honestly.",
        "... but is he one of the terrorists?",
        ["Yes.","No."],
        "How the hell did he go from a beggar to working with one of the most powerful people in the country?", //30
        "How the hell did he go from a beggar to working with one of the most powerful people in the country?",
        "He seemed to have some suspicious business to attend to in Westburgh. What was up with that?",
        "... is he one of the terrorists?",
        ["Yes.","No."],
        "She is rich as hell, but what\'s she doing out of the country?", //35
        "She is rich as hell, but what\'s she doing out of the country?",
        "She was pretty adamant about not letting me know anything about any Windsor Enterprises business. I mean, private business is private, but might there be anything she\'s not telling me about the terrorists?",
        "... is she one of the terrorists?",
        ["Yes.","No."],
        "Who\'s the second terrorist, then?", //40
        ["Joseph Phillips.","Kristen Phillips.","Krysztof Kursztov.","James Sutherland.","Bryan Sutter.","Grace Windsor."],
        "He does seem on edge all the time. Might it be because he\'s about to do something?",
        "He does seem on edge all the time. Might it be because he\'s about to do something?",
        "Well, he\'s locked in the bathroom for trying to punch me. If that\'s not suspicious as hell, I don\'t know what is.", // 45
        "... is he one of the terrorists, then?",
        ["Yes.","No."],
        "She doesn\'t seem suspicious at all. More like she was terrified or something.",
        "She doesn\'t seem suspicious at all. More like she was terrified or something.",
        "She was probably a victim of her husband. Does that mean she\'s innocent, though?", // 50
        "... is she one of the terrorists, then?",
        ["Yes.","No."],
        "He seemed a bit aloof, but might he have been nervous about doing something in this train?",
        "He seemed a bit aloof, but might he have been nervous about doing something in this train?",
        "He seemed a bit aloof, but might he have been nervous about doing something in this train?", // 55
        "He was extremely defensive about everything, blaming this country for everything that\'s happened to him.",
        "He was extremely defensive about everything, blaming this country for everything that\'s happened to him.",
        "He can\'t forget about his wife... He\'s pinning the blame for her suicide on Burnham for some reason. Seems like very accusatory evidence.",
        "... is he one of the terrorists, then?",
        ["Yes.","No."], // 60
        "I... I don\'t even know what\'s up with the guy, honestly.",
        "... but is he one of the terrorists?",
        ["Yes.","No."],
        "How the hell did he go from a beggar to working with one of the most powerful people in the country?",
        "How the hell did he go from a beggar to working with one of the most powerful people in the country?", // 65
        "He seemed to have some suspicious business to attend to in Westburgh. What was up with that?",
        "... is he one of the terrorists?",
        ["Yes.","No."],
        "She is rich as hell, but what\'s she doing out of the country?",
        "She is rich as hell, but what\'s she doing out of the country?", // 70
        "She was pretty adamant about not letting me know anything about any Windsor Enterprises business. I mean, private business is private, but might there be anything she\'s not telling me about the terrorists?",
        "... is she one of the terrorists?",
        ["Yes.","No."],
		"I've already said this person was the terrorist. Let me think again...",
        "The intervention team must have entered the carriage already. I hope I got them both. If the terrorists are armed, some... issues... may arise.",
        "This train has impeccable isolation. I can barely hear any commotion in the carriage, which means the next one hasn\'t gotten wise to us. Better keep moving on." // 75
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

exit_dialogue2 = [
            createDialogMap(0,exit_text2[0],id,-1,[check_newlife_end]),
            createDialogMap(1,exit_text2[1],id,2,-1),
            createDialogMap(2,exit_text2[2],id,3,-1),
            createDialogMap(3,exit_text2[3],id,4,-1),
            createDialogMap(4,exit_text2[4],id,5,-1),
            createDialogMap(5,exit_text2[5],id,6,-1),
            createDialogMap(6,exit_text2[6],id,[7, -1],[-1, [start_newlife_end]]),
            createDialogMap(7,exit_text2[7],id,8,-1),
            createDialogMap(8,exit_text2[8],id,[-1,-1,-1,-1,-1,-1],[[endCheckNPC5L2, 8],[endCheckNPC2L2, 8],[endCheckNPC3L2, 8],[endCheckNPC4L2, 8],[endCheckNPC6L2, 8],[endCheckNPC1L2, 8]]),
            createDialogMap(9,exit_text2[9],id,11,-1),
            createDialogMap(10,exit_text2[10],id,12,-1),
            createDialogMap(11,exit_text2[11],id,12,-1),
            createDialogMap(12,exit_text2[12],id,13,-1),
            createDialogMap(13,exit_text2[13],id,[40,7],[[saveAccusation, obj_npc_l2_5], -1]),
            createDialogMap(14,exit_text2[14],id,16,-1),
            createDialogMap(15,exit_text2[15],id,17,-1),
            createDialogMap(16,exit_text2[16],id,17,-1),
            createDialogMap(17,exit_text2[17],id,18,-1),
            createDialogMap(18,exit_text2[18],id,[40,7],[[saveAccusation, obj_npc_l2_2],-1]),
            createDialogMap(19,exit_text2[19],id,22,-1),
            createDialogMap(20,exit_text2[20],id,24,-1),
            createDialogMap(21,exit_text2[21],id,25,-1),
            createDialogMap(22,exit_text2[22],id,24,-1),
            createDialogMap(23,exit_text2[23],id,25,-1),
            createDialogMap(24,exit_text2[24],id,25,-1),
            createDialogMap(25,exit_text2[25],id,26,-1),
            createDialogMap(26,exit_text2[26],id,[40,7],[[saveAccusation, obj_npc_l2_3],-1]),
            createDialogMap(27,exit_text2[27],id,28,-1),
            createDialogMap(28,exit_text2[28],id,29,-1),
            createDialogMap(29,exit_text2[29],id,[40,7],[[saveAccusation, obj_npc_l2_4],-1]),
            createDialogMap(30,exit_text2[30],id,32,-1),
            createDialogMap(31,exit_text2[31],id,33,-1),
            createDialogMap(32,exit_text2[32],id,33,-1),
            createDialogMap(33,exit_text2[33],id,34,-1),
            createDialogMap(34,exit_text2[34],id,[40,7],[[saveAccusation, obj_npc_l2_6],-1]),
            createDialogMap(35,exit_text2[35],id,37,-1),
            createDialogMap(36,exit_text2[36],id,38,-1),
            createDialogMap(37,exit_text2[37],id,38,-1),
            createDialogMap(38,exit_text2[38],id,39,-1),
            createDialogMap(39,exit_text2[39],id,[40,7],[[saveAccusation, obj_npc_l2_1],-1]),
            createDialogMap(40,exit_text2[40],id,41,-1),
            createDialogMap(41,exit_text2[41],id,[-1,-1,-1,-1,-1,-1],[[endCheckNPC5L2, 41],[endCheckNPC2L2, 41],[endCheckNPC3L2, 41],[endCheckNPC4L2, 41],[endCheckNPC6L2, 41],[endCheckNPC1L2, 41]]),
            createDialogMap(42,exit_text2[42],id,44,-1),
            createDialogMap(43,exit_text2[43],id,45,-1),
            createDialogMap(44,exit_text2[44],id,45,-1),
            createDialogMap(45,exit_text2[45],id,46,-1),
            createDialogMap(46,exit_text2[46],id,[-1,40],[[checkAndsaveAccusation, obj_npc_l2_5,46],-1]),
            createDialogMap(47,exit_text2[47],id,49,-1),
            createDialogMap(48,exit_text2[48],id,50,-1),
            createDialogMap(49,exit_text2[49],id,50,-1),
            createDialogMap(50,exit_text2[50],id,51,-1),
            createDialogMap(51,exit_text2[51],id,[-1,40],[[checkAndsaveAccusation, obj_npc_l2_2,51],-1]),
            createDialogMap(52,exit_text2[52],id,55,-1),
            createDialogMap(53,exit_text2[53],id,57,-1),
            createDialogMap(54,exit_text2[54],id,58,-1),
            createDialogMap(55,exit_text2[55],id,57,-1),
            createDialogMap(56,exit_text2[56],id,58,-1),
            createDialogMap(57,exit_text2[57],id,58,-1),
            createDialogMap(58,exit_text2[58],id,59,-1),
            createDialogMap(59,exit_text2[59],id,[-1,40],[[checkAndsaveAccusation, obj_npc_l2_3,59],-1]),
            createDialogMap(60,exit_text2[60],id,61,-1),
            createDialogMap(61,exit_text2[61],id,62,-1),
            createDialogMap(62,exit_text2[62],id,[-1,40],[[checkAndsaveAccusation, obj_npc_l2_4,62],-1]),
            createDialogMap(63,exit_text2[63],id,65,-1),
            createDialogMap(64,exit_text2[64],id,66,-1),
            createDialogMap(65,exit_text2[65],id,66,-1),
            createDialogMap(66,exit_text2[66],id,67,-1),
            createDialogMap(67,exit_text2[67],id,[-1,40],[[checkAndsaveAccusation, obj_npc_l2_6,67],-1]),
            createDialogMap(68,exit_text2[68],id,70,-1),
            createDialogMap(69,exit_text2[69],id,71,-1),
            createDialogMap(70,exit_text2[70],id,71,-1),
            createDialogMap(71,exit_text2[71],id,72,-1),
            createDialogMap(72,exit_text2[72],id,[-1,40],[[checkAndsaveAccusation, obj_npc_l2_1,72],-1]),
            createDialogMap(73,exit_text2[73],id,40,-1),
            createDialogMap(74,exit_text2[74],id,75,-1),
            createDialogMap(75,exit_text2[75],id,-1,[startCarriage2])
];

newlife_text = [
        "Free.",
        "Finally, free.",
        "When we crossed the border, I just jumped.  Train line wasn\'t moving fast enough to kill me. Got out in a pretty rough shape though.",
        "After a very hungry night out in the woods, I managed to walk into a small town in the middle of nowhere. Nice people, took me in and fixed me up. I\'ve been helping out in their farm for a couple of weeks. ",
        "No one\'s come looking. And I doubt they will. Nobody ever gave a fuck about me anyway."
];

newlife_dialogue = [
            createDialogMap(0,newlife_text[0],id,1,-1),
            createDialogMap(1,newlife_text[1],id,2,-1),
            createDialogMap(2,newlife_text[2],id,3,-1),
            createDialogMap(3,newlife_text[3],id,4,-1),
            createDialogMap(4,newlife_text[4],id,-1,-1)
];

smind_text = [
        "At what cost do we succumb and do the things they tell us to?",
        "I was quite successful after I got my promotion. Got into the Institute of Stability. Reached the point where I was one of those people that decided what was on a \"need to know\" basis. I saw some shit, but nothing as bad as that day.",
        "It\'s been... years. I\'ve done everything that was asked of me, but it gets to a point where you just can\'t take that shit. The drinking helped, well, until it didn\'t.",
        "I\'m probably gonna get evicted tomorrow. Can\'t even get myself out of my head, this shattered palace of decayed neurons, forming the rotting, dysfunctional web that used to be a human being. It\'s dark here."
];

smind_dialogue = [
            createDialogMap(0,smind_text[0],id,1,-1),
            createDialogMap(1,smind_text[1],id,2,-1),
            createDialogMap(2,smind_text[2],id,3,-1),
            createDialogMap(3,smind_text[3],id,-1,-1)
];

goodend_text = [
        "Sometimes, you\'ve just gotta say \"No.\"",
        "Took me a while to open my eyes. Well, at least it felt like a long time. I immediately saw Edwards lying on the floor, on top of a pool of blood. The intervention guys managed to get the terrorists thanks to me. I told them I got the leader. Thankfully they didn\'t notice his ID. We managed to get the location of the bombs, and disarmed them.",
        "I figured I wasn\'t wanted back home, and word got around that I saved everyone on that train. I never went back to Burnham. Got a nice, cozy desk job on Westburgh PD. Life is good."
];

goodend_dialogue = [
            createDialogMap(0,goodend_text[0],id,1,-1),
            createDialogMap(1,goodend_text[1],id,2,-1),
            createDialogMap(2,goodend_text[2],id,-1,-1)
];

poolblood_text = [
        "Took me a while to open my eyes. Found myself in a pool of blood of my own making. So much blood for a tiny little hole... I didn\'t find the right people. They must have distracted me, or shot me from behind. I failed. And now all evidence of this will be erased in the forthcoming blast.",
        "Maybe in another life, I would have been successful. Or should I have caved and done what was expected and wanted of me? I\'m too near death to think this properly through now, and I suppose it\'s pointless given the situation.",
        "It\'s so cold..."
];

poolblood_dialogue = [
            createDialogMap(0,poolblood_text[0],id,1,-1),
            createDialogMap(1,poolblood_text[1],id,2,-1),
            createDialogMap(2,poolblood_text[2],id,-1,-1)
];

showdown_text = [
        "A forty-year-old man with a groomed brown beard and a smug smile keeps staring at you. Eventually, an utterance escapes his lips. \"You\'re finally here. Took you long enough.\"",
        ["\"Who are you?\""],
        "He strokes his chin. \"Well, you\'re a conductor aren\'t you? I\'m sure you\'re used to getting everything out of someone\'s documents.\" He hands you his passport.",
        "This passport is invalid. Is this even a passport? There\'s so many pointless information here...",
        "Wait... You\'re so used to checking these damn things that, faced with a completely different paper, you can\'t even recognize it. \"Institute of Stability\". ",
        "... Fuck. What is he doing here?",
        "He\'s got a Level VIII IoS card? That\'s the highest level of clearance in the Institute of Stability! He must be one of ten people in the country with that.",
        "He\'s got a Level VIII IoS card? Doesn\'t ring a bell.",
        ["\"What the hell are you doing here?\""],
        "\"My job. And you\'re going to help me. Or at least, stay the fuck out of my way.\"",
        ["\"And what is \'your job\' supposed to be?\""],
        "He points at you, and then at himself. \"We... are going to blow up this train. Unless you feel like having a holy moral streak, in which case you\'ll be shot by my associates which you no doubt failed to catch on the last carriage, you useless fuck of a cop.\"",
        ["\"Pretty sure I caught them, asshole.\"","\"Wait... you\'re part of the terrorist association I\'ve been trying to catch this whole time?\""],
        "\"I doubt it. You were a useless cop. This whole playing around, looking and listening to people, it\'s  what the police makes the useless worst-of-the-worst trash they somehow employ do.\"",
        "\"More to say that your so-called \'terrorists\' are unknowingly a branch of the eye-oh-ess. This started out with me, but those idealistic, naive dumbfucks never got wise. This was never about revolution, it\'s about making the right moves to keep a stable country that way.\"",
        "\"I mean, what do you think that people are gonna do when this train is blown up? There won\'t be any more getting out of the country. Everyone stays here, no bad word gets out, no productive workers in the grand scheme of society are lost.\"",
        "\"You are going to help me with this, and you are going to get your promotion. You will do what is needed of you, without further question. Or you will be shot like the useless, meek animal that you are. There is no arguing here. Do you understand?\"",
        ["\"I can\'t do what you ask of me.\" Draw your weapon.", "\"I... I do. Let\'s begin.\""],
        "Wait... you better be goddamn sure about what you\'re gonna do. Are you sure about this?",
        ["Yes, I am.","No, I\'m not gonna kill all these innocent people. *Draw your weapon*"],
        "Time...",
        "...slows...",
        "...down.",
        "You feel a cocktail of blood and chemicals rushing through your body. This ain\'t a fight-or-flight; you've got nowhere to fly here.",
        "You can\'t even hear anything except for the noise inside your head.",
        "You can see your hands moving. And his as well.",
        "You\'re both drawing, but who\'s gonna be faster?",
        "You won\'t know until your ears start to ring from the shot, and you finally have the courage to open your eyes and look at what you\'ve done.",
        "Here goes nothing."
];

showdown_dialogue = [
            createDialogMap(0,showdown_text[0],id,1,-1),
            createDialogMap(1,showdown_text[1],id,[2],[-1]),
            createDialogMap(2,showdown_text[2],id,3,[skillBranch_showdown, id, 2, 1, 999, 3, 3]),
            createDialogMap(3,showdown_text[3],id,4,[skillBranch_showdown, id, 3, 1, -999, 4, 4]),
            createDialogMap(4,showdown_text[4],id,5,[changeMusic]),
            createDialogMap(5,showdown_text[5],id,-1,[skillBranch_showdown, id, 5, 1, 8, 6, 7]),
            createDialogMap(6,showdown_text[6],id,8,[changeMusic]),
            createDialogMap(7,showdown_text[7],id,8,[changeMusic]),
            createDialogMap(8,showdown_text[8],id,[9],[-1]),
            createDialogMap(9,showdown_text[9],id,10,[changeMusic]),
            createDialogMap(10,showdown_text[10],id,[11],[-1]),
            createDialogMap(11,showdown_text[11],id,12,[changeMusic]),
            createDialogMap(12,showdown_text[12],id,[13,14],[-1,[changeMusic]]),
            createDialogMap(13,showdown_text[13],id,12,-1),
            createDialogMap(14,showdown_text[14],id,15,[changeMusic]),
            createDialogMap(15,showdown_text[15],id,16,-1),
            createDialogMap(16,showdown_text[16],id,17,-1),
            createDialogMap(17,showdown_text[17],id,[20,18],[[changeMusic],-1]),
            createDialogMap(18,showdown_text[18],id,19,-1),
            createDialogMap(19,showdown_text[19],id,[-1,20],[[start_smind_end],[changeMusic]]),
            createDialogMap(20,showdown_text[20],id,21,-1),
            createDialogMap(21,showdown_text[21],id,22,[changeMusic]),
            createDialogMap(22,showdown_text[22],id,23,-1),
            createDialogMap(23,showdown_text[23],id,24,[changeMusic]),
            createDialogMap(24,showdown_text[24],id,25,-1),
            createDialogMap(25,showdown_text[25],id,26,[changeMusic]),
            createDialogMap(26,showdown_text[26],id,27,-1),
            createDialogMap(27,showdown_text[27],id,28,[changeMusic]),
            createDialogMap(28,showdown_text[28],id,-1,[check_showdown_end])
];

if(room == rm_3) {create_textbox(exit_dialogue,id,"noonecares")};
else if(room == rm_6) {
	create_textbox(exit_dialogue2,id,"noonecares")
};
else if(room == rm_7) {create_textbox(newlife_dialogue,id,"noonecares")};
else if(room == rm_8) {create_textbox(poolblood_dialogue,id,"noonecares")};
else if(room == rm_9) {create_textbox(goodend_dialogue,id,"noonecares")};
else if(room == rm_11) {create_textbox(showdown_dialogue,id,"noonecares")};
else if(room == rm_13) {create_textbox(smind_dialogue,id,"noonecares")};