/// @description Insert description here
// You can write your code in this editor
if(direction >= 306 && direction <= 45){
	sprite_index = S_BM_RIGHT;
} else if(direction >= 46 && direction <= 135){
	sprite_index = S_BM_UP;
} else if(direction >= 136 && direction <= 225){
	sprite_index = S_BM_LEFT;
} else if(direction >= 226 && direction <= 305){
	sprite_index = S_BM_DOWN;
}