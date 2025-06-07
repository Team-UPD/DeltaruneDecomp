collidetimer -= 1;
if (collidetimer < 0 && collide == 1 && global.interact == 1)
{
	collide = 0;
	global.interact = 0;
	if (collider >= 10)
	{
		if (abovey == 1)
		{
			with (obj_mainchara)
			{
				fun = 0;
				sprite_index = spr_krisd_dark;
			}
			snd_stop(slide_noise);
		}
		instance_create(x, (y + sprite_height) - 40, obj_soliddark);
		instance_destroy();
	}
}
