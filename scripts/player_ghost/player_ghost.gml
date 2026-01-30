function player_ghost(){
	var _x = lengthdir_x(currentSpeed * delta, obj_player.ghostDir);
	var _y = lengthdir_y(currentSpeed * delta, obj_player.ghostDir);
	
	var lr = keyboard_check(vk_right) - keyboard_check(vk_left);
	var ud = keyboard_check(vk_down) - keyboard_check(vk_up);

	var pointDirection = point_direction(0, 0, lr, ud);	
	
	obj_player.ghostDir -= angle_difference(obj_player.ghostDir, pointDirection) * 0.1

	move_and_collide(_x, _y, obj_wall)
	
	player_collision_while_ghosted();
}