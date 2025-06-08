if (con == 0)
{
	if (instance_exists(obj_mainchara) && point_in_rectangle(obj_mainchara.x, obj_mainchara.y, 740, 280, 780, 440))
	{
		con = 1;
		x += sprite_width;
		image_xscale = 2;
		timer = shotSpeed - 2;
		speed = 1;
	}
}
if (con == 1)
{
	direction = point_direction(x + (sprite_width / 2), y + (sprite_height / 2), obj_mainchara.x + 10, obj_mainchara.y + 20);
	speed = 4;
	timer++;
	if (timer >= shotSpeed)
	{
		spear = instance_create(x + (sprite_width / 2), y + 65, obj_virospear);
		spear.direction = point_direction(spear.x, spear.y, obj_mainchara.x + 10, obj_mainchara.y + 20);
		spear.image_angle = spear.direction;
		spear.depth = depth - 20;
		shotSpeed = random(20) + 50;
		timer = 0;
	}
}
if (con == 3)
{
	direction = point_direction(x, y, obj_mainchara.x, obj_mainchara.y);
	direction *= 180;
	speed = 8;
	con = 4;
}
