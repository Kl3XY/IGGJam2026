function player_normal(){
	var lr = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var ud = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	move_and_collide(lr * (4 * delta), ud * (3 * delta), obj_wall)

	ghostDir = point_direction(0, 0, lr, ud);
	
	if keyboard_check_pressed(vk_space) {
		activeState = player.ghost;	
		
		alarm_create(obj_player.transformDuration, function() {
			obj_player.activeState = player.normal;
		})
		
		if (obj_player.ghostControllingEntity != noone) {
			player_uncontrol_enemy()
		}
		
	}
	
	player_entity_controls()
	
}