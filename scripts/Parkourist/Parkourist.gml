function Parkourist() : mask() constructor{
	name = "Parkourist";
	description = "Running fast and toggle gliding on command"
	sprite = spr_mask_parkourist;
	uiSprite = spr_UI_Mask2;
	
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