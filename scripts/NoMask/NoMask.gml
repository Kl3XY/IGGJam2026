function NoMask() : mask() constructor{
	name = "No Mask";
	description = "Just your ordinary fox dash."
	sprite = nothing;
	uiSprite = spr_UI_Mask3
	
	function action() {
		obj_player.canDash = false;
		obj_player.activeState = player.ghost;	
		obj_player.currentSpeed += 10;
		obj_player.ySpd = -1;
		
		var spd = sign(obj_player.xSpd);
		obj_player.spdAdd = 5 * spd
		
		alarm_create(obj_player.transformDuration, function() {
			var lr = keyboard_check(vk_right) - keyboard_check(vk_left);
			var ud = keyboard_check(vk_down) - keyboard_check(vk_up);
			var dir = point_direction(0, 0, lr, ud);
			
			obj_player.activeState = player.normal;
			var spd = sign(obj_player.xSpd);
			obj_player.spdAdd = obj_player._x
			obj_player.ySpd = obj_player._y;
		})	
	}
}