/// @description Insert description here
// You can write your code in this editor
draw_sprite(text_box,0,text_box_x,text_box_y);
draw_sprite(text_box_image,1,text_box_image_x,text_box_image_y);

draw_set_font(font);

var c = text_col;

draw_set_halign(fa_left); draw_set_valign(fa_top);

if(!pause and counter < str_len){
	counter++;
	if(counter mod 4 == 0){
		audio_play_sound(voice,10,false);
	}
	switch(string_char_at(text_wrapped,counter)){
		case ",": puase = true; alarm[1] = 15; break;
		case ".":
		case "?":
		case "!": pause = true; alarm[1] = 25; break;
	}
}
var substr = string_copy(text_wrapped,1,counter);

draw_text_color(text_x,text_y,substr,c,c,c,c,1);