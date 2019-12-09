var temp_next_line = get_dialogue_part(obj_player.exit_dialogue,"next_part");
if(global.npc3_eavesd_success && global.npc3_glance_success && global.npc3_relips_success){
	temp_next_line[1] = [-1,-1,18];
} else if(global.npc3_eavesd_success && !global.npc3_glance_success && global.npc3_relips_success){
	temp_next_line[1] = [-1,-1,19];
} else if(global.npc3_eavesd_success && !global.npc3_glance_success && !global.npc3_relips_success){
	temp_next_line[1] = [-1,-1,20];
} else if(!global.npc3_eavesd_success && global.npc3_glance_success && global.npc3_relips_success){
	temp_next_line[1] = [-1,-1,21];
} else if(global.npc3_eavesd_success && global.npc3_glance_success && !global.npc3_relips_success){
	temp_next_line[1] = [-1,-1,22];
} else if(!global.npc3_eavesd_success && !global.npc3_glance_success && global.npc3_relips_success){
	temp_next_line[1] = [-1,-1,23];
} else if(!global.npc3_eavesd_success && !global.npc3_glance_success && !global.npc3_relips_success){
	temp_next_line[1] = [-1,-1,24];
}
obj_text.next_line = temp_next_line;