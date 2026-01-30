function Parkourist() : mask() constructor{
	name = "Parkourist";
	description = "Running fast and toggle gliding on command"
	sprite = wall_removeable;
	
	function select() {
		obj_player.runSpeed = 12;
	}
	function action() {
		obj_player.isGliding = !obj_player.isGliding;
	}
	function unselect() {
		obj_player.isGliding = false;
		obj_player.runSpeed = 6;
	}
}