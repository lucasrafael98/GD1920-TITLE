/// @description Insert description here
// You can write your code in this editor

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

if (global.timer <= 0 && !gameHasEnded)
{
	with(obj_music){event_user(0);}
	gameHasEnded = true;
	global.room_state = "EXITING";
}


else if(global.timer <= 0 && gameHasEnded && end_dialogue_time > 0){
	show_debug_message(end_dialogue_time);
	end_dialogue_time --;
}
else if(global.timer <= 0 && gameHasEnded && end_dialogue_time <= 0 && !end_dialogue_created){
	create_textbox(exit_dialogue);
	end_dialogue_created = true;
}

if(keyboard_check_pressed(global.letter_key)){
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
		
	}else{
		instance_create_depth(0,0,10,obj_text_letter);	
	}
}

if(keyboard_check_pressed(global.journal_key)){
	var letter_instance = instance_find(obj_text_letter, 0);
	var journal_instance = instance_find(obj_journal, 0);
	if(letter_instance != noone){
		with(letter_instance){
			instance_destroy();
		}
		
	}
	if(journal_instance != noone){
		with(journal_instance){
			instance_destroy();
		}
	}else{
		instance_create_depth(0,0,10,obj_journal);	
	}
}

if(keyboard_check_pressed(global.skip_key) && !global.in_dialogue && !global.in_skill_board){
	global.skillcheckTimer = 10;
	with(obj_music){event_user(0);}
	
	gameHasEnded = true;
	global.room_state = "EXITING";
	end_dialogue_created = true;
}