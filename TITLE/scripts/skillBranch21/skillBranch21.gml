//Branch between two dialogues based on a skill check.
npc = argument[0];
line = argument[1];
skill = argument[2];
dc = argument[3];
branch1 = argument[4];
branch2 = argument[5];

var temp_next_line = get_dialogue_part(npc.dialogue,"next_part");
if(skillcheck(skill,dc)){
	temp_next_line[line] = [-1,branch1];
} else {
	temp_next_line[line] = [-1,branch2];
}
obj_text.next_line = temp_next_line;