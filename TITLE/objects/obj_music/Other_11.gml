/// @description Fade back into loop1
if(!cur_loop){
	audio_sound_gain(cirloop, 1, 3000);
	audio_sound_gain(cirloop2, 0, 3000);
	cur_loop = !cur_loop;
}
