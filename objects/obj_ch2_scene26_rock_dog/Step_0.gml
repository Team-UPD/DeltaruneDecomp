timer++;
if (dog)
	image_angle += rotation;
if (y <= (__view_get(e__VW.YView, 0) - 45))
{
	image_angle = 0;
	y += 480;
	dog = timer >= 900 && !dog && random(1) >= 0.99;
	if (dog)
	{
		sprite_index = spr_dog_walk;
		rotation = random_range(1, 2) * choose(-1, 1);
		image_speed = 0.5;
	}
	else
	{
		sprite_index = spr_cutscene_26_rock_dog;
		image_speed = 0;
		image_index = 0;
	}
}
y -= 5;
