if (spawning)
{
	sprite_index = spr_virovirokun_needle;
	image_index = 0;
	spawning = false;
	active = true;
	image_speed = 0;
}
else
{
	instance_destroy();
}
