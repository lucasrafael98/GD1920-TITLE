/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_left)){
	if(selected_option == 1){selected_option--}
	else{selected_option = 1}
}
else if(keyboard_check_pressed(vk_right)){
	if(selected_option == 0){selected_option++}
	else{selected_option = 0}
}else if(keyboard_check_pressed(global.interact_key)){
	if(selected_option == 0){global.escape_key_activated = false;instance_destroy();}
	else{
		with(obj_music){
			audio_stop_sound(intro);
			audio_stop_sound(cirloop);
			audio_stop_sound(cirloop2);
			audio_play_sound(intro,1000,true);
			audio_play_sound(cirloop,1000,true);
			audio_play_sound(cirloop2,1000,true);
			cur_room = 1;
			cur_loop = true; //T=loop1, F=loop2
		}
		game_restart();
	}
}