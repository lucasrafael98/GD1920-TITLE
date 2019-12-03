/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_s_title);
draw_sprite(skill_board_spr,0,skill_board_x,skill_board_y);
draw_set_halign(fa_center); draw_set_valign(fa_center);
var c1 = type_color;
draw_text_color(x_offset + skill_board_spr_width/2,y_offset/2 - string_height("M"),skill_title,c1,c1,c1,c1,1);


draw_set_font(font_s_skill_name);
draw_set_halign(fa_center); draw_set_valign(fa_center);
c1 = type_color;
draw_text_color(x_offset +   col_size - col_size/2,y_offset/1.25 - string_height("M"),check_passes_title,c1,c1,c1,c1,1);
draw_text_color(x_offset + 2*col_size - col_size/2,y_offset/1.25 - string_height("M"),eavesdropping_title,c1,c1,c1,c1,1);
draw_text_color(x_offset + 3*col_size - col_size/2,y_offset/1.25 - string_height("M"),read_lips_title,c1,c1,c1,c1,1);
draw_text_color(x_offset + 4*col_size - col_size/2,y_offset/1.25 - string_height("M"),glancing_title,c1,c1,c1,c1,1);


draw_set_font(font_s_text);
draw_set_halign(fa_center); draw_set_valign(fa_center);
c1 = type_color;
draw_text_color(x_offset + 1*col_size - col_size/2,y_offset*1.5 - string_height("M"),check_passes_text,c1,c1,c1,c1,1);
draw_text_color(x_offset + 2*col_size - col_size/2,y_offset*1.5 - string_height("M"),eavesdropping_text,c1,c1,c1,c1,1);
draw_text_color(x_offset + 3*col_size - col_size/2,y_offset*1.5 - string_height("M"),read_lips_text,c1,c1,c1,c1,1);
draw_text_color(x_offset + 4*col_size - col_size/2,y_offset*1.5 - string_height("M"),glancing_text,c1,c1,c1,c1,1);
