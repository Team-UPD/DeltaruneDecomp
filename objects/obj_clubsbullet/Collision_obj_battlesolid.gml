bul = instance_create(x, y, obj_regularbullet);
if (instance_exists(bul))
{
	bul.sprite_index = spr_clubsball_b;
	bul.direction = direction;
	bul.speed = speed - 6;
	bul.image_angle = image_angle;
	bul.damage = damage;
	bul.target = target;
	bul.grazepoints = 3;
	bul.timepoints = 2;
}
bul = instance_create(x, y, obj_regularbullet);
if (instance_exists(bul))
{
	bul.sprite_index = spr_clubsball_c;
	bul.direction = direction - 25;
	bul.speed = speed - 8;
	bul.image_angle = image_angle;
	bul.damage = damage;
	bul.target = target;
	bul.grazepoints = 3;
	bul.timepoints = 2;
}
bul = instance_create(x, y, obj_regularbullet);
if (instance_exists(bul))
{
	bul.sprite_index = spr_clubsball_a;
	bul.direction = direction + 25;
	bul.speed = speed - 8;
	bul.image_angle = image_angle;
	bul.damage = damage;
	bul.target = target;
	bul.grazepoints = 3;
	bul.timepoints = 2;
}
instance_destroy();
