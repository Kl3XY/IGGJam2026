function player_ghost(){
	var _x = lengthdir_x(10, ghostDir);
	var _y = lengthdir_y(10, ghostDir);
	
	var lr = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var ud = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	var new_dir = point_direction(0, 0, lr, ud);	
	
	ghostDir -= angle_difference(ghostDir, new_dir) * 0.1
	
	image_angle += 30;
	
	move_and_collide(_x, _y, obj_wall)
}