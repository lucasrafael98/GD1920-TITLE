/// @description Fade into loop2
if(cur_loop){
	audio_sound_gain(cirloop, 0, 3000);
	audio_sound_gain(cirloop2, 0.85, 3000);
	cur_loop = !cur_loop;
}