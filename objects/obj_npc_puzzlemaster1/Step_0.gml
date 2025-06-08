if (myinteract == 3)
{
	if (global.flag[20] == 0)
	{
		sprite_index = spr_npc_puzzlepiece;
		image_speed = 0.2;
	}
	if (global.flag[20] == 1)
	{
		sprite_index = spr_npc_puzzlepiece_shock1;
		image_speed = 0.25;
	}
	if (global.flag[20] == 2)
	{
		sprite_index = spr_npc_puzzlepiece_shock2;
		image_speed = 0.334;
	}
}
if (con == 5 && !d_ex())
{
	with (pwall)
		instance_destroy();
	hspeed = -8;
	con = 6;
	alarm[4] = 30;
}
if (con == 7)
{
	global.facing = 0;
	global.interact = 0;
	con = 8;
	global.flag[215] = 1;
	instance_destroy();
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
if (lecturecon == 0)
{
	if (instance_exists(obj_mainchara))
	{
		if (obj_mainchara.y <= 270 && global.interact == 0)
		{
			global.interact = 1;
			lecturecon = 1;
			global.fc = 2;
			global.fe = 1;
			global.typer = 31;
			global.msg[0] = stringsetloc("* Um^1, Susie^1, I suppose you missed what I said earlier.../", "obj_npc_puzzlemaster1_slash_Step_0_gml_60_0");
			global.msg[1] = stringsetloc("\\E0* As heroes^1, we have the power to make a peaceful future./", "obj_npc_puzzlemaster1_slash_Step_0_gml_61_0");
			global.msg[2] = stringsetloc("\\E8* So^1, from now on^1, let's try to avoid FIGHTing^1, OK?/", "obj_npc_puzzlemaster1_slash_Step_0_gml_62_0");
			scr_susface(3, 0);
			global.msg[4] = stringsetloc("* .../", "obj_npc_puzzlemaster1_slash_Step_0_gml_64_0");
			scr_ralface(5, 6);
			global.msg[6] = stringsetloc("* Umm^1, what if you just took it easy on them...?/", "obj_npc_puzzlemaster1_slash_Step_0_gml_66_0");
			global.msg[7] = stringsetloc("\\E1* If you weaken an enemy^1, I can use my PACIFY spell./", "obj_npc_puzzlemaster1_slash_Step_0_gml_67_0");
			global.msg[8] = stringsetloc("\\E8* Which^1, can put exhausted people to sleep!/", "obj_npc_puzzlemaster1_slash_Step_0_gml_68_0");
			scr_susface(9, 2);
			global.msg[10] = stringsetloc("* Yawn..^1. yeah^1, you talking is already doing that./", "obj_npc_puzzlemaster1_slash_Step_0_gml_70_0");
			scr_ralface(11, 8);
			global.msg[12] = stringsetloc("* Well^1, um^1, just think about it!/", "obj_npc_puzzlemaster1_slash_Step_0_gml_72_0");
			global.msg[13] = stringsetloc("\\E1* (We might have to WARN enemies about her^1, Kris...)/%", "obj_npc_puzzlemaster1_slash_Step_0_gml_73_0");
			d_make();
		}
	}
}
if (lecturecon == 1)
{
	if (!d_ex())
	{
		lecturecon = 10;
		global.interact = 0;
		if (global.plot < 42)
			global.plot = 42;
	}
}
