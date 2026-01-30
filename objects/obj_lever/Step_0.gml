var collision_with_enemy = collision_circle(x, y, 32, obj_genericEnemy, false, false);
if collision_with_enemy != noone {
	if collision_with_enemy.isControlled and !hasBeenFlipped {
		connectedWall.x = 9999;
		image_index = 1;
	}
} else {
	hasBeenFlipped = false;
}