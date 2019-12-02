result = [];
var len = array_length_1d(argument0);
var i=0;repeat(len){
	//show_debug_message(argument0);
	//show_debug_message(argument1);

	result[i] = ds_map_find_value(argument0[i], argument1);
	i++;
}
return result;