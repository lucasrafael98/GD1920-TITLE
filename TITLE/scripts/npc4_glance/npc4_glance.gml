if(obj_npc4.attempts <= 0){
	obj_npc4.next_line[1] = [4, -1];
	obj_text.next_line = obj_npc4.next_line;
}else{
	obj_npc4.attempts--;


	if(skillcheck(3,obj_npc4.event0dc)){
		obj_npc4.next_line[1] = [2, -1];
	} else{
		obj_npc4.next_line[1] = [5,-1];
		if(obj_npc4.event0dc > 0) obj_npc4.event0dc--;
	}
	obj_text.next_line = obj_npc4.next_line;
}