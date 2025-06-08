con = 0;
key = -1;
dooropen = -1;
keyfloat = false;
floattimer = 0;
keysparkle = false;
sparkletimer = 0;
fadeplatters = false;
keyXPos = 0;
keyYPos = 0;
make_forcefield = false;
forcefield = -4;
if (global.chapter != 2)
{
	instance_destroy();
}
else
{
	if (global.flag[344] == 1)
	{
		dooropen = scr_dark_marker(180, 40, spr_dw_mansion_door_open);
		dooropen.depth = 899999;
	}
	else
	{
		doorlocked = scr_marker(180, 40, spr_dw_mansion_door_closed);
		doorlocked.depth = 899999;
		monty = instance_create(170, 240, obj_saucer_monty);
		exitcollider = instance_create(180, 80, obj_solidblock);
		exitcollider.image_xscale = 4;
		exitcollider.image_yscale = 4;
	}
	for (var i = 0; i < 3; i++)
	{
		table[i] = instance_create(870 + (321 * i), 200, obj_saucer);
		table[i].image_speed = 0;
		with (table[i])
		{
			mode = 1;
			if (i == 0)
				contentsprite = spr_ch2_gimmick_saucer_wig;
			if (i == 1)
				contentsprite = spr_saucer_checkmark;
			if (i == 2)
			{
				if (global.flag[357] == 1)
					contentsprite = spr_platter_cursor;
				else
					contentsprite = spr_platter_smallsaucer;
			}
			scr_depth();
		}
		var table_collider = instance_create(table[i].x, table[i].y + 40, obj_soliddark);
		table_collider.image_xscale = 2.5;
	}
	swatch_npc = instance_create(1760, 135, obj_npc_butler);
	with (swatch_npc)
		scr_depth();
	nubert_npc = instance_create(805, 225, obj_npc_room);
	nubert_npc.sprite_index = spr_npc_nubert_aristocrat;
	with (nubert_npc)
		scr_depth();
	mouse_npc = instance_create(975, 220, obj_npc_room);
	mouse_npc.sprite_index = spr_npc_mousemillian;
	with (mouse_npc)
		scr_depth();
	yesman_npc = instance_create(1120, 185, obj_npc_room);
	yesman_npc.sprite_index = spr_npc_yesman;
	with (yesman_npc)
		scr_depth();
	with (yesman_npc)
		scr_flip("x");
	yeswoman_npc = instance_create(1300, 185, obj_npc_room);
	yeswoman_npc.sprite_index = spr_npc_yesman_ponytail;
	with (yeswoman_npc)
		scr_depth();
	if (global.flag[357] == 1)
	{
		hacker_npc = instance_create(1625, 180, obj_npc_room);
		hacker_npc.sprite_index = spr_npc_cursor_wig;
		with (hacker_npc)
			scr_depth();
	}
	wig_npc = instance_create(1430, 205, obj_npc_room);
	wig_npc.sprite_index = spr_npc_wig_robot;
	with (wig_npc)
		scr_depth();
}
