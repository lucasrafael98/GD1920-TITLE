/// @description Insert description here
// You can write your code in this editor
ui_bar_width = sprite_get_width(spr_ui_bar);
ui_bar_height = sprite_get_height(spr_ui_bar);

suspicion_bar_y = ui_bar_height/2

draw_sprite_ext(spr_sus_bar,0,x,suspicion_bar_y,obj_player.a_suspicion/10,1,0,c_white,1);
draw_sprite(spr_sus_bar_outline_font,0,x,suspicion_bar_y);
