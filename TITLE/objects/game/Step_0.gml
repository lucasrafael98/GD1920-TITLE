/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(global.escape_key)){
	var letter_instance = instance_find(obj_text_letter, 0);
	var journal_instance = instance_find(obj_journal, 0);
	if (letter_instance == noone && journal_instance == noone){
		var esc_menu_instance = instance_find(obj_pause_menu, 0);
		if(esc_menu_instance != noone){
			with(esc_menu_instance){
				global.escape_key_activated = false;
				instance_destroy();
			}
		
		}else{
			global.escape_key_activated = true;
			instance_create_layer(0,0,"pause_Layer",obj_pause_menu);
		}
	}
}

switch(global.room_state){
	case "IN_GAME":
	{
		draw_set_alpha(1);
		break;
	}
	case "EXITING":
	{
		global.alpha -= 0.05;
		if(global.alpha < 0) {global.alpha = 0}
		draw_set_alpha(global.alpha);
		break;
	}
	case "ENTERING":
	{
		global.alpha += 0.05;
		if(global.alpha > 1) {global.alpha = 1}
		draw_set_alpha(global.alpha);
		break;
	}
}

if (global.skillcheckTimer >= global.time_limit && !gameHasEnded)
{
	gameHasEnded = true;
	global.room_state = "EXITING";
}


else if(global.timer <= 0 && gameHasEnded && end_dialogue_time > 0){
	show_debug_message(end_dialogue_time);
	end_dialogue_time --;
}
else if(global.timer <= 0 && gameHasEnded && end_dialogue_time <= 0 && !end_dialogue_created){
	create_textbox(exit_dialogue,obj_player.id,"nooonecares");
	end_dialogue_created = true;
}

if(keyboard_check_pressed(global.letter_key) && (room == rm_2 or room == rm_5)){
	var letter_instance = instance_find(obj_text_letter, 0);
	var journal_instance = instance_find(obj_journal, 0);
	if(journal_instance != noone){
		with(journal_instance){
			instance_destroy();
		}
		
	}
	if(letter_instance != noone){
		with(letter_instance){
			global.escape_key_activated = false;
			instance_destroy();
		}
		
	}else{
		global.escape_key_activated = true;
		instance_create_depth(0,0,10,obj_text_letter);	
	}
}

if(keyboard_check_pressed(global.journal_key) && (room == rm_2 or room == rm_5)){
	var letter_instance = instance_find(obj_text_letter, 0);
	var journal_instance = instance_find(obj_journal, 0);
	if(letter_instance != noone){
		with(letter_instance){
			instance_destroy();
		}
		
	}
	if(journal_instance != noone){
		with(journal_instance){
			global.escape_key_activated = false;
			instance_destroy();
		}
	}else{
		global.escape_key_activated = true;
		instance_create_depth(0,0,10,obj_journal);	
	}
}

if(keyboard_check_pressed(global.skip_key) && !global.in_dialogue && !global.in_skill_board){
	global.skillcheckTimer = 15;
	with(obj_music){event_user(0);}
	
	gameHasEnded = true;
	global.room_state = "EXITING";
	end_dialogue_created = true;
}