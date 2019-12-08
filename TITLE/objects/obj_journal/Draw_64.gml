/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_l);
draw_sprite(journal_box_temp,0,journal_x,journal_y);
draw_set_halign(fa_left); draw_set_valign(fa_left);
var c1 = type_color;
draw_text_color(journal_box_text_x,journal_box_text_y - string_height("M"),letter_text,c1,c1,c1,c1,1);

draw_set_halign(fa_left); draw_set_valign(fa_left);
draw_sprite(journal_kb_temp,0,kb_x,kb_y);
