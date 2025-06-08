if (init == 0)
{
	snd_stop(snd_rocket);
	snd_play(snd_rocket);
	init = 1;
	timer = 2;
	path_start(bulletPath, 21, path_action_stop, false);
}
if (spawnrate >= 0)
{
	if (spawntimer == spawnrate)
	{
		d = scr_childbullet(x, y, obj_berdlyb_spearblast_trail);
		d.grazepoints = childgraze;
		d.image_angle = direction;
		spawntimer = 0;
	}
	else
	{
		spawntimer++;
	}
}
if (spawnchild >= 1)
{
	timer--;
	if (timer <= 0)
	{
		for (i = 0; i < spawnchild; i++)
		{
			d = scr_childbullet(x, y, obj_berdlyb_spearblast_mini);
			d.grazepoints = childgraze;
			d.direction = direction + childOffset;
			if (spawnchild == 2)
			{
				d.x += lengthdir_x(3, d.direction);
				d.y += lengthdir_y(3, d.direction);
			}
			d.image_angle = direction + childOffset;
			d.updateimageangle = 1;
			timer = 2;
			if (i == 0)
				childOffset *= -1;
		}
	}
}
image_angle = direction;
