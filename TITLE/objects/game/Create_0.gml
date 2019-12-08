/// @description Insert description here
// You can write your code in this editor
room_goto_next();
end_dialogue_time = 60;
end_dialogue_created = false;

global.game_width = 1024;
global.game_height = 768;
global.timer = 60 * 1000 * 100;

global.eavesdropping = 1;
global.readlips = 1;
global.glance = 1;
global.checkpasses = 1;

global.skillcheckTimer = 1;

global.interact_key = vk_space;
global.read_key = ord("R");
global.eavesdrop_key = ord("E");
global.checkpass_key = ord("Q");
global.glance_key = ord("W");

global.letter_key = ord("L");
global.journal_key = ord("J");
global.skip_key = ord("Z");

global.choice_dialogue = false;
global.in_dialogue = false;
global.in_skill_board = false;
gameHasEnded = false;
display_set_gui_size(global.game_width,global.game_height);

global.room_state = "ENTERING";
global.alpha = 0;