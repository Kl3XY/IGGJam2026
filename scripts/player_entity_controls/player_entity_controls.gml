function player_entity_controls(){
	if ghostControllingEntity != noone {
		if keyboard_check_pressed(ord("X")) {
			ghostControllingEntity.action1();
		}
	}
}