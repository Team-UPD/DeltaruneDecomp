dustparticle = instance_create(x + random(sprite_width - 10) + 10, y + 20 + random(sprite_height - 20), obj_animation);
with (dustparticle)
{
	sprite_index = spr_rabbick_dustorb;
	speed = 6;
	image_index = 1;
	direction = 10 + random(70);
	image_speed = 0.5;
	image_xscale = 2;
	image_yscale = 2;
	gravity_direction = 0;
	gravity = 0.7;
	friction = 0.4;
	image_alpha = 0.5;
	depth = 15;
}
if (blown == 1)
{
	with (dustparticle)
	{
		image_alpha = 1;
		depth = -10;
	}
}
