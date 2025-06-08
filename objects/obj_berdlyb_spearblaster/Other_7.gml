if (!loop)
{
	if (scr_sideb_get_phase() > 0)
		sprite_index = spr_berdlyb_super_jump_loop_serious;
	else
		sprite_index = spr_berdlyb_super_jump_loop;
	loop = true;
	image_index = 0;
}
