function player_ghost(){
	var _x = lengthdir_x(10 * delta, obj_player.ghostDir);
	var _y = lengthdir_y(10 * delta, obj_player.ghostDir);
	
	var lr = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var ud = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	var pointDirection = point_direction(0, 0, lr, ud);	
	
	obj_player.ghostDir -= angle_difference(obj_player.ghostDir, pointDirection) * 0.1
	
	obj_player.image_angle += 30 * delta;
	
	move_and_collide(_x, _y, obj_wall)
	
	player_collision_while_ghosted();
}