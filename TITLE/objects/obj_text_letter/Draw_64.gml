/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_l);
draw_sprite(letter_box_temp,0,letter_x,letter_y);
draw_set_halign(fa_left); draw_set_valign(fa_left);
var c1 = type_color;
draw_text_color(letter_box_text_x,letter_box_text_y - string_height("M"),letter_text,c1,c1,c1,c1,1);