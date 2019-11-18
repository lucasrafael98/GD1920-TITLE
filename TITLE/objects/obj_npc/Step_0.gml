/// @description Insert description here
// You can write your code in this editor

if(direction >= 306 && direction <= 45){
	sprite_index = spt_c_right;
} else if(direction >= 46 && direction <= 135){
	sprite_index = spt_c_up;
} else if(direction >= 136 && direction <= 225){
	sprite_index = spt_c_left;
} else if(direction >= 226 && direction <= 305){
	sprite_index = spt_c_down;
}
