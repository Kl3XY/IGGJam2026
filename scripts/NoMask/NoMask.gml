function NoMask() : mask() constructor{
	name = "No Mask";
	description = "Just your ordinary fox dash."
	sprite = enemyplaceholder;
	
	function action() {
		obj_player.canDash = false;
		obj_player.activeState = player.ghost;	
		obj_player.currentSpeed += 10;
		obj_player.ySpd = -1;
		
		alarm_create(obj_player.transformDuration, function() {
			obj_player.activeState = player.normal;
		})	
	}
}