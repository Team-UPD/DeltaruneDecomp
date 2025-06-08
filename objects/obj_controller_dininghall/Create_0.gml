if (scr_sideb_get_phase() == 3)
	instance_destroy();
if (global.flag[382] == 0)
{
	con = 0;
	memx = 0;
	memy = 0;
}
if (global.flag[382] == 1)
{
	con = 28980;
	for (var i = 0; i < 7; i++)
	{
		shade = instance_create(166 + (i * 104), 364, obj_marker);
		shade.sprite_index = spr_saucershadow;
		shade.image_alpha = 0.25;
		shade.image_xscale = 2;
		shade.image_yscale = 2;
		shade.depth = 890000;
	}
}
tablespawn = false;
