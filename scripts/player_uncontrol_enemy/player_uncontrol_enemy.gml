function player_uncontrol_enemy(){
	obj_player.ghostControllingEntity.isControlled = false;
	obj_player.ghostControllingEntity.canBeControlled = false;
	alarm_create(__controlCooldownSet, function(args) {
		var _inst = args[0];
		
		_inst.canBeControlled = true;
	}, [obj_player.ghostControllingEntity])
	obj_player.image_alpha = 1;
	obj_player.ghostControllingEntity = noone;
}