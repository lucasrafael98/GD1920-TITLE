var temp_next_line = get_dialogue_part(obj_player.dialogue,"next_part");
if(obj_npc5.eavesd_success && obj_npc5.glance_success && obj_npc5.relips_success){
	temp_next_line[1] = [-1,10,-1];
} else if(obj_npc5.eavesd_success && !obj_npc5.glance_success && obj_npc5.relips_success){
	temp_next_line[1] = [-1,11,-1];
} else if(obj_npc5.eavesd_success && !obj_npc5.glance_success && !obj_npc5.relips_success){
	temp_next_line[1] = [-1,12,-1];
} else if(!obj_npc5.eavesd_success && obj_npc5.glance_success && obj_npc5.relips_success){
	temp_next_line[1] = [-1,13,-1];
} else if(obj_npc5.eavesd_success && obj_npc5.glance_success && !obj_npc5.relips_success){
	temp_next_line[1] = [-1,14,-1];
} else if(!obj_npc5.eavesd_success && !obj_npc5.glance_success && obj_npc5.relips_success){
	temp_next_line[1] = [-1,15,-1];
} else if(!obj_npc5.eavesd_success && !obj_npc5.glance_success && !obj_npc5.relips_success){
	temp_next_line[1] = [-1,16,-1];
}
obj_text.next_line = temp_next_line;