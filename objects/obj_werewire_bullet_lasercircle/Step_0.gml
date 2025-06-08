if (parent != -1 && i_ex(parent))
{
	x = parent.x - 32;
	y = parent.y;
}
siner += 0.5;
timer += 1;
if (timer <= (6 / m))
{
	image_xscale += (0.4 * m);
	image_yscale += (0.4 * m);
}
if (timer > (6 / m) && timer <= (my_length + 3))
{
	laser = instance_create(x, y, obj_werewire_bullet_lasersquare);
	scr_bullet_inherit(laser);
	image_xscale -= (sin(siner * 1.3 * m) * 0.2);
	image_yscale -= (sin(siner * 1.3 * m) * 0.2);
	laser.image_angle = my_angle;
	laser.speed = my_speed;
	laser.direction = my_angle;
	laser.friction = -my_accel;
	laser.image_yscale = 1;
	laser.my_angle_change = my_angle_change;
	if (i_ex(obj_spamton_neo_enemy))
		laser.sprite_index = spr_bullet_laser_square_sneo;
	else
		laser.sprite_index = spr_bullet_laser_square;
	if (timer == 3)
	{
		if (i_ex(obj_spamton_neo_enemy))
			laser.sprite_index = spr_bullet_laser_front_sneo;
		else
			laser.sprite_index = spr_bullet_laser_front;
	}
	if (timer == (my_length + 3))
	{
		if (i_ex(obj_spamton_neo_enemy))
			laser.sprite_index = spr_bullet_laser_front_sneo;
		else
			laser.sprite_index = spr_bullet_laser_front;
		laser.image_index = 1;
	}
}
else
{
	image_xscale -= (0.1 * m);
	image_yscale -= (0.1 * m);
	if (image_xscale <= 0 && image_yscale <= 0)
		instance_destroy();
}
