if(obj_player.eaves_i and obj_player.glance_npc4){
	obj_player.exit_next_line[1] = [12,-1];
} else if(obj_player.eaves_i){
	obj_player.exit_next_line[1] = [2,-1];
} else if(obj_player.glance_npc4){
	obj_player.exit_next_line[1] = [3,-1];
} else{
	obj_player.exit_next_line[1] = [4,-1];
}
obj_text.next_line = obj_player.exit_next_line;