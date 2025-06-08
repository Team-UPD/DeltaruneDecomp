if (init == 0)
{
	initialspeed = speed;
	speed = 0;
	init = 1;
	depth -= 2;
	if (big)
		stuck = true;
}
if (init == 2)
{
	depth += 2;
	init = 3;
}
if (init < 3)
	exit;
if (big && alarm[0] == -1)
{
	speed = scr_approach(speed, initialspeed, 0.75);
	if (stuck && speed > 2)
	{
		sprite_index = spr_maus_critter_big;
		stuck = false;
	}
}
event_inherited();
if (x > (obj_growtangle.x + (obj_growtangle.sprite_width / 2) + 50) || x < (obj_growtangle.x - (obj_growtangle.sprite_width / 2) - 50) || y > (obj_growtangle.y + (obj_growtangle.sprite_height / 2) + 50) || y < (obj_growtangle.y - (obj_growtangle.sprite_height / 2) - 50))
	instance_destroy();
