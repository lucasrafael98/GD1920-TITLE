/// @description Insert description here
// You can write your code in this editor

if(is_array(scripts)){
	var pagescript = scripts[page];
	if(global.choice_dialogue) pagescript = pagescript[choice];
	show_debug_message(string(pagescript));
	if(pagescript != -1){
		var len = array_length_1d(pagescript);
		if(len == 1){script_execute(pagescript[0]);}
		else{
			var args = array_create(len-1,0);
			array_copy(args,0,pagescript,1,len-1);
			script_execute_alt(pagescript[0],args);
		}
	}
}