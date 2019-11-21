var tbox = instance_create_layer(0,0,"Text_Layer",obj_text);

with(tbox){
	global.in_dialogue = true;
	text = argument[0];
	speakers = argument[1];
	next_line = argument[2];

	var len = array_length_1d(text);
	var i=0;repeat(len){
		names[i] = speakers[i].name;
		portraits[i] = speakers[i].portrait_index;
		voices[i] = speakers[i].voice;
		i++;
	}
	event_perform(ev_other,ev_user1);
}

return tbox;