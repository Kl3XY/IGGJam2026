function is_on_floor(){
	if !obj_player.flipGrv {
		return place_meeting(x, y + 5, obj_wall);
	} else {
		return place_meeting(x, y - 5, obj_wall);
	}
}