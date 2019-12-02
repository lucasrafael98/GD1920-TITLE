var temp_next_line = get_dialogue_part(obj_npc3.dialogue,"next_part");
if(skillcheck(1,2)){
	temp_next_line[4] = [7];
} else{
	temp_next_line[4] = [5];
}
obj_text.next_line = temp_next_line;