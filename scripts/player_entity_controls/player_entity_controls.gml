function player_entity_controls(){
	if ghostControllingEntity != noone {
		if mouse_check_button_pressed(mb_left) {
			ghostControllingEntity.action1();
		}
		
		if mouse_check_button_pressed(mb_right) {
			ghostControllingEntity.action2();
		}
	}
}