if (con >= 1 && timer < 4)
	timer = 4;
timer++;
if (timer == 5)
{
	timer = 0;
	gas = instance_create(x, y, obj_rocketpunch_afterimage);
	if (con >= 1)
		gas.vspeed = -16;
}
if (con == 1)
{
	con = 2;
	timerb = 0;
	snd_play(snd_rocket_long);
	snd_play(snd_bomb);
}
if (con == 2)
{
	timerb++;
	x = lerp(x, (320 - (sprite_width / 2)) + 50 + 10, 0.2);
	y = lerp(y, -420 + timerb, 0.2);
	x += random_range(-4, 4);
	y += random_range(-4, 4);
	if (timerb == 60)
		instance_create((320 - (sprite_width / 2)) + 10, 100, obj_rocketpunch_bhero);
	if (timerb == 74)
		snd_play(snd_explosion);
	if (timerb >= 10)
	{
		image_xscale = lerp(image_xscale, 4, 0.04);
		image_yscale = lerp(image_yscale, 4, 0.04);
	}
}
