var temp_next_line = get_dialogue_part(obj_player.exit_dialogue,"next_part");
if(global.npc4_eavesd_success && global.npc4_glance_success && global.npc4_relips_success){
	temp_next_line[1] = [2,-1,-1];
} else if(global.npc4_eavesd_success && !global.npc4_glance_success && global.npc4_relips_success){
	temp_next_line[1] = [3,-1,-1];
} else if(global.npc4_eavesd_success && !global.npc4_glance_success && !global.npc4_relips_success){
	temp_next_line[1] = [4,-1,-1];
} else if(!global.npc4_eavesd_success && global.npc4_glance_success && global.npc4_relips_success){
	temp_next_line[1] = [5,-1,-1];
} else if(global.npc4_eavesd_success && global.npc4_glance_success && !global.npc4_relips_success){
	temp_next_line[1] = [6,-1,-1];
} else if(!global.npc4_eavesd_success && !global.npc4_glance_success && global.npc4_relips_success){
	temp_next_line[1] = [7,-1,-1];
} else if(!global.npc4_eavesd_success && !global.npc4_glance_success && !global.npc4_relips_success){
	temp_next_line[1] = [8,-1,-1];
}
obj_text.next_line = temp_next_line;