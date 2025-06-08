if (lerpintimer < 16 && con == 0)
{
	y = lerp(ystart - 200, ystart + 160, lerpintimer / 15);
	lerpintimer++;
}
if (lerpintimer < 16 && con == 2)
{
	y = lerp(ystart + 160, ystart - 200, lerpintimer / 15);
	lerpintimer++;
}
if (con == 0)
{
	timer++;
	if (timer >= 16)
	{
		timer = 0;
		con = 1;
		ysave = y;
		for (i = 0; i < 6; i += 1)
		{
			if (visiblevine[i] == 1)
			{
				target = instance_create(x, y, obj_queen_throwtarget);
				target.maker = id;
				target.x1 = x1[i];
				target.x2 = x2[i];
				target.y1 = y1[i];
				target.y2 = y2[i];
				target.vineid = i;
				target.x_offset = x_offset[i];
				with (target)
				{
					path = path_add();
					path_set_kind(path, 0);
					path_set_closed(path, false);
					path_add_point(path, x1, y1, 100);
					path_add_point(path, x2, y2, 100);
					path_start(path, 4, path_action_stop, true);
				}
				if (difficulty == 1)
				{
					if (i == 0)
						target.siner = 0;
					if (i == 1)
						target.siner = 110;
					target.n = 0.05;
				}
			}
		}
	}
}
if (con == 1)
{
	siner += 0.4;
	y = ysave + (sin(siner / 6) * 3);
}
if (con == 2)
{
	if (lerpintimer == 9)
		obj_berdlyplug_enemy.con = 2;
	if (lerpintimer >= 15)
	{
		instance_destroy();
		obj_berdlyplug_enemy.bardlymercy = bardlymercy;
		obj_berdlyplug_enemy.alarm[0] = 5;
	}
}
draw_self();
for (i = 0; i < 6; i += 1)
{
	x1[i] = x;
	y1[i] = y - 18;
	var w = sprite_get_width(spr_berdlyact_queen_wire);
	var angl = point_direction(x1[i], y1[i], x2[i], y2[i]);
	var xx = lengthdir_x(w, angl);
	var yy = lengthdir_y(w, angl);
	for (var ii = 0; ii < 40; ii++)
	{
		if (visiblevine[i] == 1)
			draw_sprite_ext(spr_berdlyact_queen_wire, 0, x1[i] + (xx * ii), y1[i] + (yy * ii), 1, 1, angl, -1, 1);
	}
}
