timer++;
if (timer == 5)
{
	instance_destroy();
	fx = instance_create(x, y, obj_pipis_destroy_fx);
	fx.image_xscale = 2;
	fx.image_yscale = 2;
	obj_spamton_neo_enemy.partsprite[5] = spr_sneo_head_joke;
	repeat (3)
	{
		fx = instance_create(x, y, obj_pipis_egg_bullet_piece);
		fx.image_index = random(3);
		fx.image_xscale = 2;
		fx.image_yscale = 2;
		fx.direction = 45 + random(90);
	}
	var a = random(45);
	repeat (8)
	{
		part = instance_create(x, y, obj_sneo_phonecall_sneohead);
		part.direction = a + random(15);
		part.speed = random(8);
		part.x += lengthdir_x(random(25), a);
		part.y += lengthdir_y(random(25), a);
		a += 45;
	}
}
