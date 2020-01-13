/// @description Insert description here
// You can write your code in this editor
if(room != rm_2 and room != rm_5 and room != rm_10){

	text_box_x = room_width/2;
	text_box_y = room_height/3;

	x_buffer = -400;
	y_buffer = -50;

	text_x = text_box_x + x_buffer;
	text_y = text_box_y + y_buffer;

	text_max_width = room_width/2 - 2*(x_buffer) -1350;
}else{
	text_box = spr_text_box;
	text_box_image = spr_text_box_image;

	text_box_width = sprite_get_width(text_box);
	text_box_height = sprite_get_height(text_box);

	text_box_image_width = sprite_get_width(text_box_image);
	text_box_image_height = sprite_get_height(text_box_image);

	text_box_x = 0;
	text_box_y = global.game_height - text_box_height;

	text_box_image_x = 100;
	text_box_image_y = text_box_y + 60;

	x_buffer = 25;
	y_buffer = 8;
	
	text_x = text_box_x + text_box_image_x + text_box_image_width + x_buffer;
	text_y = text_box_image_y +  y_buffer;

	text_max_width = text_box_width - 2*(x_buffer) - text_box_image_width -90;	
}
target = noone;
type = "";
pause = false;
portrait_index = 0;
voice = snd_sound0;
counter = 0;
text[0] = "";
page = 0;

name = "";

text_col = c_white;
font = fnt_text_16;

draw_set_font(font);
text_height = string_height("M");
choice = 0;