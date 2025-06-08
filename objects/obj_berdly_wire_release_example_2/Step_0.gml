if (initialize == 0)
{
	depth = 100000;
	initialize = 1;
	floatcon = 1;
	image_xscale = 2;
	image_yscale = 2;
	timer = 0;
}
if (floatcon == 1)
{
	siner++;
	y += (sin(siner / 12) / 2);
}
if (floatcon == 2)
{
	remx = x;
	remy = y;
	floatcon = 3;
}
if (floatcon == 3)
{
	x = remx + random_range(-shakeamount, shakeamount);
	y = remy + random_range(-shakeamount, shakeamount);
}
if (tornadocon == 1)
{
	if (timer == 0)
		floatcon = 2;
	timer++;
	if (timer == 5 || timer == 15 || timer == 25)
	{
		floatcon = 1;
		x = remx;
		y = remy;
		scr_oflash();
		snd_play(snd_wing);
		for (i = 0; i < 12; i++)
		{
			tornado = scr_marker(x + 30, y + 60, spr_berdlyb_tornado);
			tornado.gravity = -0.5 - random(0.2);
			tornado.friction = 0.2;
			tornado.image_speed = 0.25;
			tornado.image_xscale = choose(1, -1);
			tornado.hspeed = random_range(-5, 5);
			tornado.depth = depth - 10;
			scr_doom(tornado, 60);
		}
	}
	if (timer == 60)
	{
		timer = 0;
		tornadocon = 0;
	}
}
if (con == 1)
{
	floatcon = 0;
	scr_shakeobj();
	snd_play(snd_grab);
	sprite_index = spr_cutscene_25_berdly_grab_plug_old;
	con = 2;
}
if (con == 5 || con == 10)
{
	sprite_index = spr_cutscene_25_berdly_grab_electrocute_bluearm;
	image_speed = 0.5;
	if (floatcon < 2)
		floatcon = 2;
	if (image_index == 0)
	{
		tornado = instance_create(x + 30, y + 20, obj_afterimage);
		tornado.sprite_index = spr_cakesmoke;
		tornado.gravity = -0.3 - random(0.2);
		tornado.friction = 0.3;
		tornado.image_speed = 0.25;
		tornado.hspeed = random_range(-5, 5);
		tornado.depth = depth - 10;
		scr_doom(tornado, 60);
	}
}
if (con == 15 || con == 20)
{
	tornado = instance_create(x + 30, y + 20, obj_afterimage);
	tornado.sprite_index = spr_ch2_gimmick_hangplug_spark;
	tornado.gravity = 1;
	tornado.friction = 0.1;
	tornado.image_speed = 0.25;
	tornado.image_xscale = 0.5;
	tornado.image_yscale = 0.5;
	tornado.vspeed = -10 - random(4);
	tornado.hspeed = random_range(-4, 4);
	tornado.depth = depth - 10;
	scr_doom(tornado, 60);
}
if (scr_debug())
{
	if (keyboard_check_pressed(vk_space))
	{
		if (con == 0)
			con = 1;
		else if (con == 2)
			con = 5;
		else
			con = 0;
	}
}
