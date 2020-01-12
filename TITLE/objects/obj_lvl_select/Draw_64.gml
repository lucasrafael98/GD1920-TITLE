/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center); draw_set_valign(fa_center);
draw_set_font(fnt_skill_24)
if(selected_option == 0){
	draw_sprite(spr_choose_bus_selected,0,c_x + c_width*0.25,c_y + c_height*0.5)
	draw_sprite(spr_choose_train,0,c_x + c_width*0.75,c_y + c_height*0.5)
	draw_text_color(c_x + c_width*0.25,c_y + c_height*0.8,"Part I",c_white,c_white,c_white,c_white,1);
	draw_text_color(c_x + c_width*0.75,c_y + c_height*0.8,"Part II",c_white,c_white,c_white,c_white,0.5);
}else if(selected_option == 1){
	draw_sprite(spr_choose_bus,0,c_x + c_width*0.25,c_y + c_height*0.5)
	draw_sprite(spr_choose_train_selected,0,c_x + c_width*0.75,c_y + c_height*0.5)
	draw_text_color(c_x + c_width*0.25,c_y + c_height*0.8,"Part I",c_white,c_white,c_white,c_white,0.5);
	draw_text_color(c_x + c_width*0.75,c_y + c_height*0.8,"Part II",c_white,c_white,c_white,c_white,1);
}
draw_set_halign(fa_top); draw_set_valign(fa_left);