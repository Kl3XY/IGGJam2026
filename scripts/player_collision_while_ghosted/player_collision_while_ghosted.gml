function player_collision_while_ghosted(){
	var enemy = collision_circle(obj_player.x, obj_player.y, ghostCollisionRadius, controllableEnemy, false, false);
	with(enemy) {
		if enemy.canBeControlled {
			player_control_enemy(enemy)
			obj_player.activeState = player.normal;
		}
	}
}