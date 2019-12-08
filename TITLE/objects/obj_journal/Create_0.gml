/// @description Insert description here
// You can write your code in this editor
journal_box_temp = spr_journal;
journal_box_temp_width = sprite_get_width(journal_box_temp);
journal_box_temp_height = sprite_get_height(journal_box_temp);

journal_x = room_width/2 - journal_box_temp_width/2;
journal_y = room_height/2 - journal_box_temp_height/2;

journal_kb_temp = spr_keyboard;
journal_kb_temp_width = sprite_get_width(journal_kb_temp);
journal_kb_temp_height = sprite_get_height(journal_kb_temp);

kb_x = room_width/1.75 - journal_kb_temp_width/2;
kb_y = room_height/2.3 - journal_kb_temp_height/2;

x_offset = 50;
y_offset = 150;


journal_box_text_x = journal_x + x_offset;
journal_box_text_y = journal_y + y_offset;

letter_text = "\n*SKILLS*\n"
+ "\nEavesdropping: "+ string(obj_player.s_eavesdropping)
+ "\nReadlips: "+ string(obj_player.s_readlips)
+ "\nGlance: "+ string(obj_player.s_glance)
+ "\nCheckpasses: "+ string(obj_player.s_checkpasses)
+ "\n\n*CONTROLS*"
+ "\n PRESS 'Q' to Check Passes"
+ "\n PRESS 'W' to take a Glance at what the passengers are doing"
+ "\n PRESS 'E' to Eavesdrop on conversations"
+ "\n PRESS 'R' to Read the passengers lips"
+ "\n PRESS 'Z' to fast forward time";

type_color = c_black;

font_l = fnt_letter;

draw_set_font(font_l);