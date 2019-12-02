var temp_next_line = get_dialogue_part(obj_npc3.dialogue,"next_part");
if(skillcheck(2,1)){
	temp_next_line[1] = [2];
} else {
	temp_next_line[1] = [8];
}
obj_text.next_line = temp_next_line;