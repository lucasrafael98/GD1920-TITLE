/// @description Insert description here
// You can write your code in this editor

input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

if(a_suspicion > 5){
	a_susp_mod = 1;
} if(a_suspicion > 10){
	a_susp_mod = 2;
}

if(room==rm_2 and game.gameHasEnded and global.alpha <= 0){
	room_goto_next();
	global.room_state = "ENTERING";
}
else if(room==rm_5 and game.gameHasEnded and global.alpha <= 0){
	room_goto_next();
	global.room_state = "ENTERING";
}

if(input_walk or input_run){
	spd = abs((input_walk * w_spd) - (input_run*r_spd));
} else{
	spd = n_spd;
}

moveX = 0;
moveY = 0;

if(!global.in_dialogue && !global.in_skill_board){
	moveY = (input_down - input_up) * spd;
	if(moveY == 0){ moveX = (input_right - input_left) * spd;}
}

if(!global.escape_key_activated){
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
if(keyboard_check_pressed(global.read_key)){
	
	if(active_tbox == noone){
		var inst = collision_rectangle(x-radius,y-radius,x+radius,y+radius,obj_npc,false,false);
	
		if(inst != noone){
			show_debug_message(object_get_name(inst));
			with(inst){
				event_user(0);

				var tbox = create_textbox(dialogue,my_id,"read");
			}
			active_tbox = tbox;
		}
	}else{
		if(!instance_exists(active_tbox)){
			active_tbox = noone;
		}
	}
}

// "W" Key pressed (Glance)
if(keyboard_check_pressed(global.glance_key)){
	
	if(active_tbox == noone){
		var inst = collision_rectangle(x-radius,y-radius,x+radius,y+radius,obj_npc,false,false);
	
		if(inst != noone){
			with(inst){
				event_user(1);
				var tbox = create_textbox(dialogue,my_id,"glance");
			}
			active_tbox = tbox;
		}
	}else{
		if(!instance_exists(active_tbox)){
			active_tbox = noone;
		}
	}
}

// "E" Key pressed (Eavesdrop)
if(keyboard_check_pressed(global.eavesdrop_key)){
	
	if(active_tbox == noone){
		var inst = collision_rectangle(x-radius,y-radius,x+radius,y+radius,obj_npc,false,false);
	
		if(inst != noone){
			with(inst){
				event_user(2);
				var tbox = create_textbox(dialogue,my_id,"eaves");
			}
			active_tbox = tbox;
		}
	}else{
		if(!instance_exists(active_tbox)){
			active_tbox = noone;
		}
	}
}

// "Q" Key pressed (Checkpass)
if(keyboard_check_pressed(global.checkpass_key)){
	
	if(active_tbox == noone){
		var inst = collision_rectangle(x-radius,y-radius,x+radius,y+radius,obj_npc,false,false);
	
		if(inst != noone){
			with(inst){
				event_user(3);
				var tbox = create_textbox(dialogue,my_id,"check");
			}
			active_tbox = tbox;
		}
	}else{
		if(!instance_exists(active_tbox)){
			active_tbox = noone;
		}
	}
}

if(keyboard_check_pressed(global.escape_key)){
	
	if(active_tbox != noone){
		if(instance_exists(active_tbox)){
			with(active_tbox){
				instance_destroy();
			}
		}
		active_tbox = noone;
	}
	var letter_instance = instance_find(obj_text_letter, 0);
	var journal_instance = instance_find(obj_journal, 0);
	if(journal_instance != noone){
		with(journal_instance){
			instance_destroy();
		}
		
	}
	if(letter_instance != noone){
		with(letter_instance){
			instance_destroy();
		}
		
	}
}

if(!global.escape_key_activated){
	x += moveX;
	y += moveY;
}

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