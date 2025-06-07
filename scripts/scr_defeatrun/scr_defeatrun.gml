function scr_defeatrun()
{
	defeatanim = instance_create(x, y, obj_defeatanim);
	defeatanim.sprite_index = sprite_index;
	defeatanim.sprite_index = hurtsprite;
	defeatanim.image_index = 0;
	defeatanim.image_xscale = image_xscale;
	defeatanim.image_yscale = image_yscale;
	instance_destroy();
}
