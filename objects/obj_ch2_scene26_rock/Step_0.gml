timer++;
if (timer >= 30)
{
	if (con == 1)
	{
		con = 2;
		y = cameray() + view_hport[0] + 100;
		var dog = random_range(0, 1);
		if (dog >= 0.99)
		{
			sprite_index = spr_dog_sleep;
			image_speed = 0.25;
		}
		else
		{
			sprite_index = spr_cutscene_26_rock_dog;
			image_speed = 0;
		}
	}
	if (con == 2)
	{
		y -= 5;
		if (y <= -100)
			con = 1;
	}
}
