growth = 0;
if (timer < (maxtimer * 5) && growcon == 1)
	growth = 1;
if (timer > 0 && growcon == 3)
	growth = 1;
if (growth == 1)
{
	if (growcon == 1)
		timer += timeincrease;
	timeincrease += 0.025;
	if (growcon == 3)
		timer -= 1;
	image_xscale = maxxscale * (timer / maxtimer);
	image_yscale = maxyscale * (timer / maxtimer);
	image_angle = 180 + (180 * (timer / maxtimer)) + target_angle;
	image_alpha = min(1, 0.5 + ((timer / maxtimer) * 0.5));
	d = instance_create(x, y, obj_afterimage);
	d.sprite_index = sprite_index;
	d.image_xscale = image_xscale / (maxxscale / 2);
	d.image_yscale = image_yscale / (maxyscale / 2);
	d.image_angle = image_angle;
	d.depth = depth - 3;
	if (growcon == 1 && timer == maxtimer)
	{
		d.image_xscale = image_xscale;
		d.image_yscale = image_yscale;
		d.sprite_index = obj_growtangle.sprite_index;
		d.image_blend = c_white;
		d.depth--;
		d.image_alpha = 1;
	}
	else
	{
		d.image_blend = image_blend;
		d.image_alpha = ((1 - (timer / (maxtimer * 5))) * 0.5) + 0.1;
	}
	d.image_speed = 0;
	if (timer >= (maxtimer * 5) && growcon == 1)
	{
		growcon = 2;
		image_angle = target_angle;
	}
	if (growcon == 3 && timer <= maxtimer)
	{
		global.turntimer = 0;
		instance_destroy();
	}
}
