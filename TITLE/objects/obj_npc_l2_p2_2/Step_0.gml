if(direction >= 306 && direction <= 45){
	sprite_index = S_BHL_RIGHT;
} else if(direction >= 46 && direction <= 135){
	sprite_index = S_BHL_UP;
} else if(direction >= 136 && direction <= 225){
	sprite_index = S_BHL_LEFT;
} else if(direction >= 226 && direction <= 305){
	sprite_index = S_BHL_DOWN;
}

if(room = rm_11){
	sprite_index = NM_BR;
	image_speed = 0;
}