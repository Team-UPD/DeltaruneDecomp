function scr_draw_set_mask(arg0)
{
	if (!instance_exists(obj_growtangle))
		exit;
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	if (arg0)
	{
		draw_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, false);
		draw_set_alpha(1);
	}
}

function scr_draw_in_mask_begin()
{
	draw_set_alpha(1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	gpu_set_alphatestref(1);
}
