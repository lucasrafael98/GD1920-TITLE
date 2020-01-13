
if(!collided){
	layer_background_visible(layer_background_get_id("Background"), false);
	with(obj_music){
		event_user(7);
	}
	collided = true;
	with(obj_player){
		grav = 0;
		vert_vel = 0;
	}
	layer_destroy_instances(layer_get_id("floors"));
}
