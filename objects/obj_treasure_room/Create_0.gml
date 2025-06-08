myinteract = 0;
talked = 0;
image_speed = 0;
itemflag = 104;
itemtype = "armor";
itemidchest = 4;
close = 0;
extratext = 0;
extraevent = 0;
if (global.darkzone == 1)
{
	image_xscale = 2;
	image_yscale = 2;
}
if (room == room_dw_cyber_battle_maze_1)
{
	itemidchest = 10;
	itemtype = "armor";
	itemflag = 118;
}
if (room == room_dw_cyber_keyboard_puzzle_1)
{
	itemidchest = 18;
	itemtype = "weapon";
	itemflag = 119;
}
if (room == room_dw_cyber_maze_tasque)
{
	itemidchest = 10;
	itemtype = "armor";
	itemflag = 120;
	extraevent = 1;
}
if (room == room_dw_cyber_maze_queenscreen)
{
	itemidchest = 27;
	itemtype = "item";
	itemflag = 122;
}
if (room == room_dw_cyber_viro_ring)
{
	itemidchest = 2;
	itemtype = "item";
	itemflag = 123;
}
if (room == room_dw_mansion_bridges)
{
	itemidchest = 30;
	itemtype = "item";
	itemflag = 125;
}
if (room == room_dw_cyber_teacup_final)
{
	itemidchest = 19;
	itemtype = "weapon";
	itemflag = 129;
}
if (room == room_dw_city_big_3)
{
	itemidchest = 14;
	itemtype = "weapon";
	itemflag = 130;
}
if (room == room_dw_mansion_b_west_1f_b)
{
	itemtype = "money";
	itemflag = 133;
	itemidchest = 1;
}
if (room == room_dw_city_treasure)
{
	itemflag = 134;
	itemtype = "armor";
	itemidchest = 3;
}
if (room == room_dw_city_cheesemaze)
{
	itemidchest = 16;
	itemtype = "item";
	itemflag = 135;
}
if (room == room_dw_mansion_east_1f_secret)
{
	itemidchest = 1;
	itemtype = "item";
	itemflag = 136;
}
if (room == room_dw_mansion_bridges)
{
	itemflag = 137;
	itemidchest = 30;
	itemtype = "item";
}
if (room == room_dw_mansion_east_2f_c_a)
{
	itemidchest = 3;
	itemtype = "item";
	itemflag = 139;
}
if (room == room_dw_mansion_east_1f_e)
{
	itemidchest = 11;
	itemtype = "armor";
	itemflag = 141;
}
if (room == room_dw_castle_west_cliff || room == room_dw_mansion_b_east_transformed)
{
	itemidchest = 21;
	itemflag = 142;
	var qualify = 0;
	if (global.flag[468] > 0)
		qualify = 1;
	if (global.flag[142] == 1)
		qualify = 0;
	if (global.flag[571] == 1 || global.flag[468] == 2)
		itemtype = "weapon";
	else
		itemtype = "armor";
	if (qualify == 0)
	{
		instance_destroy();
		visible = 0;
	}
}
if (global.flag[itemflag] == 1)
	image_index = 1;
scr_depth();
