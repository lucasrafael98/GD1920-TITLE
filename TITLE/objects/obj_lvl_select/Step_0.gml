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
	if(selected_option == 0){room_goto(rm_1);}
	else{room_goto(rm_4);}
}