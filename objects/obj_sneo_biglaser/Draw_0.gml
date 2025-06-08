if (firecon == 0)
{
	image_yscale = 0.001;
	image_xscale = 2;
	if (effecttimer <= 42 && (effecttimer % 6) == 0)
	{
		if (_type == 1)
		{
			for (i = 0; i < 3; i++)
			{
				d = instance_create(x, y, obj_rouxls_power_up_orb);
				d.direction = irandom(120) + (i * 120);
				d.lifetime = 16;
				d.depth = depth + 1;
				d.image_blend = image_blend;
				d.parenttarget = id;
				d._type = _type;
			}
		}
		else
		{
			for (i = 0; i < 6; i++)
			{
				d = instance_create(x, y, obj_rouxls_power_up_orb);
				d.direction = irandom(60) + (i * 60);
				d.lifetime = 16;
				d.depth = depth + 1;
				d.image_blend = image_blend;
				d.parenttarget = id;
				d._type = _type;
			}
		}
	}
	if (effecttimer > 50)
		orbsize -= 4;
	else
		orbsize++;
	draw_set_color(c_white);
	draw_circle(x, y, max(2, (orbsize / 2) + (sin(siner / 2) * 2)), 0);
	effecttimer++;
	siner++;
}
else if (firecon == 1)
{
	active = true;
	mask_index = spr_sneo_laser;
	if (image_yscale < 0.5)
		image_yscale = scr_movetowards(image_yscale, 0.5, 0.1);
	else
		image_yscale -= 0.05;
	draw_set_color(c_white);
	draw_circle(x, y, image_yscale * 100, 0);
	draw_self();
}
else if (firecon == 2)
{
	draw_set_color(c_white);
	active = 0;
	mask_index = spr_nothing;
	if (image_yscale <= 0.01)
		image_yscale -= 0.0025;
	else
		image_yscale = scr_movetowards(image_yscale, 0.01, 0.1);
	if (image_yscale <= 0)
		instance_destroy();
	draw_circle(x, y, image_yscale * 100, 0);
	draw_self();
}
