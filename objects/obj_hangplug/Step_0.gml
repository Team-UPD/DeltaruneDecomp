siner += 1;
depth = 9000;
y = basey + (sin(siner / 70) * 3);
if (obj_mainchara.x >= (x - radius) && obj_mainchara.x <= (x + radius))
	active = 1;
else
	active = 0;
if (active == 0)
{
	image_speed = 0;
	image_index = 0;
}
if (active == 1 && decorative == 0)
{
	if (con == 0)
	{
		timer += 1;
		if (obj_mainchara.x != obj_mainchara.xprevious)
			timer += 1;
		if (timer >= chargetime && x >= camerax() && x <= ((camerax() + 640) - sprite_width))
		{
			con = 1;
			image_speed = 0.25;
			timerb = 0;
		}
	}
	if (con == 1)
	{
		timerb += 1;
		timerbtarget = 15;
		if (room == room_dw_mansion_east_4f_c)
			timerbtarget = 8;
		if (timerb == timerbtarget)
		{
			if (!snd_is_playing(snd_spearappear))
			{
				spawn = snd_play(snd_spearappear);
				snd_volume(spawn, 0.6, 0);
			}
			image_index = 0;
			image_speed = 0;
			timerb = 0;
			con = 0;
			timer = random(chargetime / 2) - 30;
			spark = instance_create(basex + 22, basey + 190, obj_hangplug_spark);
			spark.depth = depth - 1;
		}
	}
}
