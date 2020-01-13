var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
if(argument[0] == 8){
	temp_next_line[8] = [-1,-1,-1,27,-1,-1];
} else if (argument[0] == 41){
	temp_next_line[41] = [-1,-1,-1,61,-1,-1];
}
obj_text.next_line = temp_next_line;