/// @description Insert description here
// You can write your code in this editor
if(!turn_p_alpha){
	if (fade_alpha < 1) {fade_alpha += alpha_dec;}
	else{
		turn_p_alpha = true;
	}
}else{
	if (fade_alpha > 0) {fade_alpha -= alpha_dec};
	else{ instance_destroy(); }
}
