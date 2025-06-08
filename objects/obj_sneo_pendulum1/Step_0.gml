timer++;
if (length < 90)
	length += 5;
x = target_x + lengthdir_x(length, place);
y = target_y + lengthdir_y(length, place);
place += myspeed;
if (place < -90)
{
	myspeed += 0.1;
	swing = 1;
}
else if (place > -90 && swing == 1)
{
	myspeed -= 0.1;
}
image_angle = place + 90;
if (sprite_index == spr_sneo_arml && image_index == 1)
{
	sneoarmtimer++;
	if (sneoarmtimer == 90)
	{
		sneoarmtimer = 0;
		bullet = instance_create(x, y + 70, obj_sneo_heatattack_bullet);
		bullet.image_angle = 90;
		bullet.direction = 90;
		bullet.gravity_direction = 90;
		bullet.image_xscale = 2;
		bullet.image_yscale = 2;
		bullet.depth = depth - 1;
		bullet.speed = -4;
	}
}
