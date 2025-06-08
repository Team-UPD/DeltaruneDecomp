if (!audio_is_playing(snd_chain_extend_bc) && o_boxingcontroller.wireframe_boxing == 1)
{
	snd_loop(snd_chain_extend_bc);
	snd_volume(snd_chain_extend_bc, 0.37, 0);
}
else if (!audio_is_playing(snd_chain_extend) && o_boxingcontroller.wireframe_boxing == 0)
{
	snd_loop(snd_chain_extend);
	snd_volume(snd_chain_extend, 0.42, 0);
}
f = 2;
speedup = 0;
grav = 0;
size = 0.85;
playsound = 0;
image_xscale = 2 * size;
image_yscale = 2 * size;
hspeed = 12 * f;
if (o_boxingcontroller.wireframe_boxing == 1)
	hspeed = 7 * f;
rotspeed = 20 * f;
wheel_hitbox = instance_create(x, y, o_boxing_hitbox);
with (wheel_hitbox)
{
	hit_ducking = 0;
	hit_dodging = 1;
	give_hurt = 30 / f;
	give_invincibility = 40 / f;
	timer = 300;
	damage = 25;
	grazed = 1;
	if (o_boxingcontroller.wireframe_boxing == 1)
	{
		image_xscale = 4;
		image_yscale = 7;
	}
}
wheel_hitbox.image_yscale = 8 * size;
wheel_hitbox.image_xscale = 14 * size;
wheel_hitbox_graze = instance_create(x - 25, y, o_boxing_hitbox);
with (wheel_hitbox_graze)
{
	timer = 300;
	graze_only = 1;
	if (o_boxingcontroller.wireframe_boxing == 1)
	{
		image_xscale = 5;
		image_yscale = 9;
	}
}
wheel_hitbox_graze.image_yscale = 9 * size;
wheel_hitbox_graze.image_xscale = 17 * size;
