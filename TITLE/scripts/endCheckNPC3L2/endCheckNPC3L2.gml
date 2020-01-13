var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
if(argument[0] == 8){
	if(obj_npc_l2_3.rlips_success and obj_npc_l2_3.glance_success){
		temp_next_line[8] = [-1,-1,19,-1,-1,-1];
	} else if(!obj_npc_l2_3.rlips_success and obj_npc_l2_3.glance_success){
		temp_next_line[8] = [-1,-1,20,-1,-1,-1];
	} else if(obj_npc_l2_3.rlips_success and !obj_npc_l2_3.glance_success){
		temp_next_line[8] = [-1,-1,23,-1,-1,-1];
	} else if(!obj_npc_l2_3.rlips_success and !obj_npc_l2_3.glance_success){
		temp_next_line[8] = [-1,-1,21,-1,-1,-1];
	}
} else if (argument[0] == 41){
	if(obj_npc_l2_3.rlips_success and obj_npc_l2_3.glance_success){
		temp_next_line[41] = [-1,-1,53,-1,-1,-1];
	} else if(!obj_npc_l2_3.rlips_success and obj_npc_l2_3.glance_success){
		temp_next_line[41] = [-1,-1,54,-1,-1,-1];
	} else if(obj_npc_l2_3.rlips_success and !obj_npc_l2_3.glance_success){
		temp_next_line[41] = [-1,-1,57,-1,-1,-1];
	} else if(!obj_npc_l2_3.rlips_success and !obj_npc_l2_3.glance_success){
		temp_next_line[41] = [-1,-1,55,-1,-1,-1];
	}
}
obj_text.next_line = temp_next_line;