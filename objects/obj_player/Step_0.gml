switch(activeState) {
	case player.normal:
		player_normal();
	break;
	case player.ghost:
		player_ghost();
	break;
}

if transforming_gauge > 0 and transforming_gauge < 30 {
	gauge_x = random_range(-15, 15);
	gauge_y = random_range(-15, 15);
} else {
	gauge_x = 15;
	gauge_y = 15;
}

if keyboard_check_pressed(ord("1")) {
	selectMask(0);
}
if keyboard_check_pressed(ord("2")) {
	selectMask(1);
}
if keyboard_check_pressed(ord("3")) {
	selectMask(2);
}
if keyboard_check_pressed(ord("4")) {
	selectMask(3);
}

show_debug_message(selectedMask)

if keyboard_check_pressed(ord("R")) {
	x = respawnX;
	y = respawnY;
}

if transforming_gauge <= 0 {
	player_uncontrol_enemy();
} else {
	transforming_gauge -= 0.3 * delta;
}

maskRotation += delta * 4;
ang = lerp(ang, 360 / ds_list_size(masks), 0.2)