if (color == 1)
{
	z_charge_nolimit = z_hold - 35;
	if (z_charge_nolimit >= 0)
	{
		var scale = abs(sin(z_charge_nolimit / 10));
		draw_sprite_ext(sprite_index, 0, x - (scale * 10), y - (scale * 10), 1 + scale, 1 + scale, image_angle, image_blend, 0.3);
		scale = abs(sin(z_charge_nolimit / 14));
		draw_sprite_ext(sprite_index, 0, x - 2 - (scale * 10), y - 2 - (scale * 10), 1.2 + scale, 1.2 + scale, image_angle, image_blend, 0.3);
	}
	if (z_hold >= 15)
	{
		z_charge = z_hold - 15;
		if (z_charge >= 35)
			z_charge = 35;
		for (i = 0; i < 4; i += 1)
		{
			rotx = (i * 90) + (z_charge * 5);
			xx = sin(degtorad(rotx)) * (35 - z_charge);
			yy = cos(degtorad(rotx)) * (35 - z_charge);
			draw_sprite_ext(spr_yheart_charge, 0, (x + 9) - xx, (y + 10) - yy, 4 - ((z_charge * 2) / 35), 4 - ((z_charge * 2) / 35), 0, c_white, z_charge / 5);
		}
	}
	if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy) && obj_spamton_neo_enemy.bigshotcount > 0)
	{
		superchargetimer++;
		var scale = abs(sin(superchargetimer / 10));
		draw_sprite_ext(sprite_index, 0, x - (scale * 10), y - (scale * 10), 1 + scale, 1 + scale, image_angle, c_orange, 0.5);
		scale = abs(sin(z_charge_nolimit / 14));
		draw_sprite_ext(sprite_index, 0, x - 2 - (scale * 10), y - 2 - (scale * 10), 1.2 + scale, 1.2 + scale, image_angle, c_orange, 0.5);
	}
}
draw_self();
