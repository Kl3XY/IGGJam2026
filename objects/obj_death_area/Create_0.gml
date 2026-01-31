part_sys = part_system_create();
part_type = part_type_create();

part_system_depth(part_sys, 350)

part_type_sprite(part_type, circle, false, false, false);
part_type_scale(part_type, 4, 4);
part_type_size(part_type, 1, 1, -0.001, 0);