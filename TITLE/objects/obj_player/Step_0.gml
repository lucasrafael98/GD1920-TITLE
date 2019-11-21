/// @description Insert description here
// You can write your code in this editor

input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

if(input_walk or input_run){
	spd = abs((input_walk * w_spd) - (input_run*r_spd));
} else{
	spd = n_spd;
}

moveX = 0;
moveY = 0;

if(!global.in_dialogue){
	moveY = (input_down - input_up) * spd;
	if(moveY == 0){ moveX = (input_right - input_left) * spd;}
}

if(moveX < 0){
	image_speed = spd/2;
	sprite_index = S_P_LEFT;
} else if(moveX > 0){
	image_speed = spd/2;
	sprite_index = S_P_RIGHT;
} else if(moveY < 0){
	image_speed = spd/2;
	sprite_index = S_P_UP;
} else if(moveY > 0){
	image_speed = spd/2;
	sprite_index = S_P_DOWN;
}else{
	image_speed = 0;
	image_index = 0;
}

if(moveX != 0){
	if(place_meeting(x+moveX,y,obj_wall)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX),y,obj_wall)){
				x += sign(moveX);
			}else{
				break;
			}
		}
		moveX = 0;
	}
}

if(moveY != 0){         
	if(place_meeting(x,y+moveY,obj_wall)){
		repeat(abs(moveY)){
			if(!place_meeting(x,y+sign(moveY),obj_wall)){
				y += sign(moveY);
			}else{
				break;
			}
		}
		moveY = 0;
	}
}

if(keyboard_check_pressed(global.interact_key)){
	
	if(active_tbox == noone){
		var inst = collision_rectangle(x-radius,y-radius,x+radius,y+radius,obj_npc,false,false);
	
		if(inst != noone){
			with(inst){
				var tbox = create_textbox(text,speakers,next_line);
			}
			active_tbox = tbox;
		}
	}else{
		if(!instance_exists(active_tbox)){
			active_tbox = noone;
		}
	}
}

x += moveX;
y += moveY;

//if (keyboard_check(vk_shift)){
//	walkSpeed =7;
//}

//if (keyboard_check_released(vk_shift)){
//	walkSpeed =3.5;
//}

//if (keyboard_check(ord("S"))){
//	y+=walkSpeed;
//	image_speed = walkSpeed/3;
//	sprite_index = S_P_DOWN;
//}
//if (keyboard_check(ord("W"))){
//	y-=walkSpeed;
//	image_speed = walkSpeed/3;
//	sprite_index = S_P_UP;
//}
//if(!keyboard_check(ord("W")) && !keyboard_check(ord("S"))){
//	image_speed = 0;
//	image_index = 0;
//	walkSpeed = 3.5;
//}




