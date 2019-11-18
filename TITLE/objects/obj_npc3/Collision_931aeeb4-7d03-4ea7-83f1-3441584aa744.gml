/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_space) && !inConversation && !passCheckDone){
	inConversation = true;
	passCheckDone = true;
	dialog_init();
	dialog_npc3();

	dialog_begin(DIALOG_NPC3_0);
}