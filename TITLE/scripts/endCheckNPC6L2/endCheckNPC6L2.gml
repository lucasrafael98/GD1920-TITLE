var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
if(argument[0] == 8){
	if(obj_npc_l2_6.cpass_success and obj_npc_l2_6.eavesd_success){
		temp_next_line[8] = [-1,-1,-1,-1,30,-1];
	} else if(!obj_npc_l2_6.cpass_success and obj_npc_l2_6.eavesd_success){
		temp_next_line[8] = [-1,-1,-1,-1,32,-1];
	} else if(obj_npc_l2_6.cpass_success and !obj_npc_l2_6.eavesd_success){
		temp_next_line[8] = [-1,-1,-1,-1,31,-1];
	} else if(!obj_npc_l2_6.cpass_success and !obj_npc_l2_6.eavesd_success){
		temp_next_line[8] = [-1,-1,-1,-1,33,-1];
	}
} else if (argument[0] == 41){
	if(obj_npc_l2_6.cpass_success and obj_npc_l2_6.eavesd_success){
		temp_next_line[41] = [-1,-1,-1,-1,64,-1];
	} else if(!obj_npc_l2_6.cpass_success and obj_npc_l2_6.eavesd_success){
		temp_next_line[41] = [-1,-1,-1,-1,66,-1];
	} else if(obj_npc_l2_6.cpass_success and !obj_npc_l2_6.eavesd_success){
		temp_next_line[41] = [-1,-1,-1,-1,65,-1];
	} else if(!obj_npc_l2_6.cpass_success and !obj_npc_l2_6.eavesd_success){
		temp_next_line[41] = [-1,-1,-1,-1,67,-1];
	}
}
obj_text.next_line = temp_next_line;