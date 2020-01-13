var tboxs = instance_create_depth(0,0,-10,obj_text_success);
with(tboxs){
	if(argument[0] == "SUCCESS"){
		tboxs.text_box_s = spr_success;
	}else if(argument[0] == "FAILURE"){
		tboxs.text_box_s = spr_failure;
	}
}
return tboxs;