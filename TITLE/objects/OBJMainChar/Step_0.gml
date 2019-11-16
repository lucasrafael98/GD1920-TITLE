/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_shift)){
	walkSpeed =7;
}

if (keyboard_check_released(vk_shift)){
	walkSpeed =3.5;
}


if (keyboard_check(ord("S"))){
	y+=walkSpeed;
	image_speed = walkSpeed/3;
	sprite_index = S_P_DOWN;
}

if (keyboard_check(ord("W"))){
	y-=walkSpeed;
	image_speed = walkSpeed/3;
	sprite_index = S_P_UP;
}

if(!keyboard_check(ord("W")) && !keyboard_check(ord("S"))){
	image_speed = 0;
	image_index = 0;
	walkSpeed = 3.5;
}


