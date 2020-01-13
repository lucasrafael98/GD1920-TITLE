var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
if(argument[0] == 8){
	if(obj_npc_l2_1.arrest_success and obj_npc_l2_1.eavesd_success){
		temp_next_line[8] = [9,-1,-1,-1,-1,-1];
	} else if(!obj_npc_l2_1.arrest_success and obj_npc_l2_1.eavesd_success){
		temp_next_line[8] = [11,-1,-1,-1,-1,-1];
	} else if(obj_npc_l2_1.arrest_success and !obj_npc_l2_1.eavesd_success){
		temp_next_line[8] = [10,-1,-1,-1,-1,-1];
	} else if(!obj_npc_l2_1.arrest_success and !obj_npc_l2_1.eavesd_success){
		temp_next_line[8] = [12,-1,-1,-1,-1,-1];
	}
} else if (argument[0] == 41){
	if(obj_npc_l2_1.arrest_success and obj_npc_l2_1.eavesd_success){
		temp_next_line[41] = [43,-1,-1,-1,-1,-1];
	} else if(!obj_npc_l2_1.arrest_success and obj_npc_l2_1.eavesd_success){
		temp_next_line[41] = [45,-1,-1,-1,-1,-1];
	} else if(obj_npc_l2_1.arrest_success and !obj_npc_l2_1.eavesd_success){
		temp_next_line[41] = [44,-1,-1,-1,-1,-1];
	} else if(!obj_npc_l2_1.arrest_success and !obj_npc_l2_1.eavesd_success){
		temp_next_line[41] = [46,-1,-1,-1,-1,-1];
	}
}
obj_text.next_line = temp_next_line;