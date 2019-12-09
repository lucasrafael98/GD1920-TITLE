var temp_next_line = get_dialogue_part(obj_player.exit_dialogue,"next_part");
if(global.npc5_eavesd_success && global.npc5_glance_success && global.npc5_relips_success){
	temp_next_line[1] = [-1,10,-1];
} else if(global.npc5_eavesd_success && !global.npc5_glance_success && global.npc5_relips_success){
	temp_next_line[1] = [-1,11,-1];
} else if(global.npc5_eavesd_success && !global.npc5_glance_success && !global.npc5_relips_success){
	temp_next_line[1] = [-1,12,-1];
} else if(!global.npc5_eavesd_success && global.npc5_glance_success && global.npc5_relips_success){
	temp_next_line[1] = [-1,13,-1];
} else if(global.npc5_eavesd_success && global.npc5_glance_success && !global.npc5_relips_success){
	temp_next_line[1] = [-1,14,-1];
} else if(!global.npc5_eavesd_success && !global.npc5_glance_success && global.npc5_relips_success){
	temp_next_line[1] = [-1,15,-1];
} else if(!global.npc5_eavesd_success && !global.npc5_glance_success && !global.npc5_relips_success){
	temp_next_line[1] = [-1,16,-1];
}
obj_text.next_line = temp_next_line;