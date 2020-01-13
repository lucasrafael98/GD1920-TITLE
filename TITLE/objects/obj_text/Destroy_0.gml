/// @description Insert description here
// You can write your code in this editor
global.in_dialogue = false;
if(room == rm_2){
	global.timer -= 10 * 60 * 1000;
	with(obj_music){
		event_user(1);
	}
} else if (room == rm_5){
	global.timer2 -= 10 * 60 * 1000;
}

obj_player.active_tbox = noone;