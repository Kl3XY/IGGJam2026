function player_control_enemy(enemy){
	enemy.isControlled = true;
	obj_player.image_alpha = 0;
	obj_player.ghostControllingEntity = enemy;
	obj_player.transforming_gauge = 100;
}