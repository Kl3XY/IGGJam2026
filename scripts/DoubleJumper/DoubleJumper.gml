function DoubleJumper() : mask() constructor{
	name = "Double Jumper";
	description = "Jump... Twice!"
	sprite = death;
	
	function select() {
		obj_player.amtJumpsSet = 2;	
	}
	
	function unselect() {
		obj_player.amtJumpsSet = 1;
	}
}