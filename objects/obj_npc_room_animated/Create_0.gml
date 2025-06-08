myinteract = 0;
talked = 0;
image_speed = 0.2;
depthcancel = 0;
extflag = 0;
extTrig = 0;
if (global.darkzone == 1)
{
	image_xscale = 2;
	image_yscale = 2;
}
if (room == room_town_mid)
{
	if (x >= 320)
		sprite_index = spr_npc_icemascot_fake;
	else
		sprite_index = spr_npc_icemascot2;
}
if (room == room_diner)
{
	sprite_index = spr_npc_greenfire;
	depth = 4000;
	depthcancel = 1;
}
if (room == room_cc_clover)
	sprite_index = spr_cc_boombox;
if (room == room_townhall)
	sprite_index = spr_npc_icee_suit;
if (room == room_lw_icee_pizza)
{
	if (x > 110)
		sprite_index = spr_npc_warrior;
}
if (room == room_dw_ralsei_castle_1f)
	sprite_index = spr_castle_cauldron;
if (room == room_dw_ralsei_castle_front)
{
	if (x >= 550 && x <= 650)
	{
		if (global.plot >= 200)
		{
			sprite_index = spr_npc_trashy;
			x = 590;
			y = 240;
		}
		else
		{
			instance_destroy();
		}
	}
}
if (room == room_dw_city_roadblock)
{
	sprite_index = spr_npc_swatchling_sweep;
	image_speed = 0.1;
}
if (room == room_dw_mansion_b_east_b)
{
	if (scr_keyitemcheck(10) == 0)
		sprite_index = spr_shine;
	if (scr_keyitemcheck(10) == 1 || global.flag[309] >= 7)
		instance_destroy();
}
if (room == room_town_church)
	sprite_index = spr_npc_rainykid;
if (room == room_dw_cyber_musical_door)
{
	if (extflag == "postSweet")
		sprite_index = spr_npc_rainykid;
}
if (depthcancel == 0)
	scr_depth();
