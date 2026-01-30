function player_uncontrol_enemy(enemy){
	enemy.isControlled = false;
	obj_player.image_alpha = 1;
	obj_player.ghostControllingEntity = noone;
}