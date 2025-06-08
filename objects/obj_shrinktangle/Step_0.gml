if (playercrush == 1)
	exit;
if (init == 0)
{
	depth = obj_growtangle.depth;
	obj_growtangle.image_alpha = 0;
	obj_battlesolid.image_xscale = 3;
	obj_battlesolid.image_yscale = 3;
	init = 1;
}
if (global.turntimer <= 30 && (global.turntimer % 2) >= 1 && instance_exists(obj_sneo_splitbouncer))
{
	destroytimer--;
	if (destroytimer <= 0)
	{
		var spouncer = instance_find(obj_sneo_splitbouncer, 0);
		d = instance_create(spouncer.x, spouncer.y, obj_animation_dx);
		d.sprite_index = spr_thrash_missile_explosion;
		d.image_xscale = spouncer.size;
		d.image_yscale = spouncer.size;
		destroytimer = spouncer.size;
		instance_destroy(spouncer);
	}
}
if (sizeup > 0)
{
	top -= 2;
	if (top < maxtop)
		top = maxtop;
	bottom += 2;
	if (bottom > maxbottom)
		bottom = maxbottom;
	left -= 2;
	if (left < maxleft)
		left = maxleft;
	right += 2;
	if (right > maxright)
		right = maxright;
	sizeup -= 2;
}
if ((bottom - top) < 10 || (right - left) < 10)
{
	if ((bottom - top) < 10)
	{
		var centerpoint = (top + bottom) / 2;
		top = centerpoint - 2;
		bottom = centerpoint + 2;
		obj_heart.y = centerpoint - 4;
	}
	else
	{
		var centerpoint = (left + right) / 2;
		left = centerpoint - 2;
		right = centerpoint + 2;
		obj_heart.x = centerpoint - 4;
	}
	playercrush = 1;
	damage = 0;
	for (i = 0; i < instance_number(obj_sneo_splitbouncer); i++)
	{
		d = instance_find(obj_sneo_splitbouncer, i);
		damage += power(d.size, 3);
		dm = instance_create(d.x, d.y, obj_animation_dx);
		dm.sprite_index = spr_realisticexplosion;
		dm.image_xscale = d.size / 3;
		dm.image_yscale = d.size / 3;
	}
	if (target != 3)
	{
		scr_damage();
	}
	else if (target == 3)
	{
		damage = ceil(damage / 3);
		scr_damage_all();
	}
	snd_play(snd_badexplosion);
	instance_destroy(obj_sneo_splitbouncer);
	if (global.turntimer > 30)
		global.turntimer = 30;
}
