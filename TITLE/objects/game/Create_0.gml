/// @description Insert description here
// You can write your code in this editor
//room_goto_next();

end_dialogue_time = 60;
end_dialogue_created = false;

global.l2c1_accusee1 = 0;
global.l2c1_accusee2 = 0;

global.game_width = 1024;
global.game_height = 768;
global.timer = 180 * 1000 * 100;
// "new life" ending
global.newlife = false;

global.time_limit = 13;

global.eavesdropping = 1;
global.readlips = 1;
global.glance = 1;
global.checkpasses = 1;

global.npc3_glance_success = false;
global.npc3_eavesd_success = false;
global.npc3_relips_success = false;
global.npc4_glance_success = false;
global.npc4_eavesd_success = false;
global.npc4_relips_success = false;
global.npc5_glance_success = false;
global.npc5_eavesd_success = false;
global.npc5_relips_success = false;

global.skillcheckTimer = 1;

global.interact_key = vk_space;
global.escape_key = vk_escape;
global.read_key = ord("R");
global.eavesdrop_key = ord("E");
global.checkpass_key = ord("Q");
global.glance_key = ord("W");

global.letter_key = ord("L");
global.journal_key = ord("J");
global.skip_key = ord("Z");

global.next_room = choose_lvl;

global.choice_dialogue = false;
global.in_dialogue = false;
global.in_skill_board = false;
global.escape_key_activated=false;
gameHasEnded = false;
display_set_gui_size(global.game_width,global.game_height);

global.room_state = "ENTERING";
global.alpha = 0;

global.music = instance_create_layer(0,0,"Instances",obj_music);