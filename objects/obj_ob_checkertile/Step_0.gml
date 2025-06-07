if (global.interact == 0)
	timer += 1;
if (timer >= 0 && timer <= 10)
	image_alpha = timer / 10;
if (timer == 10)
	active = 1;
if (timer >= 20)
{
	image_alpha = 3 - (timer / 10);
	active = 0;
	if (image_alpha <= 0)
	{
		if (room == room_field_checkers1)
			x -= 80;
		if (room == room_field_checkers4)
		{
			x -= 40;
			y += 40;
			if (y >= 350)
			{
				y = 240;
				x += 120;
			}
		}
		if (room == room_field_checkers6)
		{
			x -= 40;
			y += 40;
			if (y >= 310)
			{
				y = 240;
				x += 80;
			}
		}
		timer = -10;
		if (room == room_field_checkers6)
			timer = -6;
		if (room == room_field_checkers4)
			timer = -4;
		image_alpha = 0;
	}
}
if (x < 500)
	instance_destroy();
