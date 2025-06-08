if (init == 0)
{
	if (dir == 0)
		dir = choose("left", "right");
	if (image_xscale > 0)
		dir = "left";
	else
		dir = "right";
	init = 1;
}
if (con == 0)
{
	if (instance_exists(obj_dogtable_controlled))
		distance = distance_to_point(obj_dogtable_controlled.x, obj_dogtable_controlled.y);
	if (distance <= distancechecker)
		con = 1;
}
if (con == 1)
{
	sprite_index = spr_npc_swatchling_scared;
	if (dir == "left")
	{
		hspeed = -10;
		vspeed = -4;
		image_speed = 0.25;
	}
	else
	{
		hspeed = 10;
		vspeed = -4;
		image_speed = 0.25;
	}
	con++;
}
if (con == 2)
{
	if (dir == "left" && x <= 20)
	{
		x = 20;
		hspeed = 0;
		vspeed = 0;
		image_speed = 0;
		image_alpha *= 0.6;
		if (image_alpha < 0.01)
			instance_destroy();
	}
	if (dir == "right" && x >= 640)
	{
		x = 640;
		hspeed = 0;
		vspeed = 0;
		image_speed = 0;
		image_alpha *= 0.6;
		if (image_alpha < 0.01)
			instance_destroy();
	}
}
if (con == 69)
{
	if (dir == "left")
		horizontalDirection = -1;
	if (dir == "right")
		horizontalDirection = 1;
	verticalDirection = -1;
	hspeed = 0;
	sprite_index = spr_swatchling_cannonball;
	timer = 0;
	con++;
}
if (con == 70)
{
	x += (16 * sign(horizontalDirection));
	y += (32 * sign(verticalDirection));
	image_angle += (16 * sign(verticalDirection) * -1);
	timer++;
	if (timer > 30)
		image_alpha *= 0.9;
	if (image_alpha < 0.1)
		instance_destroy();
}
scr_depth_alt();
