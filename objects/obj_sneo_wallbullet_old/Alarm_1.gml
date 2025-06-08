bullet = instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_basicbullet);
bullet.bulletspeed = bulletspeed;
with (bullet)
	move_towards_point(obj_yellowheart.x + 8, obj_yellowheart.y + 8, bulletspeed);
