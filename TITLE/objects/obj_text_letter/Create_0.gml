/// @description Insert description here
// You can write your code in this editor
letter_box_temp = spr_letter;
letter_box_temp_width = sprite_get_width(letter_box_temp);
letter_box_temp_height = sprite_get_height(letter_box_temp);

letter_x = room_width/2 - letter_box_temp_width/2;
letter_y = room_height/2 - letter_box_temp_height/2;

x_offset = 50;
y_offset = 50;


letter_box_text_x = letter_x + x_offset;
letter_box_text_y = letter_y + y_offset;

letter_text = "\n\nWe caught word of someone initiated\n into this new organization.\n They won\'t have much to tell,\n but anything goes.\n\n"+
" Seems like we can never find\n anything about them, but even the\n most tightly knit group has a\n loose end or two.\n\n We\'ve been told he\'s a bit on the\n large side and"+
" he takes this bus\n daily, though we don\'t know\n when he gets in.";

type_color = c_black;

font_l = fnt_letter;

draw_set_font(font_l);