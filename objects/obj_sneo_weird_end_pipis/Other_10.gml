var initangle = random(80);
var initspeed = 4;
var bulcount = 9;
repeat (2)
{
	for (var i = 0; i < bulcount; i++)
	{
		bullet = instance_create(x, y, obj_sneo_weird_end_pipis_bullet);
		bullet.sprite_index = spr_spamtonhead;
		bullet.image_index = choose(0, 1, 2, 3);
		bullet.image_speed = 0.25;
		bullet.direction = initangle + random(20);
		bullet.speed = 2 + initspeed;
		bullet.depth = depth - 1;
		bullet.target = target;
		initangle += (360 / bulcount);
	}
	initspeed += 4;
	initangle = random(50);
}
instance_destroy();
