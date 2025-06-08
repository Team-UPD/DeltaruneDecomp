if ((y - height) > (cameray() + 500) || x < (camerax() - 100) || x > (camerax() + 740) || (!airborne && y < (cameray() - 100)))
{
	if (i_ex(shadow))
		instance_destroy(shadow);
	instance_destroy();
}
if (!init)
{
	init = true;
	if (i_ex(shadow))
		shadow.depth = maxDepth;
}
falltime++;
if (!airborne)
{
	if (!destroyOnLand)
		exit;
	siner -= 0.1;
	image_alpha = min(siner, 1);
	if (siner <= 0)
	{
		if (i_ex(shadow))
			instance_destroy(shadow);
		instance_destroy();
	}
	exit;
}
if (fallspeed < 0)
	fallspeed += fallFriction;
if (fallspeed > -5)
	fallFriction = 0.4;
if (speed < 5)
	friction = 0.4;
if (fallspeed < 2)
	fallspeed = scr_movetowards(fallspeed, 2, 0.1);
height -= fallspeed;
if (airborne && height <= 0 && y < maxy)
{
	instance_destroy(shadow);
	fallspeed = 0;
	height = 0;
	airborne = false;
	image_index = (image_index < 4) ? 3 : 7;
	speed = 0;
	image_speed = 0;
	x += sin(siner / 15);
	depth = maxDepth - falltime;
	siner = 3;
	exit;
}
x += (sin(siner / 15) * (fallspeed / 2));
siner++;
image_speed = 1 + (speed / 15);
scr_depth();
if (i_ex(shadow))
{
	shadow.image_alpha = (y > maxy) ? 0 : 1;
	shadow.image_index = image_index;
	shadow.x = x + ((sprite_width - shadow.sprite_width) / 2);
	shadow.y = y + ((sprite_height - shadow.sprite_height) / 2);
	var shadowScale = clamp((40 - (height / 2)) / 20, 0, 2);
	shadow.image_xscale = shadowScale;
	shadow.image_yscale = shadowScale;
}
