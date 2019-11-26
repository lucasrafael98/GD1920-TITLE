if(skillcheck(2,1)){
	obj_npc3.next_line[1] = [2];
} else {
	obj_npc3.next_line[1] = [8];
}
obj_text.next_line = obj_npc3.next_line;