if(!surface_exists(light)){
	light = surface_create(width, height);
	surface_set_target(light);
	surface_reset_target();
}
