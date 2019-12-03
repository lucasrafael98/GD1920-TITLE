/// @description Insert description here
// You can write your code in this editor
skill_board_spr = spr_skill_board;
skill_board_spr_width = sprite_get_width(skill_board_spr);
skill_board_spr_height = sprite_get_height(skill_board_spr);

skill_board_x = surface_get_width(application_surface)/2 - skill_board_spr_width/2;
skill_board_y = surface_get_height(application_surface)/2 - skill_board_spr_height/2;

col_size = skill_board_spr_width / 4;

x_offset = 50;
y_offset = 300;

skill_title = "SKILLS"

check_passes_title = "Checking\nPasses";
eavesdropping_title = "Eavesdropping";
read_lips_title = "Reading\nLips";
glancing_title = "Glancing";


check_passes_text = "omegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\n";
eavesdropping_text = "omegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\n";
read_lips_text = "omegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\n";
glancing_text = "omegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\nomegalul\n";

type_color = c_black;

font_s_title = fnt_skill_30;
font_s_skill_name = fnt_skill_24;
font_s_text = fnt_skill_16;

draw_set_font(font_s_text);