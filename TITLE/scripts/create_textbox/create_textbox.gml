var tbox = instance_create_layer(0,0,"Text_Layer",obj_text);

with(tbox){
	global.in_dialogue = true;
	text = get_dialogue_part(argument[0],"text");
	speakers = get_dialogue_part(argument[0],"speaker");
	next_line = get_dialogue_part(argument[0],"next_part");
	scripts = get_dialogue_part(argument[0],"script");
	var len = array_length_1d(text);
	var i=0;repeat(len){
		var temp_speakers = get_dialogue_part(argument[0],"speaker");
		names[i] = temp_speakers[i].name;
		portraits[i] = temp_speakers[i].portrait_index;
		voices[i] = temp_speakers[i].voice;
		i++;
	}
	event_perform(ev_other,ev_user1);
}

return tbox;