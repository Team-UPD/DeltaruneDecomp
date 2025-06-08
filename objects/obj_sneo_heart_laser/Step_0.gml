timer++;
if (timer > 0 && timer < 8)
{
	d = instance_create(x, y, obj_rouxls_power_up_orb);
	d.direction = irandom(360);
	d.lifetime = 12;
	d.depth = depth + 1;
	d.image_blend = image_blend;
}
if (timer > 0 && timer < 14)
{
	image_xscale += 0.025;
	image_yscale += 0.025;
}
if (timer == 14)
{
	snd_play(snd_wallclaw);
	laser = instance_create(x, y, obj_queen_laser);
	laser.image_angle = image_angle;
	laser.direction = image_angle;
	laser.image_yscale = 1;
	instance_destroy();
}
