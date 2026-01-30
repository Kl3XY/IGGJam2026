function player_uncontrol_enemy(){
	if obj_player.ghostControllingEntity != noone {
		obj_player.ghostControllingEntity.isControlled = false;
		obj_player.ghostControllingEntity.canBeControlled = false;
		obj_player.image_alpha = 1;
		instance_destroy(obj_player.ghostControllingEntity);
		obj_player.ghostControllingEntity = noone;
		obj_player.flipGrv = false
		obj_player.amtJumpsSet = 2;
	}
}