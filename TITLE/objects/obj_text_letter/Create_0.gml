/// @description Insert description here
// You can write your code in this editor
letter_box_temp = spr_letter;
letter_box_temp_width = sprite_get_width(letter_box_temp);
letter_box_temp_height = sprite_get_height(letter_box_temp);

letter_x = camera_get_view_x(camera)+camera_get_view_width(camera)/2;
letter_y = camera_get_view_y(camera)+camera_get_view_height(camera)/2;

x_offset = 50;
y_offset = 50;


letter_box_text_x = letter_x + x_offset;
letter_box_text_y = letter_y + y_offset;

letter_text = "";

type_color = c_black;

font_l = fnt_letter;

draw_set_font(font_l);