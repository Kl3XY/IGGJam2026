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
	
	if flipGrv {
		image_yscale = -1;	
	} else {
		image_yscale = 1;	
	}
	
	angle = 0;
	
	spdAdd = clamp(spdAdd, -maxSpeed, maxSpeed)
	xSpd = spdAdd;
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
			
		if lr != 0 {
			sprite_index = spr_player_walk;	
			image_xscale = lr;
			spdAdd += lr * 0.40 * delta
		} else {
			sprite_index = spr_player_idle;	
			spdAdd = lerp(spdAdd, 0, 0.5 * delta);
		}

		
		currentSpeed = lerp(currentSpeed, runSpeed, 0.2);
		isGliding = false;
		if keyboard_check(vk_down) {
			transforming_gauge -= 2 * delta	
		}
		canDash = true;
		amtJumps = amtJumpsSet;
	} else {
		if lr != 0 {
			spdAdd += lr * 0.3 * delta
		}
		
		sprite_index = spr_player_jump	

	}
	
	if (sign(xSpd) != lr and abs(xSpd) > 0.1) {
		sprite_index = spr_player_switchPos	
	}
	
	if keyboard_check_pressed(ord("Q")) and amtJumps > 0 {
		if flipGrv {
			ySpd = -jumpHeight;	
			image_index = 0;
		} else {
			image_index = 0;
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