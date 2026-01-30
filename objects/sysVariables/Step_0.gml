delta = (delta_time / 1000000) * 60; // Target 60.
if isPaused {
	delta = 0;	
}

if keyboard_check_pressed(vk_escape) {
	isPaused = !isPaused;	
}