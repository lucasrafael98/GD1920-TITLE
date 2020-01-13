//Branch between two dialogues based on a skill check.
npc = argument[0];
line = argument[1];
skill = argument[2];
dc = argument[3];
branch1 = argument[4];
branch2 = argument[5];
branch3 = argument[6];
show_debug_message("Hello?");

var temp_next_line = get_dialogue_part(npc.dialogue,"next_part");
if((obj_player.s_readlips - obj_player.a_susp_mod) >= dc + 1){
	temp_next_line[line] = [branch1];
	create_textbox_success("SUCCESS","Read Lips",c_green); 
} else if((obj_player.s_readlips - obj_player.a_susp_mod) >= dc){
	temp_next_line[line] = [branch2];
	create_textbox_success("SUCCESS","Read Lips",c_green); 
} else{
	temp_next_line[line] = [branch3];
	create_textbox_success("FAILURE","Read Lips",c_red);
}
obj_text.next_line = temp_next_line;