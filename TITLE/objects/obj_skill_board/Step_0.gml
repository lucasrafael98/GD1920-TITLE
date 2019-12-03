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
}else if(keyboard_check_pressed(global.interact_key)){
	switch(selected_option){
		case 1: if(points_available >0 && obj_player.s_checkpasses >= 1)	{obj_player.s_checkpasses++;	points_available--;}break;
		case 0: if(points_available < 4 && obj_player.s_checkpasses > 1)	{obj_player.s_checkpasses--;	points_available++;}break;
		case 3: if(points_available >0 && obj_player.s_eavesdropping >= 1)	{obj_player.s_eavesdropping++;	points_available--;}break;
		case 2:	if(points_available < 4 && obj_player.s_eavesdropping > 1)	{obj_player.s_eavesdropping--;	points_available++;}break;
		case 5:	if(points_available >0 && obj_player.s_readlips >= 1)		{obj_player.s_readlips++;		points_available--;}break;
		case 4:	if(points_available < 4 && obj_player.s_readlips > 1)		{obj_player.s_readlips--;		points_available++;}break;
		case 7:	if(points_available >0 && obj_player.s_glance >= 1)			{obj_player.s_glance++;			points_available--;}break;
		case 6:	if(points_available < 4 && obj_player.s_glance > 1)			{obj_player.s_glance--;			points_available++;}break;
		case 8:	instance_destroy();break;

	}
}