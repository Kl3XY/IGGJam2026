
enum player {
	normal, // Default state
	ghost // Ghost state, able to take over enemies
}

activeState = player.normal; // Current State
transformDuration = 50; // the duration the player stays in ghost form

ghostDir = 0; // direction of the player for ghost
ghostCollisionRadius = 64; // collision circle