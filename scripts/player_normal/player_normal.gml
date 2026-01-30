function player_normal(){
	var lr = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var ud = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	move_and_collide(lr * 4, ud * 3, obj_wall)

	ghostDir = point_direction(0, 0, lr, ud);
	
	if keyboard_check_pressed(vk_space) {
		activeState = player.ghost;	
		alarm[0] = transformDuration;
	}
}