depth = 900000;
if (global.flag[379] == 0 || global.plot < 78)
{
	drawshine = 0;
	shineindex = 0;
	if (scr_sideb_get_phase() == 2)
		weird = true;
	else
		weird = false;
	if (weird == true)
	{
		depth = 600000;
		drawshine = 1;
		noface = false;
		solve = 0;
	}
	with (obj_rotationtile_tower)
		freeze = true;
	init = 0;
	layer_set_visible(layer_get_id("BG_Tiles_HiddenPath"), false);
	layer_set_visible(layer_get_id("BG_Tiles_HiddenPath_Sidewalk"), false);
	fakeWall = instance_create(240, 80, obj_solidblocksized);
	fakeWall.image_yscale = 2;
	con = 0;
	timer = 0;
	fakeswitch = 0;
	noelle = 0;
	bridge = 0;
	noExit = 0;
	exttrig = 0;
	berdly = 0;
	monologue = 0;
	micescore = 0;
	micetarget = 10;
	leaveCon = 0;
	leaveBlock = 0;
	solve = false;
	towerinit = false;
}
if (global.flag[379] == 1)
{
	if (scr_sideb_get_phase() == 2)
	{
		if (instance_exists(obj_npc_sign))
		{
			with (obj_npc_sign)
				instance_destroy();
		}
		with (obj_mouseTowerTrigger)
			scr_createFrozen(1);
	}
}
