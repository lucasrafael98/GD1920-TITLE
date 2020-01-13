/// @description Changes in Room11/Final Showdown
show_debug_message(cur_mad);
if(cur_mad == 0){
	audio_sound_gain(keys_c1, 0, 2000);
	audio_sound_gain(keys_c2, 0.85, 200);
	cur_mad++;
} else if (cur_mad == 1){
	audio_sound_gain(pad_c1, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 2){
	audio_sound_gain(pad_c1, 0, 2000);
	audio_sound_gain(pad_c2, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 3){
	audio_sound_gain(pad_c2, 0, 2000);
	audio_sound_gain(pad_c3, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 4){
	audio_sound_gain(pad_c3, 0, 2000);
	audio_sound_gain(pad_c4, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 5){
	audio_sound_gain(pad_c4, 0, 2000);
	audio_sound_gain(pad_c5, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 6){
	audio_sound_gain(pad_c5, 0, 2000);
	audio_sound_gain(pluc_c1, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 7){
	audio_sound_gain(pluc_c1, 0, 2000);
	audio_sound_gain(pluc_c2, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 8){
	audio_sound_gain(pluc_c2, 0, 2000);
	audio_sound_gain(pluc_c3, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 9){
	audio_sound_gain(pluc_c3, 0, 2000);
	audio_sound_gain(pluc_c4, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 10){
	audio_sound_gain(pluc_c4, 0, 2000);
	audio_sound_gain(pluc_c5, 0.85, 200);
	cur_mad++;
} else if(cur_mad == 11){
	audio_sound_gain(pluc_c5, 0, 3000);
	audio_play_sound(mad_final, 1000, false);
	audio_sound_gain(mad_final, 0.85, 5000);
	cur_mad++;
}

