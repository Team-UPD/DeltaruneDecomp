con = 1;
image_xscale = 2;
image_yscale = 2;
talked = 0;
puzzle = instance_create(180, 60, obj_suitspuzz);
with (puzzle)
{
	max_suit = 3;
	sol[0] = 3;
	sol[1] = 4;
	sol[2] = 3;
}
easel = scr_dark_marker(400, 160, spr_thrashdesign);
with (easel)
	depth = 900000;
for (i = 0; i < 3; i += 1)
{
	spike[i] = scr_dark_marker(520, 240 + (i * 40), spr_spiketile);
	spike[i].depth = 800000;
}
block = instance_create(520, 240, obj_soliddark);
block.image_yscale = 3;
s = scr_dark_marker(372, 170, spr_susieu_dark);
if (global.plot < 71)
	global.plot = 71;
if (global.plot == 71)
{
	con = 15;
	with (s)
		visible = 0;
	visible = 0;
	lnpc = instance_create(x, y, obj_npc_facing);
	with (lnpc)
	{
		dtsprite = spr_lancer_dt;
		rtsprite = spr_lancer_rt;
		ltsprite = spr_lancer_lt;
		utsprite = spr_lancer_ut;
		sprite_index = dtsprite;
		facing = 2;
		dfacing = 2;
		y += 100;
	}
	snpc = instance_create(s.x, s.y, obj_npc_facing);
	with (snpc)
	{
		dtsprite = spr_susiedt_dark;
		rtsprite = spr_susiert_dark;
		ltsprite = spr_susielt_dark;
		utsprite = spr_susieut_dark;
		sprite_index = dtsprite;
		facing = 2;
		dfacing = 2;
		y += 100;
	}
}
if (global.plot >= 72)
{
	with (s)
		instance_destroy();
	with (easel)
		instance_destroy();
	with (puzzle)
	{
		suit[0] = 3;
		suit[1] = 4;
		suit[2] = 3;
		won = 1;
	}
	with (block)
		instance_destroy();
	for (i = 0; i < 3; i += 1)
		spike[i].image_index = 1;
	con = 999;
	instance_destroy();
}
