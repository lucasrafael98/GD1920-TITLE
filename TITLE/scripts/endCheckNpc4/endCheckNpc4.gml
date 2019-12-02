var temp_next_line = get_dialogue_part(obj_player.dialogue,"next_part");
if(obj_player.eaves_i and obj_player.glance_npc4){
	temp_next_line[1] = [12,-1];
} else if(obj_player.eaves_i){
	temp_next_line[1] = [2,-1];
} else if(obj_player.glance_npc4){
	temp_next_line[1] = [3,-1];
} else{
	temp_next_line[1] = [4,-1];
}
obj_text.next_line = temp_next_line;