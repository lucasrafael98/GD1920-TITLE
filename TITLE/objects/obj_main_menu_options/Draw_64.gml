/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center); draw_set_valign(fa_center);
if(selected_option == 0){
	draw_sprite(spr_start_btn_selected,0,c_x + c_width*0.5,c_y + c_height*0.6)
	draw_sprite(spr_exit_btn,0,c_x + c_width*0.5,c_y + c_height*0.8)
}else if(selected_option == 1){
	draw_sprite(spr_start_btn,0,c_x + c_width*0.5,c_y + c_height*0.6)
	draw_sprite(spr_exit_btn_selected,0,c_x + c_width*0.5,c_y + c_height*0.8)
}
draw_set_halign(fa_top); draw_set_valign(fa_left);