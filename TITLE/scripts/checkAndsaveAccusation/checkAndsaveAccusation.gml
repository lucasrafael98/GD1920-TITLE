var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
accusation = 0;
if(argument[0] == obj_npc_l2_1){
	accusation = 1;
} else if(argument[0] == obj_npc_l2_2){
	accusation = 2;
} else if(argument[0] == obj_npc_l2_3){
	accusation = 3;
} else if(argument[0] == obj_npc_l2_4){
	accusation = 4;
} else if(argument[0] == obj_npc_l2_5){
	accusation = 5;
} else if(argument[0] == obj_npc_l2_6){
	accusation = 6;
}
if(global.l2c1_accusee1 == accusation){
	temp_next_line[argument[1]] = [73,-1];
} else {
	global.l2c1_accusee2 = accusation;
	temp_next_line[argument[1]] = [74,-1];
}
obj_text.next_line = temp_next_line;