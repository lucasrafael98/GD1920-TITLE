var temp_next_line = get_dialogue_part(obj_player.dialogue,"next_part");
if(obj_npc3.eavesd_success && obj_npc3.glance_success && obj_npc3.relips_success){
	temp_next_line[1] = [-1,-1,18];
} else if(obj_npc3.eavesd_success && !obj_npc3.glance_success && obj_npc3.relips_success){
	temp_next_line[1] = [-1,-1,19];
} else if(obj_npc3.eavesd_success && !obj_npc3.glance_success && !obj_npc3.relips_success){
	temp_next_line[1] = [-1,-1,20];
} else if(!obj_npc3.eavesd_success && obj_npc3.glance_success && obj_npc3.relips_success){
	temp_next_line[1] = [-1,-1,21];
} else if(obj_npc3.eavesd_success && obj_npc3.glance_success && !obj_npc3.relips_success){
	temp_next_line[1] = [-1,-1,22];
} else if(!obj_npc3.eavesd_success && !obj_npc3.glance_success && obj_npc3.relips_success){
	temp_next_line[1] = [-1,-1,23];
} else if(!obj_npc3.eavesd_success && !obj_npc3.glance_success && !obj_npc3.relips_success){
	temp_next_line[1] = [-1,-1,24];
}
obj_text.next_line = temp_next_line;