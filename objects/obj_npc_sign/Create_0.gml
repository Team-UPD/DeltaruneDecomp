myinteract = 0;
mydialoguer = 0;
image_speed = 0;
setdepth = 1;
read = 0;
depthbonus = 0;
skip = 0;
extflag = 0;
doafter = 0;
docon = 0;
if (global.darkzone == 1)
{
	scr_darksize(id);
	if (room == room_dw_city_traffic_2)
		sprite_index = spr_npc_werewire;
	if (room == room_dw_city_queen_drunk)
	{
		sprite_index = spr_alley_boxes;
		if (global.plot >= 75)
			sprite_index = spr_alley_boxes_fewer;
	}
}
if (room == room_flowershop_2f)
{
	sprite_index = spr_flowercontainer;
	num = 0;
	colortxt = "a golden";
	if (x > 170)
	{
		num = 1;
		colortxt = "a yellow";
		if (y > 110)
		{
			num = 5;
			colortxt = "an orange";
		}
		if (y > 130)
		{
			num = 6;
			colortxt = "a green";
		}
	}
	if (x < 140)
	{
		num = 2;
		colortxt = "a cyan";
		if (y > 110)
		{
			num = 3;
			colortxt = "a blue";
		}
		if (y > 130)
		{
			num = 4;
			colortxt = "a purple";
		}
	}
	image_index = num;
}
if (room == room_town_north)
{
	sprite_index = spr_npc_asgoretruck;
	setdepth = 0;
	depth = 100000;
}
if (room == room_beach)
	sprite_index = spr_npc_beachtable;
if (room == room_town_krisyard)
	sprite_index = spr_torcar_u;
if (room == room_lw_police)
{
	if (x > 180 && y > 50)
	{
		sprite_index = spr_npc_prisoner_dog_eye;
		depthcancel = 1;
	}
	if (x > 230)
	{
		sprite_index = spr_npc_prisoner_dog_lesser;
		depthcancel = 1;
	}
}
if (room == room_dw_city_big_3)
{
	if (scr_armorcheck_inventory(16) == 1 || scr_armorcheck_equipped(1, 16) == 1)
		instance_destroy();
	else
		sprite_index = spr_mannequin_dress;
}
if (room == room_dw_mansion_acid_tunnel)
	sprite_index = spr_dw_mansion_lever;
if (room == room_dw_mansion_entrance && x < 340)
{
	sprite_index = spr_rouxls_petrified;
	image_speed = 0;
	depth = 880000;
	setdepth = 0;
	if (global.flag[916] != 0 || global.flag[915] < 7)
		instance_destroy();
}
if (room == room_dw_cyber_teacup_final)
{
	sprite_index = spr_npc_werewire;
	image_speed = 0;
}
if (room == room_dw_mansion_east_2f_transformed_new)
	sprite_index = spr_dw_mansion_door_sign;
if (room == room_dw_cyber_maze_queenscreen)
{
	if (x == 945 && y == 495)
	{
		sprite_index = spr_npc_spinning_disk;
		image_speed = 0.25;
		scr_depth();
	}
}
if (room == room_dw_cyber_post_music_boss_slide)
{
	sprite_index = spr_cyber_broken_camera;
	if (global.plot < 150)
		instance_destroy();
}
if (room == room_dw_city_poppup)
{
	image_xscale = 2;
	image_yscale = 2;
	sprite_index = spr_manhole;
	image_speed = 0;
	depth = 8999999;
	if (global.flag[915] > 5 && global.flag[916] == 0)
		image_index = 1;
	else
		image_index = 0;
}
if (room == room_dw_cyber_tasque_battle)
	sprite_index = spr_losingrecruits;
if (setdepth == 1)
	scr_depth();
depth += depthbonus;
