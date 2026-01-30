function selectMask(maskSlot){
	if ds_list_find_value(obj_player.masks, maskSlot) != undefined {
		var get = ds_list_find_value(obj_player.masks, selectedMask);
		if get != undefined {
			get.unselect();	
		}
		selectedMask = maskSlot;	
		var get = ds_list_find_value(obj_player.masks, selectedMask);
		if get != undefined {
			get.select();	
		}
	}
}