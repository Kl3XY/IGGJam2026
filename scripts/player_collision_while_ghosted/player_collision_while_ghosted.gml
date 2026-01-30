function player_collision_while_ghosted(){
	var collisionCircle = collision_circle(x, y, ghostCollisionRadius, controllableEnemy, false, false);
	with(collisionCircle) {
		isControlled = true;	
	}
}