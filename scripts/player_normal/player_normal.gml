function player_normal(){
	var lr = keyboard_check(vk_right) - keyboard_check(vk_left);
	var ud = keyboard_check(vk_down) - keyboard_check(vk_up);

	if isGliding {
		if ySpd >= 0 {
			yGrv = 0.1;
		} else {
			yGrv = 0.1;	
		}
	} else {
		yGrv = 0.3;
	}

	xSpd = lr * currentSpeed * delta;
	if !flipGrv {
		ySpd += yGrv * delta;
	} else {
		ySpd -= yGrv * delta
	}
	
	
	if (place_meeting( x + xSpd, y, obj_wall)) {
		while(!place_meeting(x + sign(xSpd), y, obj_wall)) {
			x += sign(xSpd) * delta
		}
		xSpd = 0;
	}
	x += xSpd;
	
	
	if (place_meeting(x, y + ySpd, obj_wall)) {
		while(!place_meeting(x, y + sign(ySpd), obj_wall)) {
			y += sign(ySpd)
		}
		ySpd = 0;
	}
	y += ySpd;
	
	ghostDir = point_direction(0, 0, lr, ud);
	
	if is_on_floor() {
		currentSpeed = lerp(currentSpeed, runSpeed, 0.2);
		isGliding = false;
		if keyboard_check(vk_down) {
			transforming_gauge -= 2 * delta	
		}
		canDash = true;
		amtJumps = amtJumpsSet;
	}
	
	if keyboard_check_pressed(ord("Q")) and amtJumps > 0 {
		if flipGrv {
			ySpd = -jumpHeight;	
		} else {
			ySpd = jumpHeight;	
		}
		amtJumps--
	}	
	
	if keyboard_check_pressed(ord("W")) and canDash == true {
		var get = ds_list_find_value(obj_player.masks, selectedMask);
		if get != undefined {
			get.action();	
		}
	}
	
	player_entity_controls()
	
}