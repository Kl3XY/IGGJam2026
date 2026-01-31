image_alpha -= 0.1 * delta;
if image_alpha < 0 {
	instance_destroy();	
}