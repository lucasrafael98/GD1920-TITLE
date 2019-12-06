//READ
event0dc = 2;
canInteract = true;
text = [
    "The incredibly fat man seems to be taking a phone call, a serious one from the look on his face. He seems to be whispering, so you\'d need to get way too close to hear him. You try and read his lips...",

	[
		"Try to read his lips.",
		"Leave him alone."
	], 
	
	"You\'re a rookie, but you\'ve got some practice. You can pick up on some things. \"mi dagl I njeodi uyo\"",
	
	"You\'re not really trained in this. You can barely understand: \"uyo njeodi dagl I mi\" ",
	
	[
		"\"What seems to be the problem?\" ",
		 "I should probably just ignore this."
	],
	
	"You startle him. His hands are shaking.\n \"H-hey! Nothing\'s wrong here. Did anyone ask you anything, man? Get off my back.\" \nThe other passengers exchange looks. Why would a conductor be intruding on people\'s calls?",
	
];
speakers = [id, obj_player,obj_player, obj_player,obj_player,id];
next_line = [0, [-1,-1], 4, 4, [5,-1], -1];
scripts = [-1,[[rlips_npc5],[startNPC5Event1]],-1,-1,[[player_increase_suspicion],[startNPC5Event1]],[activateReadLips2]];
dialogue = [
	createDialogMap(0,text[0],id,1,-1),
	createDialogMap(1,text[1],obj_player,[-1,-1],[[rlips_npc5],[startNPC5Event1]]),
	createDialogMap(2,text[2],obj_player,4,-1),
	createDialogMap(3,text[3],obj_player,4,-1),
	createDialogMap(4,text[4],obj_player,[5,-1],[[player_increase_suspicion],[startNPC5Event1]]),
	createDialogMap(5,text[5],id,-1,[activateReadLips2]),
];