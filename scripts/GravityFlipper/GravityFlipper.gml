function GravityFlipper() : mask() constructor{
	name = "Gravity Flipper";
	description = "FLIP IT!"
	sprite = spr_mask_gravityFlipper;
	uiSprite = spr_UI_Mask1;
	
	function action() {
		obj_player.flipGrv = !obj_player.flipGrv;	
	}
	
	function unselect() {
		obj_player.flipGrv = false;	
	}
}