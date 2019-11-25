/// @description Insert description here
// You can write your code in this editor
text_box_temp = spr_text_box;
text_box_s = spr_text_box_skills;

text_box_temp_width = sprite_get_width(text_box_temp);
text_box_temp_height = sprite_get_height(text_box_temp);

text_box_s_width = sprite_get_width(text_box_s);
text_box_s_height = sprite_get_height(text_box_s);

text_box_s_x = text_box_temp_width/4 + text_box_s_width/2;
text_box_s_y = global.game_height - text_box_temp_height - text_box_s_height;

text_s_x = text_box_s_x + text_box_s_width/2;
text_s_y = text_box_s_y + text_box_s_height/2;

type = "";
skill = "";

alarm[0] = 60 ;

type_color = c_white;

font_s = fnt_text_16;

draw_set_font(font_s);