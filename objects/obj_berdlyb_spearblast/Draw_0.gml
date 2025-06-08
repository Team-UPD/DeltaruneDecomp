if (firedShots >= bulletCount)
	exit;
if (progressLoop > (pathLifetime + 1))
{
	if (timer >= shootSpeed)
	{
		if (firedShots == 0)
		{
			var muzzleflash = scr_bullet_create(x - 21, y, obj_berdlyb_spearblast_trail);
			muzzleflash.image_angle = 180;
			muzzleflash.depth -= 2;
		}
		d = scr_bullet_create(x, y, obj_berdlyb_spearblast_bullet);
		d.grazepoints = grazepoints;
		d.childgraze = childgraze;
		d.direction = point_direction(x, y, path_get_x(mypath, 0.02), path_get_y(mypath, 0.02));
		timer = 0;
		d.bulletPath = mypath;
		if (special >= 1 && firedShots == 1)
			d.spawnchild = special;
		firedShots++;
	}
	else
	{
		timer++;
	}
	exit;
}
if (progressLoop < pathLifetime)
	draw_set_alpha(1);
else
	draw_set_alpha((pathLifetime + 1) - progressLoop);
loopStart = progressLoop;
if (progressLoop > 1)
	loopStart = 1;
colorProgress = 0;
if (progressLoop > 1)
{
	if (progressLoop > 2)
		colorProgress = 1;
	else
		colorProgress = progressLoop - 1;
}
i = loopStart;
while (i > 0)
{
	firstColor = merge_color(c_white, c_red, colorProgress);
	if (colorProgress < 1)
		colorProgress += 0.05;
	secondColor = merge_color(c_white, c_red, colorProgress);
	x1 = path_get_x(mypath, i);
	y1 = path_get_y(mypath, i);
	x2 = path_get_x(mypath, i - 0.0125);
	y2 = path_get_y(mypath, i - 0.0125);
	draw_line_color(x1, y1, x2, y2, firstColor, secondColor);
	i -= 0.0125;
}
if (progressLoop == (pathLifetime + 1))
{
}
if (progressLoop >= pathLifetime)
	progressLoop += fadeSpeed;
else
	progressLoop += 0.1;
draw_set_alpha(1);
