if (x < (obj_heart.x + 20))
	exit;
alarm[0] = obj_spamton_neo_enemy.crusher_turret_speed;
shot = instance_create(x, y, obj_regularbullet);
shot.hspeed = obj_spamton_neo_enemy.crusher_turret_bullet_speed;
shot.gravity_direction = 180;
shot.gravity = obj_spamton_neo_enemy.crusher_turret_bullet_gravity;
shot.image_xscale = 3;
shot.sprite_index = spr_sneo_bullet0;
