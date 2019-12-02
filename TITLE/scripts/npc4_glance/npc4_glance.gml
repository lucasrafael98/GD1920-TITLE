var temp_next_line = get_dialogue_part(obj_npc4.dialogue,"next_part");
if(obj_npc4.attempts <= 0){
	temp_next_line[1] = [4, -1];
	obj_text.next_line = temp_next_line;
}else{
	obj_npc4.attempts--;


	if(skillcheck(3,obj_npc4.event0dc)){
		temp_next_line[1] = [2, -1];
	} else{
		temp_next_line[1] = [5,-1];
		if(obj_npc4.event0dc > 0) obj_npc4.event0dc--;
	}
	obj_text.next_line = temp_next_line;
}