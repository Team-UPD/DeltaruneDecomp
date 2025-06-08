if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
	con = 1;
	global.interact = 1;
}
if (con == 1)
{
	con = 2;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(su);
	c_walk("r", 2, 60);
	c_sel(ra);
	c_walk("r", 2, 30);
	c_sel(kr);
	c_walk("l", 2, 20);
	c_wait(60);
	c_actormoveparty(60);
	c_wait(60);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 2)
{
	if (!instance_exists(obj_cutscene_master))
	{
		con = 3;
		global.interact = 0;
	}
}
