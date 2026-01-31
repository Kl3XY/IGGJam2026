draw_text(15, 250, spdAdd)

for (var i = 0; i < ds_list_size(masks); ++i) {
    var fin = ang * i + maskRotation;
	var _f = ds_list_find_value(masks, i);
	draw_sprite_ext(_f.uiSprite, 0, 100 + i * 100, 650, 0.5, 0.5, 0, c_white, 1);
}

var get = ds_list_find_value(obj_player.masks, selectedMask);
if get != undefined {
	draw_text(50, 150, get.name)
}