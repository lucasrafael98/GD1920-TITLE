/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(global.interact_key)){
	if(!global.choice_dialogue and counter < str_len){counter = str_len;}
	else if(page <= array_length_1d(text) - 1){
		event_perform(ev_other,ev_user2);
		
		var line = next_line[page];
		if(global.choice_dialogue) line = line[choice];
		
		if(line == 0) page++;
		else if(line == -1){ instance_destroy();exit;}
		else page = line;
		event_perform(ev_other,ev_user1);
	}else{
		instance_destroy();
	}
}

if(global.choice_dialogue){
	choice += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	
	if(choice > text_array_len - 1) choice = 0;
	if(choice < 0) choice = text_array_len - 1;
}