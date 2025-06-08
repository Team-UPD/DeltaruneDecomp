futuredir = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
if (active == 0)
{
	draw_sprite_ext(sprite_index, image_index, x, y, 3 - (image_alpha * 2), 3 - (image_alpha * 2), futuredir, c_white, 1 - image_alpha);
	if (image_alpha < 1)
	{
		image_alpha += 0.1;
	}
	else
	{
		active = 1;
		activetimer = timetarg - 1;
	}
}
draw_sprite_ext(sprite_index, image_index, x, y, 2 - image_alpha, 2 - image_alpha, futuredir, c_white, image_alpha);
if (active == 1)
{
	activetimer++;
	if (activetimer == timetarg)
	{
		snd = snd_play(snd_egg);
		snd_pitch(snd, 1 + (timesfired / times / 2));
		mybul = instance_create(x, y, obj_regularbullet);
		mybul.grazepoints = grazepoints;
		mybul.damage = damage;
		mybul.target = target;
		mybul.sprite_index = spr_ch2_dojo_puzzlebullet_solid;
		mybul.image_index = image_index;
		mybul.direction = futuredir;
		with (mybul)
		{
			spin = 1;
			spinspeed = 12;
			image_speed = 0;
			speed = other.bulletspeed;
			image_angle = direction;
			depth = other.depth;
			bottomfade = 246;
		}
		timesfired++;
		if (timesfired < times)
			activetimer = 0;
		else
			active = 2;
	}
}
if (active == 2)
{
	image_alpha *= 0.7;
	if (image_alpha <= 0.01)
		instance_destroy();
}
