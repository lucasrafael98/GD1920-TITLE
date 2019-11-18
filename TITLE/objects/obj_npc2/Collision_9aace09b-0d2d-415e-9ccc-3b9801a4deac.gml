/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_space) && !inConversation){
	inConversation = true;
	dialog_init();
	dialog_npc2();

	dialog_begin(DIALOG_NPC2_1);
	dialog_begin(DIALOG_NPC2_2); 	
}