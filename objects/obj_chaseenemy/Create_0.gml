image_xscale = 2;
image_yscale = 2;
facing = 0;
walk_index = 0;
state = 0;
alertcon = 0;
alerttimer = 0;
facetimer = 0;
chasetype = 0;
pacetype = 1;
pacecon = 0;
pacecon2 = 0;
pacetimer = 0;
targetx = 0;
targety = 0;
scr_depth();
radius = 200;
moveradius = 160;
pacespeed = 1;
frozen = 0;
hadfrozen = 0;
offscreen_frozen = 1;
remspeed = 0;
myencounter = 4;
touchsprite = spr_diamondm_hurt;
cancelwalk = 0;
eraser = 0;
touchflag = 0;
ignoresolid = 0;
if (room == room_battletest)
	myencounter = 40;
if (room == room_field1)
	myencounter = 4;
if (room == room_field2)
{
	myencounter = 5;
	if (global.flag[501] > 0)
		instance_destroy();
}
if (room == room_field_puzzle1)
{
	myencounter = 6;
	radius = 200;
	pacetype = 5;
}
if (room == room_field_getsusie)
{
	myencounter = 7;
	sprite_index = spr_smallchecker_front;
	touchsprite = sprite_index;
	pacetype = 6;
	image_speed = 0.2;
}
if (room == room_field4)
	myencounter = 33;
if (room == room_field_secret1)
{
	sprite_index = spr_jigsawry_idle;
	touchsprite = spr_jigsawry_idle;
	myencounter = 23;
	if (global.plot < 130)
		instance_destroy();
}
if (room == room_forest_area0)
{
	sprite_index = spr_rabbick_enemy_overworld;
	myencounter = 16;
	touchsprite = spr_rabbick_enemy_overworld;
	alertcon = -1;
	pacetype = 10;
}
if (room == room_forest_area1 || room == room_forest_area3 || room == room_forest_secret1)
{
	pacetype = 7;
	sprite_index = spr_rabbick_enemy_overworld;
	if (room == room_forest_area1)
		pacetype = 11;
	myencounter = 17;
	touchflag = 505;
	touchsprite = spr_rabbick_enemy_overworld;
	if (room == room_forest_area3)
		myencounter = 24;
	if (room == room_forest_secret1)
		myencounter = 32;
	alertcon = -1;
}
if (room == room_forest_maze1)
{
	touchflag = 505;
	sprite_index = spr_rabbick_enemy_overworld;
	myencounter = 17;
	touchsprite = spr_rabbick_enemy_overworld;
	pacetype = 1;
	if (global.flag[505] == 1)
		chasetype = 3;
}
if (room == room_forest_maze2)
{
	touchflag = 506;
	myencounter = 18;
	sprite_index = spr_blockguy_overworld;
	touchsprite = spr_blockguy_overworld;
	pacetype = 1;
	if (global.flag[506] == 1)
		chasetype = 3;
	else
		chasetype = 4;
}
if (room == room_forest_beforeclover)
{
	myencounter = 18;
	sprite_index = spr_blockguy_overworld;
	touchsprite = spr_blockguy_overworld;
	pacetype = 7;
	alertcon = -1;
}
if (room == room_forest_area4)
{
	myencounter = 19;
	sprite_index = spr_blockguy_overworld;
	touchsprite = spr_blockguy_overworld;
	pacetype = 7;
	if (x < (room_width / 2))
		pacetype = 7.5;
	eraser = 1;
	touchflag = 506;
	chasetype = 4;
	radius = 90;
	ignoresolid = 1;
	offscreen_frozen = 0;
	if (global.flag[506] >= 1)
		alertcon = -1;
}
if (room == room_cc_1f)
{
	pacetype = 9;
	chasetype = 4;
	moveradius = 160;
	sprite_index = spr_daimond_knight_idle;
	myencounter = 28;
	touchsprite = spr_daimond_knight_idle;
	touchflag = 507;
	if (global.flag[507] == 1)
		alertcon = -1;
}
if (room == room_cc_3f)
{
	eraser = 1;
	ignoresolid = 1;
	chasetype = 4;
	pacetype = 9;
	radius = 165;
	moveradius = 160;
	if (x >= (room_width / 2))
		moveradius = -160;
	sprite_index = spr_hathyx_overworld;
	myencounter = 30;
	touchsprite = spr_hathyx_overworld;
	offscreen_frozen = 0;
	touchflag = 508;
	if (global.flag[508] == 1)
		alertcon = -1;
}
