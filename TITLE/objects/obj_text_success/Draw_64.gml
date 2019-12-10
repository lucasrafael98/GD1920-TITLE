/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_s);
draw_sprite(text_box_s,0,text_box_s_x,text_box_s_y);
draw_set_halign(fa_center); draw_set_valign(fa_center);
var c1 = c_white;
var c2 = type_color;
draw_text_color(text_s_x,text_s_y - string_height("M"),skill,c1,c1,c1,c1,1);
draw_text_color(text_s_x,text_s_y + string_height("M"),type,c2,c2,c2,c2,1);
draw_set_halign(fa_left); draw_set_valign(fa_top);