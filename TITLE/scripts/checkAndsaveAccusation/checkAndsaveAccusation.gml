var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
with(obj_player){
	if(l2c1_accusee1 == argument[0]){
		temp_next_line[argument[1]] = [73,-1];
	} else {
		l2c1_accusee2 = argument[0]
		temp_next_line[argument[1]] = [74,-1];
	}
}
obj_text.next_line = temp_next_line;