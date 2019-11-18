/// @description Insert description here
// You can write your code in this editor
text_box = spr_text_box;
text_box_image = spr_text_box_image;

text_box_width = sprite_get_width(text_box);
text_box_height = sprite_get_height(text_box);

text_box_image_width = sprite_get_width(text_box_image);
text_box_image_height = sprite_get_height(text_box_image);

text_box_x = 0;
text_box_y = global.game_height - text_box_height;

text_box_image_x = 30;
text_box_image_y = text_box_y + 30;

x_buffer = 12;
y_buffer = 8;

pause = false;

text_x = text_box_x + text_box_image_x + text_box_image_width + x_buffer;
text_y = text_box_image_y +  y_buffer;

text_max_width = text_box_width - 2*(x_buffer) - text_box_image_width;

voice = snd_sound0;
counter = 0;
page = 0;
text[0] = "blablalb lalalsdla laijansdjinaj sndjnasjdnjansd jnajssdaasdasd asdasdasdnd jnasjndjs asdlablablalblala lsdlalsdlablablalblalalsdlalsdlablablalblalalsdlalsdlablablalblalalsdlalsdla";
text[1] = "Coco xixi popo";

name = "@LucasRafael";

text_col = c_white;
name_text_col = c_white;
font = fnt_text_16;

draw_set_font(font);
text_height = string_height("M");

event_perform(ev_other,ev_user1);