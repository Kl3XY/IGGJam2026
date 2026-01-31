function player_ghost(){
	sprite_index = spr_player_dash;
	_x = lengthdir_x(currentSpeed * delta, obj_player.ghostDir);
	_y = lengthdir_y(currentSpeed * delta, obj_player.ghostDir);
	
	image_xscale = 1;
	
	angle = obj_player.ghostDir
	show_debug_message(angle);
	
	var lr = keyboard_check(vk_right) - keyboard_check(vk_left);
	var ud = keyboard_check(vk_down) - keyboard_check(vk_up);

	var pointDirection = point_direction(0, 0, lr, ud);	
	
	if lr != 0 or ud != 0 {
		obj_player.ghostDir -= angle_difference(obj_player.ghostDir, pointDirection) * 0.05 * delta
	}
	
	ghostCooldown -= 1 * delta;
	
	if ghostCooldown < 0 {
		ghostCooldown = 2;
		instance_create_depth(x, y, depth, playerGhost)
	}

	move_and_collide(_x, _y, obj_wall)
	
	player_collision_while_ghosted();
}