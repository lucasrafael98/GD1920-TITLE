if(room == rm_2 && cur_room = 1){
	audio_sound_gain(intro, 0, 1000);
	audio_sound_gain(cirloop, 1, 1000);
	cur_room = 2
}
if(room == rm_3 && cur_room = 2){
	audio_stop_sound(cirloop);
	audio_play_sound(question, 1000, true);
	cur_room = 3
}
