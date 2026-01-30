
enum player {
	normal, // Default state
	ghost // Ghost state, able to take over enemies
}

activeState = player.normal; // Current State
transformDuration = 20; // the duration the player stays in ghost form

ghostDir = 0; // direction of the player for ghost
ghostCollisionRadius = 64; // collision circle
ghostControllingEntity = noone; // The entity that the player is controlling.

yGrv = 0.3;
ySpd = 0;
xSpd = 0;

runSpeed = 6;
currentSpeed = 0;
jumpHeight = -6;

transforming_gauge = 100;
gauge_x = 15;
gauge_y = 15;
flipGrv = false;

respawnX = 0;
respawnY = 0;

amtJumps = 1;
amtJumpsSet = 1;
isGliding = false;
canDash = true;

maskAmount = 4;
maskRotation = 0;
ang = 360;

selectedMask = 0;

masks = ds_list_create();
ds_list_add(masks, new NoMask())

