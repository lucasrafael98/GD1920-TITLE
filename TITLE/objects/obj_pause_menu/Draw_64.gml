/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center); draw_set_valign(fa_center);
draw_sprite_stretched(spr_pause_menu,0,c_x,c_y,c_width,c_height);
if(selected_option == 0){
	draw_sprite(spr_continue_btn_selected,0,c_x + c_width*0.25,c_y + c_height*0.6)
	draw_sprite(spr_restart_btn,0,c_x + c_width*0.75,c_y + c_height*0.6)
}else if(selected_option == 1){
	draw_sprite(spr_continue_btn,0,c_x + c_width*0.25,c_y + c_height*0.6)
	draw_sprite(spr_restart_btn_selected,0,c_x + c_width*0.75,c_y + c_height*0.6)
}
draw_set_halign(fa_top); draw_set_valign(fa_left);