if (t == 0 && kingcon == 0)
{
	sprite_index = spr_chainking_toss;
	image_index = 0;
	image_speed = 0.5;
	kingcon = 1;
	soundplayed = 0;
	if (type == 2 && subtype == 1)
		snd_play(snd_dadlaugh);
	else
		snd_play(snd_dadblast);
}
if (kingcon == 1)
{
	if (image_index >= 3)
	{
		if (image_index >= 2 && soundplayed == 0)
		{
			snd_play(snd_criticalswing);
			soundplayed = 1;
		}
		sprite_index = spr_chainking_toss_idle;
		image_index = 0;
		image_speed = 0.334;
		kingcon = 2;
		if (type == 0)
			chain = instance_create(x - 44, y + 104, obj_chain_of_hell);
		if (type == 1)
			chain = instance_create(x - 24, y + 104, obj_wavechain);
		if (type == 2)
			chain = instance_create(x - 24, y + 104, obj_finalchain);
		scr_bullet_inherit(chain);
		chain.type = subtype;
	}
}
if (type == 0)
{
	if (kingcon == 2)
	{
		if (instance_exists(chain))
		{
			if (chain.chaincon == 3)
				image_speed = 0;
			if (chain.chaincon >= 10)
			{
				sprite_index = spr_chainking_pullback;
				image_speed = 0.25;
				image_index = 0;
				kingcon = 3;
			}
		}
	}
	if (kingcon == 3)
	{
		if (instance_exists(chain))
		{
			if (chain.chaincon >= 11)
			{
				sprite_index = spr_chainking_receive;
				image_speed = 0.25;
				image_index = 0;
				kingcon = 4;
			}
		}
	}
}
t += 1;
