btimer++;
if (btimer == 20)
{
	d = instance_create(thrash.headx - 20, thrash.heady, obj_thrash_duck_bullet);
	d.damage = damage;
	d.target = target;
	d.speed = 2;
	d.direction = 180;
	d.sprite_index = spr_thrash_duckshot;
	d.grazepoints = grazepoints;
	snd_play(snd_pombark);
}
