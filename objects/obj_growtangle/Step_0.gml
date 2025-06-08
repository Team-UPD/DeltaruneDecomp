if (!init)
{
	if (visible && (maxxscale != 2 || maxyscale != 2) && sprite_index == spr_battlebg_0)
	{
		customBox = true;
		if ((maxxscale % 1) != 0)
			maxxscale = round(maxxscale * 37.5) / 37.5;
		if ((maxyscale % 1) != 0)
			maxyscale = round(maxyscale * 37.5) / 37.5;
		var _tempxscale = maxxscale / 2;
		var _tempyscale = maxyscale / 2;
		var surf = surface_create(75 * _tempxscale, 75 * _tempyscale);
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		draw_sprite_ext(spr_battlebg_stretch, 0, 37 * _tempxscale, 37 * _tempyscale, _tempxscale, _tempyscale, 0, c_white, 1);
		spr_custom_box = sprite_create_from_surface(surf, 0, 0, 75 * _tempxscale, 75 * _tempyscale, false, false, round(37.5 * _tempxscale), round(37.5 * _tempyscale));
		sprite_index = spr_battlebg_stretch_hitbox;
		surface_reset_target();
		surface_free(surf);
	}
	init = 1;
}
growth = 0;
if (timer < maxtimer && growcon == 1)
	growth = 1;
if (timer > 0 && growcon == 3)
	growth = 1;
if (growth == 1)
{
	if (growcon == 1)
		timer += 1;
	if (growcon == 3)
		timer -= 1;
	image_xscale = maxxscale * (timer / maxtimer);
	image_yscale = maxyscale * (timer / maxtimer);
	image_angle = 180 + (180 * (timer / maxtimer)) + target_angle;
	image_alpha = 0.5 + ((timer / maxtimer) * 0.5);
	if (visible)
	{
		d = instance_create(x, y, obj_afterimage);
		d.sprite_index = spr_custom_box;
		d.image_xscale = image_xscale / (maxxscale / 2);
		d.image_yscale = image_yscale / (maxyscale / 2);
		d.image_angle = image_angle;
		d.depth = depth - 1;
		d.image_blend = image_blend;
		d.image_alpha = (1 - image_alpha) + 0.1;
		d.image_speed = 0;
	}
	if (timer >= maxtimer && growcon == 1)
	{
		growcon = 2;
		image_angle = target_angle;
	}
	if (timer <= 0 && growcon == 3)
		instance_destroy();
}
