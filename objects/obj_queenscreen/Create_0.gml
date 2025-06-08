sprite_index = scr_84_get_sprite("spr_queenscreen");
extflag = false;
image_speed = 0;
siner = 0;
con = 0;
timer = 0;
image_xscale = 4;
image_yscale = 0;
dismiss = 0;
depth = 100000;
activecon = 1;
tasquecon = 0;
tasquetimer = 0;
tasquetriggered = 0;
tasquespeed = 4;
tasquex = 0;
tasquey = 0;
tasquedir = 0;
extspawnflag = 0;
count = 0;
brokenscreen = false;
bluecheckcon = 0;
bluechecktimer = 0;
init = 0;
if (image_index == 30)
{
	brokeAlpha = 0;
	brokenscreen = true;
	timer2 = 0;
	r = 30;
	xx = x;
	yy = y;
	image_angle = random_range(-r, r);
	for (var i = 0; i < 10; i++)
	{
		xx[i] = random_range(-r, r);
		yy[i] = random_range(-r, r);
	}
}
if (room == room_dw_cyber_tasque_battle && image_index == 9)
{
	if (global.flag[526] != 0)
		image_index = 11;
}
if (room == room_dw_cyber_maze_tasque && image_index == 9)
{
	if (global.flag[539] != 0)
		image_index = 11;
}
if (extflag == 4)
{
	if (room == room_dw_cyber_maze_tasque)
	{
		if (global.flag[367] == 1)
			instance_destroy();
	}
	if (room == room_dw_cyber_keyboard_puzzle_3)
	{
		if (global.flag[420] == 1)
			instance_destroy();
	}
	if (room == room_dw_cyber_battle_maze_2)
	{
		if (global.flag[407] == 1)
			instance_destroy();
	}
}
