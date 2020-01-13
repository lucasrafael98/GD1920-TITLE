if(room == rm_2 && cur_room = 1){
	audio_sound_gain(intro, 0, 1000);
	audio_sound_gain(cirloop, 1, 1000);
	cur_room = 2
} else if(room == rm_3 && cur_room = 2){
	audio_stop_sound(cirloop);
	audio_stop_sound(cirloop2);
	audio_stop_sound(intro);
	audio_play_sound(question, 1000, true);
	cur_room = 3
}else if(room == rm_4 && cur_room != 4){
	audio_stop_sound(cirloop);
	audio_stop_sound(cirloop2);
	audio_stop_sound(intro);
	audio_play_sound(lvl2_c1, 1000, true);
	audio_play_sound(train, 1000, true);
	cur_room = 4;
}else if(room == rm_6 && cur_room != 6){
	audio_stop_sound(lvl2_c1);
	cur_room = 6;
}else if(room == rm_7 && cur_room != 7){
	audio_stop_all();
	audio_play_sound(satisfied, 1000, false);
	cur_room = 7;
}else if(room == rm_8 && cur_room != 8){
	audio_stop_all();
	audio_play_sound(satisfied, 1000, false);
	cur_room = 8;
}else if(room == rm_9 && cur_room != 9){
	audio_stop_all();
	audio_play_sound(ending, 1000, false);
	cur_room = 9;
}else if(room == rm_10 && cur_room != 10){
	audio_stop_sound(newlife);
	audio_play_sound(newlife, 1000, true);
	cur_room = 10;
} else if(room == rm_11 && cur_room != 11){
	audio_stop_sound(newlife);
	audio_play_sound(keys_c1, 1000, true);
	audio_play_sound(keys_c2, 1000, true);
	audio_play_sound(pad_c1, 1000, true);
	audio_play_sound(pad_c2, 1000, true);
	audio_play_sound(pad_c3, 1000, true);
	audio_play_sound(pad_c4, 1000, true);
	audio_play_sound(pad_c5, 1000, true);
	audio_play_sound(pluc_c1, 1000, true);
	audio_play_sound(pluc_c2, 1000, true);
	audio_play_sound(pluc_c3, 1000, true);
	audio_play_sound(pluc_c4, 1000, true);
	audio_play_sound(pluc_c5, 1000, true);
	cur_room = 11;
}else if(room == rm_12 && cur_room != 12){
	audio_stop_all()
	audio_play_sound(smind_music1, 1000, false);
	cur_room = 12;
}else if(room == rm_13 && cur_room != 13){
	audio_stop_all()
	audio_play_sound(drifting, 1000, false);
	cur_room = 13;
}