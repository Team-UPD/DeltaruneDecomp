if (damagecon == 0)
{
	damagecon = 1;
	sprite_index = spr_berdlyb_shocked_battle;
	event_user(0);
	with (obj_berdlyb_enemy)
	{
		if (nitro == 0)
			o_coaster_controller.bumpmercy += 6;
		if (nitro > 0)
			o_coaster_controller.bumpmercy += 4;
	}
	with (obj_dmgwriter)
		depth = o_coaster_berdly.depth - 1;
	if (movetype == 0)
		movetimer = movethreshold;
	movebuffer = 1;
	xshake = 10;
	if (kiss == 0)
		particle = instance_create(x + 40 + random(80), y - 8 - random(20), obj_berdlyparticle);
	if (kiss == 1)
	{
		snd_play(snd_coaster_kiss);
		particle = instance_create(x + 12, y - 20, obj_berdlyparticle);
		particle.hspeed = -1;
		particle.sprite_index = spr_coaster_berdly_heart;
		particle.image_angle = 0;
		particle.gravity = -0.2 - random(0.1);
	}
}
snd_play(snd_bump);
snd_play(snd_damage);
with (other)
	damaged = 1;
