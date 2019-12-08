/// @description Insert description here
// You can write your code in this editor
if(room == rm_2) draw_sprite(text_box,0,text_box_x,text_box_y);
if(room != rm_2) draw_sprite_ext(spr_fade_sprite,1,0,0,1,1,0,c_white,0.5);
if(room == rm_2) draw_sprite(text_box_image,1,text_box_image_x,text_box_image_y);

if(room == rm_2) draw_set_font(font);
else draw_set_font(fnt_text_20);

if(!global.choice_dialogue){

	var c = text_col;

	draw_set_halign(fa_left); draw_set_valign(fa_top);

	if(!pause and counter < str_len){
		counter++;
		if(counter mod 4 == 0){
			audio_play_sound(voice,10,false);
		}
		switch(string_char_at(text_wrapped,counter)){
			case ",": pause = true; alarm[1] = 15; break;
			case ".":
			case "?":
			case "!": pause = true; alarm[1] = 25; break;
		}
	}
	var substr = string_copy(text_wrapped,1,counter);

	draw_text_color(text_x,text_y,substr,c,c,c,c,1);
}else{
	var c = text_col;
	var i = 0, y_add = 0;repeat(text_array_len){
		if(choice == i){ draw_sprite(spr_dialog_selected,0,text_x-x_buffer*1.75,text_y+y_add-y_buffer+5);}
		else{c = text_col}
		draw_text_ext_color(text_x,text_y+y_add,text_array[i],text_height,text_max_width,c,c,c,c,1);
		y_add += string_height_ext(text_array[i],text_height,text_max_width);
		i++;
	}
}