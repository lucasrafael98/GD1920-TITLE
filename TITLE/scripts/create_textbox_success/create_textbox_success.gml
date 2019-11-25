var tboxs = instance_create_layer(0,0,"Text_Layer",obj_text_success);
with(tboxs){
	tboxs.type = argument[0];
	tboxs.skill = argument[1];
	tboxs.type_color = argument[2];
}
return tboxs;