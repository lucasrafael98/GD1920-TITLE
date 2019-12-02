var temp_next_line = get_dialogue_part(obj_npc5.dialogue,"next_part");
if(obj_npc5.attempts <= 0){
	temp_next_line[1] = [10, -1];
	obj_text.next_line = temp_next_line;
}else{
	obj_npc5.attempts--;
	if(skillcheck(3,obj_npc5.event1dc)){
		temp_next_line[1] = [2, -1];
	} else{
		temp_next_line[1] = [8,-1];
		if(obj_npc5.event1dc > 0) obj_npc5.event1dc--;
	}
	obj_text.next_line = temp_next_line;
}