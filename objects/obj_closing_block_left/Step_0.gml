x += grav;
grav += 0.6;
if (x >= 320)
{
	speed = 0;
	gravity = 0;
	x = 320;
	grav = 0;
	if (state == 0)
	{
		snd_play(snd_closet_impact);
		state = 1;
		repeat (24)
		{
			instance_create(320 + random_range(-4, 14), 0 + irandom(240), obj_boxing_closing_block_dust);
			instance_create(320 + random_range(-4, 14), 240 + irandom(240), obj_boxing_closing_block_dust);
		}
	}
}
