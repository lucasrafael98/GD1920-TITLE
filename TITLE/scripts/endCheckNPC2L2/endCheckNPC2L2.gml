var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
if(argument[0] == 8){
	if(obj_npc_l2_2.arrest_success){
		temp_next_line[8] = [-1,14,-1,-1,-1,-1];
	} else {
		temp_next_line[8] = [-1,15,-1,-1,-1,-1];
	}
} else if (argument[0] == 41){
	if(obj_npc_l2_2.arrest_success){
		temp_next_line[41] = [-1,48,-1,-1,-1,-1];
	} else {
		temp_next_line[41] = [-1,49,-1,-1,-1,-1];
	}
}
obj_text.next_line = temp_next_line;