function scr_draw_in_box_begin()
{
	if (!instance_exists(obj_growtangle))
		exit;
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, false);
	draw_set_alpha(1);
	draw_rectangle((obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + 5, (obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + 5, (obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 4, (obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 4, false);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	gpu_set_alphatestref(1);
}

function scr_draw_in_box_ext_begin(arg0, arg1)
{
	if (!instance_exists(obj_growtangle))
		exit;
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, false);
	draw_set_alpha(1);
	draw_rectangle(((obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + 5) - arg0, ((obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + 5) - arg1, ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 4) + arg0, ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 4) + arg1, false);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	gpu_set_alphatestref(1);
}
