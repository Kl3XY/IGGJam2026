function GravityFlipper() : mask() constructor{
	name = "Gravity Flipper";
	description = "FLIP IT!"
	sprite = wall;
	
	function action() {
		obj_player.flipGrv = !obj_player.flipGrv;	
	}
	
	function unselect() {
		obj_player.flipGrv = false;	
	}
}