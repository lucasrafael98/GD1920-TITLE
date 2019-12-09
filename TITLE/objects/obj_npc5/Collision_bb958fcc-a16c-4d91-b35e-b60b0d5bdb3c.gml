/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_space) && !inConversation && !passCheckDone){
	inConversation = true;
	passCheckDone = true;
	with(obj_music){
		event_user(0);
	}
}