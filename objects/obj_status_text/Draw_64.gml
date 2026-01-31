draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_set_font(Winds)
draw_set_color(c_white)

var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);

draw_text(_vw / 2, _vh / 2, string_copy(str, 0, copyVal));