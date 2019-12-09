/// @description Insert description here
// You can write your code in this editor
if(room == rm_2) draw_sprite(text_box,0,text_box_x,text_box_y);
if(room != rm_2) draw_sprite_ext(spr_fade_sprite,1,0,0,1,1,0,c_white,0.5);
if(room == rm_2){
	//show_debug_message(object_get_name(target));
	////show_debug_message(obj_npc1);
	if(type == "check" and target != obj_npc6){
		text_x = 160 + text_box_x + text_box_image_x + text_box_image_width + x_buffer;
		text_y = text_box_image_y +  y_buffer;

		text_max_width = text_box_width - 2*(x_buffer) - text_box_image_width -15 - 170;
		if(target == obj_npc1){
			text_box_image = BHL_DB;
		}else if(target == obj_npc2){
			text_box_image = H_DB;
		}else if(target == obj_npc3){
			text_box_image = BM_DB;
		}else if(target == obj_npc4){
			text_box_image = FM_DB;
		}else if(target == obj_npc5){
			text_box_image = BM_P;
		}
		draw_sprite_ext(text_box_image,1,text_box_image_x - 30,text_box_image_y + 15,0.4,0.4,0,c_white,1);
	}else{
		draw_sprite(text_box_image,1,text_box_image_x,text_box_image_y);
	}
}

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