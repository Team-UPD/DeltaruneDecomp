if (preptimer > 0)
{
	preptimer--;
	var invlerp = scr_inverselerp(5, 0, preptimer);
	var scale = lerp(0.7, 1, invlerp);
	draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, c_white, 1);
	if (preptimer == 0)
	{
		d = instance_create(x, y, obj_bulletparent);
		d.sprite_index = spr_maus_holesblack;
		d.depth += 3;
	}
}
else
{
	draw_sprite_ext(sprite_index, image_index, x + (random(shaky) * choose(1, -1)), y + (random(shaky) * choose(1, -1)), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
shaky = scr_approach(shaky, 0, max(0.1, shaky / 8));
