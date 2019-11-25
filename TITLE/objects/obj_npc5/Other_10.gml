/*image_speed = 1;
path_start(npc5_enter, 2, path_action_stop, false);*/

canInteract = true;
if (skillcheck(4,2)) {
   
text = [
	
    "The incredibly fat man seems to be taking a phone call, a serious one from the look on his face. He seems to be whispering, so you\'d need to get way too close to hear him. You try and read his lips...",

	[
		"[Read Lips]"
	], 
	
	"You\'re a rookie, but you\'ve got some practice. You can pick up on some things. \"mi dagl I njeodi uyo\"",

	[
		"\"What seems to be the problem?\" ",
		 "I should probably just ignore this."
	],
	"You startle him. His hands are shaking.\n \"H-hey! Nothing\'s wrong here. Did anyone ask you anything, man? Get off my back.\" \nThe other passengers exchange looks. Why would a conductor be intruding on people\'s calls?",
	
];
speakers = [id, obj_player,obj_player, obj_player,id,id];


next_line = [0, [2], 3, [4,-1], -1];
scripts = [-1,[-1],-1,[[player_increase_suspicion],[stopHighlight, id]],[activateReadLips, id]];
}

else {


  text = [
	
    "The incredibly fat man seems to be taking a phone call, a serious one from the look on his face. He seems to be whispering, so you\'d need to get way too close to hear him. You try and read his lips...",

	[
		"[Read Lips]"
	], 
	
    "But you\'re not really trained in this. You can barely understand: \"uyo njeodi dagl I mi\" ",

	[
		"\"What seems to be the problem?\" ",
		 "I should probably just ignore this."
	],
	"You startle him. His hands are shaking.\n \"H-hey! Nothing\'s wrong here. Did anyone ask you anything, man? Get off my back.\" \nThe other passengers exchange looks. Why would a conductor be intruding on people\'s calls?",
	
];
speakers = [id, obj_player,obj_player, obj_player,id,id];
next_line = [0, [2], 3, [4,-1], -1];
scripts = [-1,[-1],-1,[[player_increase_suspicion],[startNPC5Event1]],[activateReadLips2]];

}