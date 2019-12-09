var skill = argument[0];
var dc = argument[1];
	global.skillcheckTimer= global.skillcheckTimer + 1 ; //Subject to balancing
switch skill{
	case 1:
		var result = (obj_player.s_checkpasses - obj_player.a_susp_mod) >= dc;
		if(result){ create_textbox_success("SUCCESS","Check Passes",c_green); }
		else{ create_textbox_success("FAILURE","Check Passes",c_red); }
		return result;
	case 2:
		var result = (obj_player.s_eavesdropping - obj_player.a_susp_mod) >= dc;
		if(result){ create_textbox_success("SUCCESS","Eavesdropping",c_green); }
		else{ create_textbox_success("FAILURE","Eavesdropping",c_red); }
		return result;
	case 3:
		var result = (obj_player.s_glance - obj_player.a_susp_mod) >= dc;
		if(result){ create_textbox_success("SUCCESS","Glance",c_green); }
		else{ create_textbox_success("FAILURE","Glance",c_red); }
		return result;
	case 4: // never reached, check skillBranch_RL
		var result = (obj_player.s_readlips - obj_player.a_susp_mod) >= dc;
		if(result){ create_textbox_success("SUCCESS","Read Lips",c_green); }
		else{ create_textbox_success("FAILURE","Read Lips",c_red); }
		return result;
}