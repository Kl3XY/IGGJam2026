if distance_to_object(obj_player) < 128 {
	if hasEntered == false {
		instance_create_depth(x, y, depth - 300, obj_status_text)
		hasEntered = true;
		obj_player.respawnX = x;
		obj_player.respawnY = y;
	}	
}