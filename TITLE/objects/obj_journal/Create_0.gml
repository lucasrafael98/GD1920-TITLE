/// @description Insert description here
// You can write your code in this editor
journal_box_temp = spr_journal;
journal_box_temp_width = sprite_get_width(journal_box_temp);
journal_box_temp_height = sprite_get_height(journal_box_temp);

journal_x = room_width/2 - journal_box_temp_width/2;
journal_y = room_height/2 - journal_box_temp_height/2;


x_offset = 40;
y_offset = 70;


journal_box_text_x = journal_x + x_offset;
journal_box_text_y = journal_y + y_offset;

letter_text = "\n*SKILLS*\n"
+ "\nEavesdropping: "+ string(obj_player.s_eavesdropping)
+ "\nReadlips: "+ string(obj_player.s_readlips)
+ "\nGlance: "+ string(obj_player.s_glance)
+ "\nCheckpasses: "+ string(obj_player.s_checkpasses)
+ "\n\n PRESS 'Z' to fast forward time"
+"\n\nWe caught word of someone initiated into this new organization.\n They won\'t have much to tell, but anything goes.\n\n"+
" Seems like we can never find anything about them, but even the most\n tightly knit group has a loose end or two.\n We\'ve been told he\'s a bit on the large side and"+
" he takes this bus \ndaily, though we don\'t know when he gets in.";

type_color = c_black;

font_l = fnt_letter;

draw_set_font(font_l);