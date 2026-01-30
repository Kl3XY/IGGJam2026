draw_self();

for (var i = 0; i < ds_list_size(masks); ++i) {
    var fin = ang * i + maskRotation;
	var _f = ds_list_find_value(masks, i);
	if selectedMask != i {
		draw_sprite(_f.sprite, 0, x + lengthdir_x(128, fin), y + lengthdir_y(128, fin));
	} else {
		draw_sprite(_f.sprite, 0, x, y);
	}
}