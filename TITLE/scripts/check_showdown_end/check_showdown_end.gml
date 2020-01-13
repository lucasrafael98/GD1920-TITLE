if((obj_player.l2c1_accusee1 == obj_npc_l2_5 or obj_player.l2c1_accusee1 == obj_npc_l2_6) or
	(obj_player.l2c1_accusee2 == obj_npc_l2_5 or obj_player.l2c1_accusee2 == obj_npc_l2_6)){
		room_goto(rm_9);
} else {
	room_goto(rm_8);
}