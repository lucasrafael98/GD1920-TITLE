var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
if(argument[0] == 8){
	if(obj_npc_l2_1.cpass_success and obj_npc_l2_1.eavesd_success){
		temp_next_line[8] = [-1,-1,-1,-1,-1,35];
	} else if(!obj_npc_l2_1.cpass_success and obj_npc_l2_1.eavesd_success){
		temp_next_line[8] = [-1,-1,-1,-1,-1,37];
	} else if(obj_npc_l2_1.cpass_success and !obj_npc_l2_1.eavesd_success){
		temp_next_line[8] = [-1,-1,-1,-1,-1,36];
	} else if(!obj_npc_l2_1.cpass_success and !obj_npc_l2_1.eavesd_success){
		temp_next_line[8] = [-1,-1,-1,-1,-1,38];
	}
} else if (argument[0] == 41){
	if(obj_npc_l2_1.cpass_success and obj_npc_l2_1.eavesd_success){
		temp_next_line[41] = [-1,-1,-1,-1,-1,69];
	} else if(!obj_npc_l2_1.cpass_success and obj_npc_l2_1.eavesd_success){
		temp_next_line[41] = [-1,-1,-1,-1,-1,71];
	} else if(obj_npc_l2_1.cpass_success and !obj_npc_l2_1.eavesd_success){
		temp_next_line[41] = [-1,-1,-1,-1,-1,70];
	} else if(!obj_npc_l2_1.cpass_success and !obj_npc_l2_1.eavesd_success){
		temp_next_line[41] = [-1,-1,-1,-1,-1,72];
	}
}
obj_text.next_line = temp_next_line;