/// @description Insert description here
// You can write your code in this editor
input_left = keyboard_check(vk_tab);

if(input_left && !global.in_dialogue){
	draw_sprite(spr_journal,0,x,y);
	
	draw_text_color(x,y,"*SKILLS*",c_black,c_black,c_black,c_black,1);
	
	draw_text_color(x,y+30,"Eavesdropping: "+ string(obj_player.s_eavesdropping),c_black,c_black,c_black,c_black,1);
	draw_text_color(x,y+60,"Readlips: "+ string(obj_player.s_readlips),c_black,c_black,c_black,c_black,1);
	draw_text_color(x,y+90,"Glance: "+ string(obj_player.s_glance),c_black,c_black,c_black,c_black,1);
	draw_text_color(x,y+120,"Checkpasses: "+ string(obj_player.s_checkpasses),c_black,c_black,c_black,c_black,1);
	
	//Initial Intel
	draw_text_color(x,y+160,"We caught word of someone initiated into this new organization.\n They won\'t have much to tell, but anything goes.\n\n"+
" Seems like we can never find anything about them, but even the most\n tightly knit group has a loose end or two.\n We\'ve been told he\'s a bit on the large side and"+
" he takes this bus daily,\n though we don\'t know when he gets in." ,c_black,c_black,c_black,c_black,1);

}