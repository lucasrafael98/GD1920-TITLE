var temp_next_line = get_dialogue_part(obj_player.dialogue,"next_part");
if(obj_player.readlips_npc5 and obj_player.glance_npc5){
	temp_next_line[1] = [-1,14];
} else if(obj_player.readlips_npc5){
	temp_next_line[1] = [-1,6];
} else if(obj_player.glance_npc5){
	temp_next_line[1] = [-1,7];
} else{
	temp_next_line[1] = [-1,8];
}
obj_text.next_line = temp_next_line;