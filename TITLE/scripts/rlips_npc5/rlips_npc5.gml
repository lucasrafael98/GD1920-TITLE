if(skillcheck(4,obj_npc5.event0dc)){
	obj_npc5.next_line[1] = [2, -1];
} else{
	obj_npc5.next_line[1] = [3,-1];
	if(obj_npc5.event0dc > 0) obj_npc5.event0dc--;
}
obj_text.next_line = obj_npc5.next_line;
