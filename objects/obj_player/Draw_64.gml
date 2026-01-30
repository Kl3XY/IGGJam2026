

for (var i = 0; i < ds_list_size(masks); ++i) {
    var fin = ang * i + maskRotation;
	var _f = ds_list_find_value(masks, i);
	draw_sprite(_f.sprite, 0, 150 + i * 100, 15);
}

var get = ds_list_find_value(obj_player.masks, selectedMask);
if get != undefined {
	draw_text(50, 150, get.name)
}