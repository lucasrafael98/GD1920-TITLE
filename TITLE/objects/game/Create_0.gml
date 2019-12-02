/// @description Insert description here
// You can write your code in this editor
room_goto_next();
end_dialogue_time = 60;
end_dialogue_created = false;

global.game_width = 1024;
global.game_height = 768;
global.timer = 60 * 1000 * 100;
global.interact_key = vk_space;
global.letter_key = ord("L");
global.choice_dialogue = false;
global.in_dialogue = false;
gameHasEnded = false;
display_set_gui_size(global.game_width,global.game_height);