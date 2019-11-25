/// @description Insert description here
// You can write your code in this editor

if (global.timer <= 0 && !gameHasEnded)
{
	create_textbox(obj_player.exit_text,obj_player.exit_speakers,obj_player.exit_next_line,obj_player.exit_scripts);
	gameHasEnded = true;
}

show_debug_message(string(global.timer));