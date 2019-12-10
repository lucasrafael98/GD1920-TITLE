/// @description Insert description here
// You can write your code in this editor

ui_bar_width = sprite_get_width(spr_ui_bar);
ui_bar_height = sprite_get_height(spr_ui_bar);

time_bar_y = ui_bar_height/2

draw_sprite_ext(spr_time_bar,0,x,time_bar_y,global.skillcheckTimer/global.time_limit,1,0,c_white,1);
draw_sprite(spr_time_bar_outline_font,0,x,time_bar_y);
