/// @description Insert description here
// You can write your code in this editor
if(points_available == 0){
	n_options = 9;
}else{
	n_options = 8;
}
if(keyboard_check_pressed(vk_left)){
	if(selected_option > 0){selected_option--}
	else{selected_option = n_options - 1}
}
else if(keyboard_check_pressed(vk_right)){
	if(selected_option < n_options - 1){selected_option++}
	else{selected_option = 0}
}else if(keyboard_check_pressed(vk_up)){
	if(selected_option == 8 and n_options == 9){selected_option = 4}
}else if(keyboard_check_pressed(vk_down)){
	if(n_options == 9 and selected_option != 8){selected_option = 8}
}else if(keyboard_check_pressed(global.interact_key)){
	switch(selected_option){
		case 1: if(points_available >0 && global.checkpasses >= 1)	{global.checkpasses++;	points_available--;}break;
		case 0: if(points_available < max_points_available && global.checkpasses > 1)	{global.checkpasses--;	points_available++;}break;
		case 3: if(points_available >0 && global.eavesdropping >= 1)	{global.eavesdropping++;	points_available--;}break;
		case 2:	if(points_available < max_points_available && global.eavesdropping > 1)	{global.eavesdropping--;	points_available++;}break;
		case 5:	if(points_available >0 && global.readlips >= 1)		{global.readlips++;		points_available--;}break;
		case 4:	if(points_available < max_points_available && global.readlips > 1)		{global.readlips--;		points_available++;}break;
		case 7:	if(points_available >0 && global.glance >= 1)			{global.glance++;			points_available--;}break;
		case 6:	if(points_available < max_points_available && global.glance > 1)			{global.glance--;			points_available++;}break;
		case 8:	global.room_state = "EXITING";break;

	}
}

if(room==rm_1 and global.alpha <= 0){
	room_goto_next();
	global.room_state = "ENTERING";
	global.in_dialogue = false;
	global.in_skill_board = false;
	instance_destroy();
}