/// @description Insert description here
// You can write your code in this editor

if (global.timer <= 0 && !gameHasEnded)
{
	with(obj_music){event_user(0);}
	gameHasEnded = true;
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
	if(letter_instance != noone){
		with(letter_instance){
			instance_destroy();
		}
	}else{
		instance_create_depth(0,0,10,obj_text_letter);	
	}
}

///show_debug_message(string(global.timer));