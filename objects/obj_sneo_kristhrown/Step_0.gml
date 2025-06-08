if (con == 0 || con == 2)
	image_angle = direction;
if (x > (xx + 700) || y < (yy - 40))
{
	if (con == 0)
	{
		gravity = 0;
		speed = 0;
		x = xx - 40;
		y = obj_herokris.y;
		sprite_index = spr_krisb_idle;
		image_angle = 0;
		hspeed = 20;
		con = 10;
	}
}
if (con == 10)
{
	timer += 1;
	if (x >= (obj_herokris.x - 10))
	{
		if (collided == 0)
		{
			global.msg[0] = stringsetloc("* Missed!/%", "obj_sneo_kristhrown_slash_Step_0_gml_23_0");
			scr_battletext_default();
		}
		with (obj_herokris)
			visible = 1;
		with (obj_herosusie)
			visible = 1;
		visible = 0;
		with (obj_sneo_throwtarget)
			instance_destroy();
		with (obj_sneo_throwkris)
			instance_destroy();
		con = 11;
	}
}
if (con == 11 && !instance_exists(obj_writer))
{
	obj_spamton_neo_enemy.actcon = 15;
	instance_destroy();
}
if (con == 2)
{
	if (x < (xx - 40) || y > (yy + 520))
	{
		timer = 0;
		gravity = 0;
		speed = 0;
		x = xx - 40;
		y = obj_herokris.y;
		sprite_index = spr_krisb_idle;
		image_angle = 0;
		hspeed = 20;
		con = 10;
	}
}
