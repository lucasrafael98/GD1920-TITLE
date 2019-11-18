/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_space) && !inConversation){
	inConversation = true;
	dialog_init();
	dialog_npc5();

	dialog_begin(DIALOG_NPC5_0);
	dialog_begin(DIALOG_NPC5_1); 	
}