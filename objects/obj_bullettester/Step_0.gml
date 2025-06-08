if (global.mnfight != 2)
{
	timer++;
	if (timer >= 2)
	{
		global.mnfight = 2;
		global.myfight = -1;
		if (!instance_exists(obj_growtangle))
			instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		if (!instance_exists(obj_heart))
			scr_moveheart();
		for (i = 1; i < 5; i++)
			global.hp[i] = global.maxhp[i];
		timer = 0;
	}
}
if (keyboard_check_pressed(vk_tab))
	window_set_size(640, 480);
if (keyboard_check_pressed(ord("1")))
{
	if (global.monster[0] == 0)
		global.monster[0] = 1;
	else if (scr_monsterpop() > 1)
		global.monster[0] = 0;
}
if (keyboard_check_pressed(ord("2")))
{
	if (global.monster[1] == 0)
		global.monster[1] = 1;
	else if (scr_monsterpop() > 1)
		global.monster[1] = 0;
}
if (keyboard_check_pressed(ord("3")))
{
	if (global.monster[2] == 0)
		global.monster[2] = 1;
	else if (scr_monsterpop() > 1)
		global.monster[2] = 0;
}
change = 1;
if (keyboard_check_direct(vk_shift))
	change = 10;
if (keyboard_check_pressed(ord("Q")))
{
	if (global.tempflag[23] > 0)
		global.monsterinstance[0].spawntype -= change;
}
if (keyboard_check_pressed(ord("E")))
{
	if (global.tempflag[24] > 0)
		global.monsterinstance[1].spawntype -= change;
}
if (keyboard_check_pressed(ord("T")))
{
	if (global.tempflag[25] > 0)
		global.monsterinstance[2].spawntype -= change;
}
if (keyboard_check_pressed(ord("W")))
	global.monsterinstance[0].spawntype += change;
if (keyboard_check_pressed(ord("R")))
	global.monsterinstance[1].spawntype += change;
if (keyboard_check_pressed(ord("Y")))
	global.monsterinstance[2].spawntype += change;
if (keyboard_check_pressed(ord("4")))
	global.turntimer = 99999;
if (keyboard_check_pressed(vk_space))
{
	snd_free_all();
	room_restart();
}
if (keyboard_check_pressed(ord("I")))
	global.tempflag[27]++;
else if (keyboard_check_pressed(ord("U")) && global.tempflag[27] > 0)
	global.tempflag[27]--;
global.tempflag[20] = global.monster[0];
global.tempflag[21] = global.monster[1];
global.tempflag[22] = global.monster[2];
global.tempflag[23] = global.monsterinstance[0].spawntype;
global.tempflag[24] = global.monsterinstance[1].spawntype;
global.tempflag[25] = global.monsterinstance[2].spawntype;
