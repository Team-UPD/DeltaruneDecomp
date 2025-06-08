if (myinteract == 3)
{
}
if (myinteract == 3 && con == 0)
{
	if (i_ex(mydialoguer) == false)
	{
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 5;
	}
}
if (con >= 5)
{
	if (con == 50)
	{
		with (weirdlight)
			instance_destroy();
		con = 51;
		snd_play(snd_dooropen);
		image_index = 1;
	}
	if (con == 51)
		global.interact = 1;
	if (con == 51 && !d_ex())
	{
		global.interact = 1;
		con = 52;
		doortimer = 0;
	}
	if (con == 52)
	{
		doortimer += 1;
		if (doortimer >= 6)
		{
			snd_free_all();
			snd_play(snd_doorclose);
			dark_marker = scr_dark_marker(__view_get(e__VW.XView, 0) - 10, __view_get(e__VW.YView, 0) - 10, spr_pixel_white);
			with (dark_marker)
			{
				image_xscale = 700;
				image_yscale = 700;
				depth = -100;
				image_blend = c_black;
			}
			con = 53;
			doortimer = 0;
		}
	}
	if (con == 53)
	{
		doortimer += 1;
		if (doortimer >= 30)
		{
			global.facing = 0;
			con = 54;
			snd_play(snd_dooropen);
			global.interact = 3;
			instance_create(0, 0, obj_persistentfadein);
			global.entrance = 23;
			room_goto(door_destination);
		}
	}
}
