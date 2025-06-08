if (con == 0)
{
	if (image_index > 17)
		image_index -= 0.4;
	else
		con = 1;
}
if (con == 1)
{
	timer++;
	if (timer == 1)
	{
		sprite_index = spr_plugboy_plug;
		image_index = 0;
		image_speed = 0;
		hspeed = -8;
		friction = 0.5;
		gravity = -1.5;
		spare = instance_create(x - 6, y + 16, obj_werewire_spare2);
		spare.depth = depth + 1;
		x += 6;
		y += 8;
	}
	if (timer == 60)
		instance_destroy();
}
