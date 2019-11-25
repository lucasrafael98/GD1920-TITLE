if(direction >= 306 && direction <= 45){
	sprite_index = S_BHL_RIGHT;
} else if(direction >= 46 && direction <= 135){
	sprite_index = S_BHL_UP;
} else if(direction >= 136 && direction <= 225){
	sprite_index = S_BHL_LEFT;
} else if(direction >= 226 && direction <= 305){
	sprite_index = S_BHL_DOWN;
}

if (canInteract){
	image_blend = make_color_rgb(255, colorLevel, colorLevel);
	colorLevel+=3;
	if(colorLevel > 255) colorLevel = 120;
} else if(colorLevel != 0) {
	image_blend = -1;
	colorLevel = 120;
}