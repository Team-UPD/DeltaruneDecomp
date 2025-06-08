if (init == 0)
{
	scr_bullet_inherit(platterLid);
	scr_bullet_inherit(platterPlate);
	targetColor = startColor;
	platterPlate.image_blend = startColor;
	platterLid.image_blend = startColor;
	init = 1;
}
if (hasCandy == 1)
{
	d = instance_create(x, y - 20, obj_swatchling_candy);
	d.sourcePlatter = self;
	d.target = target;
	hasCandy = 0;
}
if (swatchbc.red_count > swatchbc.blue_count && lidOff)
{
	if (lidOff)
	{
		platterLid.y += lidSpeed;
		lidSpeed += 0.685;
		if (platterLid.y >= ystart)
		{
			lidOff = false;
			platterLid.y = y;
			timer = -20;
		}
	}
	platterPlate.y = y;
}
else if (!lidOff)
{
	if (timer >= 0)
	{
		if (!opened)
			opened = true;
		lidLerp = 1 - (abs(timer - 20) / 20);
		lidOffset = -1 * lidLerp * (lidLerp - 2);
		platterPlate.y = y + (lidOffset * 10);
		platterLid.y = y - (lidOffset * 60);
	}
	else if (timer < -10 && opened)
	{
		lidLerp = 1 - (abs(timer + 15) / 5);
		lidOffset = -1 * lidLerp * (lidLerp - 2);
		platterPlate.y = y + (lidOffset * 20);
		platterLid.y = y + (lidOffset * 20);
	}
	else
	{
		platterPlate.y = y;
		platterLid.y = y;
	}
}
platterPlate.x = x;
platterLid.x = x;
if ((swatchbc.red_count <= swatchbc.blue_count || timer < -1) && (swatchbc.blue_count == 0 || timer != -1))
	timer++;
if (timer >= 40)
	timer = -20;
