if (instance_exists(obj_mainchara))
{
	mx = obj_mainchara.x + (obj_mainchara.sprite_width / 2);
	ox = x + (sprite_width / 2);
	if (abs(mx - ox) <= radius && obj_mainchara.y >= y && con == 0)
	{
		snd_play(snd_wing);
		lo = snd_play(snd_wing);
		snd_pitch(lo, 0.8);
		con = 1;
		visible = 1;
		rabbick = instance_create(x, y, obj_chaseenemy);
		rabbick.vspeed = 16;
	}
}
