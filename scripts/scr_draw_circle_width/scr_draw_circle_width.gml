function scr_draw_circle_width(arg0, arg1, arg2, arg3)
{
	if (arg3 <= 1 || arg3 >= arg2)
	{
		draw_circle(arg0, arg1, arg2, arg3 < arg2);
		exit;
	}
	ring_surf = -1;
	if (!surface_exists(ring_surf))
	{
		ring_surf = surface_create(arg2 * 2, arg2 * 2);
		surface_set_target(ring_surf);
		draw_clear_alpha(c_black, 0);
		draw_circle(arg2, arg2, arg2, false);
		gpu_set_blendmode(bm_subtract);
		draw_circle(arg2, arg2, arg2 - arg3, false);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	draw_surface(ring_surf, arg0 - arg2, arg1 - arg2);
}
