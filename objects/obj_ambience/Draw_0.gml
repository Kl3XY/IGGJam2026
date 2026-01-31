if !surface_exists(surf)
{
	var _cw = camera_get_view_width(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	surf = surface_create(_cw, _ch);
	surface_set_target(surf);
	draw_set_colour(#222034);
	draw_set_alpha(0);
	draw_rectangle(0, 0, _cw, _cw, false);
	surface_reset_target();
}
else
{
	if (surface_exists(surf)) 
	{
		var _cw = camera_get_view_width(view_camera[0]);
		var _ch = camera_get_view_height(view_camera[0]);
		var _cx = camera_get_view_x(view_camera[0]);
		var _cy = camera_get_view_y(view_camera[0]);
		surface_set_target(surf);
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_rectangle(0, 0, _cw, _ch, 0);
		gpu_set_blendmode(bm_subtract);
		with (obj_lightParent)
		{
			draw_sprite_ext(lighting, 0, x - _cx, y - _cy, image_xscale, image_yscale, 0, c_white, 1);  
		}
		gpu_set_blendmode(bm_normal);
		
		draw_set_alpha(1);
		surface_reset_target();
		with (obj_lightParent)
		{
			draw_sprite_ext(lighting, 0, x , y , image_xscale, image_yscale, 0, image_blend, 0.35);  
		}
		shader_set(sh_blackReplace);
		draw_surface(surf, _cx, _cy);
		shader_reset();
	}
}