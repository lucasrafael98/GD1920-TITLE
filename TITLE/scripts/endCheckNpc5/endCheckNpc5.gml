if(obj_player.readlips_npc5 and obj_player.glance_npc5){
	obj_player.exit_next_line[1] = [-1,14];
} else if(obj_player.readlips_npc5){
	obj_player.exit_next_line[1] = [-1,6];
} else if(obj_player.glance_npc5){
	obj_player.exit_next_line[1] = [-1,7];
} else{
	obj_player.exit_next_line[1] = [-1,8];
}
obj_text.next_line = obj_player.exit_next_line;