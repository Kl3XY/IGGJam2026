destroy = false;
autumnLeaves = ds_list_create();

collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, autumn, false, false, autumnLeaves, false)

for (var i = 0; i < 20; ++i) {
    ds_list_add(autumnLeaves,
		instance_create_depth(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), depth, autumn)
	)
}

function clearLeaves() {
	for (var i = 0; i < ds_list_size(autumnLeaves); ++i) {
	    var _f = ds_list_find_value(autumnLeaves, i);
		instance_destroy(_f)
	}	
}