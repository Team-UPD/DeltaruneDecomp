if (con == 1)
{
	global.interact = 1;
	if (skip == 0)
	{
		notallcharactersaresafe = 0;
		with (obj_mainchara)
		{
			if (place_meeting(x, y, obj_solidblock) || place_meeting(x, y, obj_bridgeSwappable))
				other.notallcharactersaresafe++;
		}
		with (obj_caterpillarchara)
		{
			if (place_meeting(x, y, obj_solidblock) || place_meeting(x, y, obj_bridgeSwappable))
				other.notallcharactersaresafe++;
		}
		if (notallcharactersaresafe == 0)
			con = 99;
		else
			con = 2;
	}
	else
	{
		con = 99;
	}
}
if (con == 2)
{
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	con++;
}
if (con == 3)
{
	if (dir == 0)
	{
		if (rax == 0)
			ralx = mtx;
		else
			ralx = rax;
		if (ray == 0)
			raly = mty - 4;
		else
			raly = ray;
		krisface = "d";
	}
	if (dir == 1)
	{
		if (rax == 0)
			ralx = mtx - 4;
		else
			ralx = rax;
		if (ray == 0)
			raly = mty;
		else
			raly = ray;
		krisface = "e";
	}
	if (dir == 2)
	{
		if (rax == 0)
			ralx = mtx;
		else
			ralx = rax;
		if (ray == 0)
			raly = mty + 4;
		else
			raly = ray;
		krisface = "u";
	}
	if (dir == 3)
	{
		if (rax == 0)
			ralx = mtx + 4;
		else
			ralx = rax;
		if (ray == 0)
			raly = mty;
		else
			raly = ray;
		krisface = "l";
	}
	panpoint = scr_dark_marker(mtx, mty, kr_actor.sprite_index);
	with (panpoint)
		visible = 0;
	c_pannable(1);
	c_sel(kr);
	c_walkdirect(mtx, mty, 4);
	c_delayfacing(4, krisface);
	c_sel(ra);
	c_walkdirect(ralx, raly, 4);
	c_delayfacing(5, krisface);
	c_panobj(panpoint, 4);
	c_wait(6);
	c_pannable(0);
	c_var_instance(id, "con", 98);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 98)
{
	con = 99;
	with (panpoint)
		instance_destroy();
}
if (con == 99)
{
	alarm[0] = 1;
	snd_play(snd_locker);
	instance_create(x, y, obj_shakeobj);
	global.interact = 0;
	con = 0;
}
