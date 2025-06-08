if (i_ex(target))
{
	image_index = target.image_index;
	sprite_index = target.sprite_index;
	if (global.chapter == 2 && target.object_index == obj_mauswheel_enemy)
		sprite_index = target.idlesprite;
	if (global.chapter == 2 && target.object_index == obj_berdlyb_enemy)
		sprite_index = target.hurtsprite;
	if (global.chapter == 2 && target.object_index == obj_spamton_neo_enemy)
	{
		siner += flashspeed;
		if (siner > 4 && sin(siner / 3) < 0)
		{
			instance_destroy();
			obj_spamton_neo_enemy.state = 0;
			exit;
		}
		if (siner == flashspeed)
		{
			with (obj_spamton_neo_enemy)
			{
				partmode = 40;
				shockthreshold = 15;
				shocktimer = 9999;
				hurttimer2 = 10;
			}
		}
		for (i = 0; i < 8; i += 1)
		{
			obj_spamton_neo_enemy.flash = 1;
			obj_spamton_neo_enemy.fsiner = obj_spamton_neo_enemy.partsiner[i] / 8;
		}
		exit;
	}
}
siner += flashspeed;
d3d_set_fog(true, flashcolor, 0, 1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, sin(siner / 3));
d3d_set_fog(false, c_black, 0, 0);
if (siner > 4 && sin(siner / 3) < 0)
	instance_destroy();
