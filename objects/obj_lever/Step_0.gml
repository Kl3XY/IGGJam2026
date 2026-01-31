var collision_with_enemy = collision_circle(x, y, 32, obj_player, false, false);
if collision_with_enemy != noone {
	if !hasBeenFlipped {
		connectedWall.x = 9999;
		connectedWall.clearLeaves();
		image_index = 1;
	}
} else {
	hasBeenFlipped = false;
}