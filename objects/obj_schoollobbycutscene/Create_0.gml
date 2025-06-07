ran = 0;
dex = 0;
tsouth = 0;
teast = 0;
con = 0;
type = 0;
if (global.entrance == 2)
	global.facing = 0;
if (global.plot < 2)
{
	global.interact = 1;
	alarm[5] = 2;
	with (obj_mainchara)
		visible = 0;
	t = scr_marker(460, 360, spr_toriel_handhold_u);
	with (t)
	{
		vspeed = -2;
		image_speed = 0.2;
		depth = 10000;
	}
	alarm[4] = 85;
	con = 1;
	type = 1;
}
if (global.plot == 3)
{
	type = 2;
	with (obj_mainchara)
	{
		visible = 0;
		x = obj_markerB.x;
		y = obj_markerB.y;
	}
	k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_krisd);
	with (k)
		scr_depth();
	s = scr_marker(240, 192, spr_susier_plain);
	with (s)
	{
		scr_depth();
		depth -= 5;
	}
	global.interact = 1;
	with (obj_doorA)
		instance_destroy();
	doorsolid = instance_create(110, 200, obj_solidblock);
	con = 0.1;
	alarm[4] = 50;
}
if (global.plot >= 250)
{
	sunset = scr_marker(0, 0, spr_schoollobby_sunsetoverlay);
	with (sunset)
	{
		image_alpha = 0.4;
		depth = 2000;
	}
	if (!snd_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init("mus_birdnoise.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 0.7);
	}
}
if (global.plot >= 251)
	type = 4;
