if (init == 0)
{
	for (iy = 0; iy < 3; iy++)
	{
		for (ix = 0; ix < 4; ix++)
		{
			d = scr_bullet_create(x, y, obj_berdlyb_chirashibullet);
			xx = originx + (ix * 40) + (iy * 20) + irandom(35);
			yy = originy + (iy * 40) + irandom(35);
			d.___myrememberx = xx;
			d.___myremembery = yy;
			d.fireoffset += (ix + (3 - iy)) * 5;
			d.difficulty = difficulty;
			d.grazepoints = grazepoints;
			d.timer = round(angle_difference(135, point_direction(x, y, xx, yy)) / 10);
			if (!first_set)
				d.image_blend = c_gray;
		}
	}
	init = 1;
}
