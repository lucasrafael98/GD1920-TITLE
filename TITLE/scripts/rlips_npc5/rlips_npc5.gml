var temp_next_line = get_dialogue_part(obj_npc5.dialogue,"next_part");
if(skillcheck(4,obj_npc5.event0dc)){
	temp_next_line[1] = [2, -1];
} else{
	temp_next_line[1] = [3,-1];
	if(obj_npc5.event0dc > 0) obj_npc5.event0dc--;
}
obj_text.next_line = temp_next_line;
