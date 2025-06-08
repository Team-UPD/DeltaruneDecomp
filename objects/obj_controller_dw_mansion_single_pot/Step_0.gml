if (obj_mainchara.x > 120 && con == 0)
	con = 1;
if (con == 1 && !d_ex())
{
	queen_monitor.turnon = 1;
	global.interact = 1;
	global.flag[400] = 1;
	con++;
}
if (con == 2 && !d_ex())
{
	scr_speaker("queen");
	msgsetloc(0, "* Now I Know You Are All Loving My Mansion/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_16_0_b");
	msgnextloc("* But We Have A Few Rules Around Here You Have To Follow/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_17_0");
	msgnextloc("* One Wipe Your Shoes/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_18_0");
	msgnextloc("* Two Have Fun/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_19_0");
	msgnextloc("* Three Respect The Pottery/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_20_0");
	msgnextloc("* Four Have Fun/", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_21_0");
	msgnextloc("* Five List Entry Duplication Error/%", "obj_controller_dw_mansion_single_pot_slash_Step_0_gml_22_0");
	d = d_make();
	d.side = 1;
	con++;
	timer = 0;
}
if (con == 3 && !d_ex() && queen_monitor.turnoff == 0)
{
	queen_monitor.turnoff = 1;
	global.interact = 0;
}
if (con == 3 && !instance_exists(obj_queenvase))
{
	global.flag[400] = 2;
	snd_play(snd_b);
	enemy1 = instance_create(-146, 200, obj_chaseenemy);
	with (enemy1)
	{
		myencounter = 64;
		sprite_index = spr_npc_swatchling_sweep_walk;
		touchsprite = spr_swatchling_hurt;
		radius = 10000;
		ignoresolid = 1;
		alertcon = 0;
		alertskip = 1;
		eraser = 1;
		facing = 1;
		chasetype = 7;
	}
	enemy2 = instance_create(640, 200, obj_chaseenemy);
	with (enemy2)
	{
		myencounter = 64;
		sprite_index = spr_npc_swatchling_sweep_walk;
		touchsprite = spr_swatchling_hurt;
		radius = 10000;
		ignoresolid = 1;
		alertcon = 0;
		eraser = 1;
		alertskip = 1;
		chasetype = 7;
	}
	con = 4;
}
if (con == 4)
{
	if (!i_ex(enemy1) || !i_ex(enemy2))
		con = 5;
}
if (con == 5)
{
}
