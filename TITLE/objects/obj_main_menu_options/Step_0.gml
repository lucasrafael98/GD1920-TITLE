/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_up)){
	if(selected_option == 1){selected_option--}
	else{selected_option = 1}
}
else if(keyboard_check_pressed(vk_down)){
	if(selected_option == 0){selected_option++}
	else{selected_option = 0}
}else if(keyboard_check_pressed(global.interact_key)){
	if(selected_option == 0){
		global.room_state = "EXITING";
		global.next_room = choose_lvl;
		}
	else{
		game_end();
	}
}