timer++;
if (con == 0)
{
	if (timer > 0 && timer < 40)
	{
	}
	if (timer == 40)
	{
		with (obj_sneo_heartattack_chest_shake)
			instance_destroy();
		obj_spamton_neo_enemy.partsprite[4] = spr_sneo_body_chest_breaks;
		obj_spamton_neo_enemy.partx[4] = chestoriginx;
		obj_spamton_neo_enemy.party[4] = chestoriginy;
		instance_create(obj_spamton_neo_enemy.x + 40, obj_spamton_neo_enemy.y + 80, obj_sneo_heartattack);
		shard = instance_create(obj_spamton_neo_enemy.x + 40, obj_spamton_neo_enemy.y + 80, obj_sneo_heartattack_glass_shard);
		shard.direction = 135;
		shard = instance_create(obj_spamton_neo_enemy.x + 40, obj_spamton_neo_enemy.y + 80, obj_sneo_heartattack_glass_shard);
		shard.image_index = 1;
		shard.direction = 170;
		shard = instance_create(obj_spamton_neo_enemy.x + 40, obj_spamton_neo_enemy.y + 80, obj_sneo_heartattack_glass_shard);
		shard.image_index = 2;
		shard.direction = 205;
		shard = instance_create(obj_spamton_neo_enemy.x + 40, obj_spamton_neo_enemy.y + 80, obj_sneo_heartattack_glass_shard);
		shard.image_index = 3;
		shard.direction = 240;
	}
}
if (con == 1)
{
	if (timer == 0)
	{
		with (obj_sneo_heartattack_glass_shard)
		{
			speed = 6;
			direction += 180;
			friction = 0;
			image_alpha = 0;
			con = 1;
			timer = 0;
		}
		with (obj_sneo_sine_hand)
			con = 1;
		with (obj_sneo_sine_hand_controller)
			instance_destroy();
	}
	if (timer == 60)
	{
		obj_spamton_neo_enemy.partsprite[4] = spr_sneo_body;
		obj_spamton_neo_enemy.partsprite[5] = spr_sneo_head;
		instance_destroy();
	}
}
