/// @description Insert description here
// You can write your code in this editor
journal_box_temp = spr_journal;
journal_box_temp_width = sprite_get_width(journal_box_temp);
journal_box_temp_height = sprite_get_height(journal_box_temp);

journal_x = camera_get_view_x(camera)+camera_get_view_width(camera)/2;
journal_y = camera_get_view_y(camera)+camera_get_view_height(camera)/2;

journal_kb_temp = spr_keyboard;
journal_kb_temp_width = sprite_get_width(journal_kb_temp);
journal_kb_temp_height = sprite_get_height(journal_kb_temp);

kb_x = camera_get_view_width(camera)/1.75 - journal_kb_temp_width/2;
kb_y = camera_get_view_height(camera)/2.3 - journal_kb_temp_height/2;

x_offset = -300;
y_offset = -100;


journal_box_text_x = journal_x + x_offset;
journal_box_text_y = journal_y + y_offset;

letter_text = "\n*SKILLS*\n"
+ "\nEavesdropping: "+ string(obj_player.s_eavesdropping)
+ "\nReadlips: "+ string(obj_player.s_readlips)
+ "\nGlance: "+ string(obj_player.s_glance)
+ "\nCheckpasses: "+ string(obj_player.s_checkpasses)
+ "\n\n*CONTROLS*"
+ "\n PRESS 'Q' to Check Passes"
+ "\n PRESS 'W' to Eavesdrop on conversations"
+ "\n PRESS 'E' to Read the passengers lips"
+ "\n PRESS 'R' to take a Glance at what the passengers are doing"
+ "\n PRESS 'Z' to fast forward time";

type_color = c_black;

font_l = fnt_letter;

draw_set_font(font_l);