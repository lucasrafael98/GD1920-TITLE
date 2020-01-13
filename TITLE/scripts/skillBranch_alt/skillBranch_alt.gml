//Branch between two dialogues based on a skill check.
//This "alt" version is in case the check isn't made on a player choice.
npc = argument[0];
line = argument[1];
skill = argument[2];
dc = argument[3];
branch1 = argument[4];
branch2 = argument[5];
show_debug_message("Hello?");

var temp_next_line = get_dialogue_part(npc.dialogue,"next_part");
if(skillcheck(skill,dc)){
	temp_next_line[line] = branch1;
} else {
	temp_next_line[line] = branch2;
}
obj_text.next_line = temp_next_line;