if (con == 1)
{
	timer++;
	if (timer >= 45)
	{
		con = 2;
		timer = 0;
		__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + 28);
		scr_speaker("queen");
		msgsetloc(0, "* Finally... a worthy opponent.../%", "obj_bqueen_intro_slash_Step_0_gml_13_0");
		instance_create(camerax() + 30, cameray() + 376, obj_writer);
		__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) - 28);
		with (obj_writer)
		{
			rate = 3;
			skippable = 0;
			writingy = y - 320;
		}
	}
}
if (con == 2 && !i_ex(obj_writer))
{
	con = 3;
	y = -120;
	sprite_index = spr_bqueen_pirouette;
	image_speed = 0.25;
	gravity_direction = 270;
	gravity = 2;
}
if (con == 3 && y < 280)
{
	timer++;
	if (cameray() < 0)
		__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + 7);
	else
		__view_set(e__VW.YView, 0, 0);
	with (obj_thrash_intro)
	{
		if (y < 390)
			y += 6;
		else
			y = 390;
	}
	flash = instance_create(x, y, o_afterimage);
	flash.sprite_index = sprite_index;
	flash.image_index = image_index;
	flash.image_xscale = image_xscale;
	flash.image_yscale = image_yscale;
	flash.image_blend = c_white;
	flash.image_speed = 0;
	flash.rate = 0.2;
	flash.hasboss = 0;
	flash.depth = depth + 1;
	flash.boss = id;
}
if (con == 3 && y > 280)
{
	scr_speaker("no_name");
	global.typer = 4;
	global.fc = 0;
	global.fe = 0;
	con = 4;
	timer = 0;
	sprite_index = spr_bqueen;
	image_index = 21;
	image_speed = 0;
	speed = 0;
	gravity = 0;
	y = 300;
	d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
	d.shakex = ceil(2);
	d.shakey = ceil(2);
	snd_play(snd_closet_impact);
}
if (con == 4)
{
	timer++;
	if (timer >= 20)
	{
		con = 5;
		timer = 0;
	}
}
if (con == 5)
{
	timer++;
	if (timer == 1)
		instance_create(camerax() + (camerawidth() / 2), cameray() - 220, obj_gigaqueen_intro_round);
	if (timer == 52)
		instance_create(obj_gigaqueen_intro_round.x + 5, obj_gigaqueen_intro_round.y, obj_gigaqueen_intro_fight);
	if (timer == 92)
	{
		con = 6;
		timer = 0;
		readycon = 0;
	}
}
if (con == 6)
{
	timer++;
	if (timer == 1 || timer == 10)
		snd_play(snd_bell);
	if (timer == 22)
	{
		con = 8;
		timer = 0;
	}
}
if (con == 8)
{
	con = 9;
	with (obj_thrash_intro)
		timer = 150 / f;
}
