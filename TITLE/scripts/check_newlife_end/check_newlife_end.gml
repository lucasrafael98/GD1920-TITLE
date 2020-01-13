var temp_next_line = get_dialogue_part(obj_player.exit_dialogue2,"next_part");
if(global.newlife){
	temp_next_line[0] = 1;
	with(obj_music){event_user(5);}
} else {
	temp_next_line[0] = 7;
}
obj_text.next_line = temp_next_line;