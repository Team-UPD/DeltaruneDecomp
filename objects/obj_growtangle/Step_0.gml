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
	image_xscale = 2 * (timer / maxtimer);
	image_yscale = 2 * (timer / maxtimer);
	image_angle = 180 + (180 * (timer / maxtimer));
	image_alpha = 0.5 + ((timer / maxtimer) * 0.5);
	d = instance_create(x, y, obj_afterimage);
	d.sprite_index = sprite_index;
	d.image_xscale = image_xscale;
	d.image_yscale = image_yscale;
	d.image_angle = image_angle;
	d.depth = depth - 1;
	d.image_blend = image_blend;
	d.image_alpha = (1 - image_alpha) + 0.1;
	d.image_speed = 0;
	if (timer >= maxtimer && growcon == 1)
	{
		growcon = 2;
		image_angle = 0;
	}
	if (timer <= 0 && growcon == 3)
		instance_destroy();
}
