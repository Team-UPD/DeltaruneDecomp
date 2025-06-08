if (active == 1)
{
	spawning = false;
	if (target != 3)
		scr_damage();
	if (target == 3)
		scr_damage_all();
	image_speed = 1;
	speed = 0;
	spawnVirus = 0;
	active = 0;
	var sw = instance_create(obj_heart.x + 8, obj_heart.y + 8, obj_viro_poison_effect);
	sw.maxradius = 100;
	sw.growtime = 10;
	sw.color = poisoncolor;
}
