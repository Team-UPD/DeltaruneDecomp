if (explode == 0)
{
	remx = x;
	remy = y;
	image_angle += rotspeed;
	remrot = image_angle;
}
if (y >= (room_height - 100) && explode == 0)
{
	audio_stop_sound(snd_scytheburst);
	snd_play(snd_scytheburst);
	remx = x;
	remy = y;
	explode = 1;
	explodetimer = 0;
	remrot = image_angle;
	image_angle = 0;
	speed = 0;
	gravity = 0;
	mask_index = spr_tallpx;
	sprite_index = spr_tallpx;
	grazed = 0;
	y = 0;
	depth += 1;
}
if (explode == 1)
{
	active = 0;
	image_xscale += 8;
	if (image_xscale >= 16)
		active = 1;
	if (image_xscale >= 32)
		explode = 2;
}
if (explode == 2)
{
	image_xscale -= 4;
	if (image_xscale <= 16)
	{
		image_alpha -= 0.25;
		active = 0;
	}
	if (image_xscale <= 0)
		instance_destroy();
}
if (grazed == 1)
{
	with (obj_dbulletcontroller)
		made += 0.2;
	grazed = 2;
}
