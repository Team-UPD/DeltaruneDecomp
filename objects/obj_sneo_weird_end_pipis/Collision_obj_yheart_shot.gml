event_user(0);
snd_play(snd_damage);
if (other.big == 0)
{
	with (other)
		event_user(0);
}
fx = instance_create(x, y, obj_pipis_destroy_fx);
fx.image_xscale = 1.5;
fx.image_yscale = 1.5;
instance_destroy();
