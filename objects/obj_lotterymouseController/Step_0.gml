if (victory == 0)
{
	if (global.flag[378] == 1 && global.flag[377] == 1)
	{
		victory = 1;
		global.interact = 1;
		timer = 0;
	}
}
if (victory == 1)
{
	global.interact = 1;
	timer++;
	if (timer == 30)
	{
		snd_play_pitch(snd_locker, 0.8);
		scr_camerareset(20);
	}
	if (timer == 60)
	{
		with (obj_bridgeSwapper)
			inert = 1;
		with (obj_lotteryMouseTrigger)
			inert = 1;
		scr_speaker("no_name");
		msgsetloc(0, "* (Sounds like the bridge was raised.)/%", "obj_lotterymouseController_slash_Step_0_gml_18_0");
		global.facing = 0;
		d_make();
		victory++;
	}
}
if (victory == 2 && !d_ex())
{
	var hints = instance_create(x, y, obj_mouseLotteryCompleteHint);
	with (hints)
		scr_depth();
	global.interact = 0;
	instance_destroy();
}
