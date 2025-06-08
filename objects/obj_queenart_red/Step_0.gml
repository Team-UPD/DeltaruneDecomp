if (skip == true || isswitch == true)
	flippable = false;
if (myinteract == 3)
{
	if (flip == false && !d_ex())
	{
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 5;
	}
}
if (con == 3)
{
	flashamt = 0;
	laughtimer++;
	if ((laughtimer % 9) == 0)
		image_index = 1;
	if ((laughtimer % 9) == 3)
		image_index = 0;
	if (laughtimer >= 40)
	{
		timer = 0;
		image_index = 0;
		laughtimer = 0;
		con = 0;
	}
}
if (instance_exists(obj_musictracker))
	trackpos = obj_musictracker.trackpos;
if (trackpos >= 18.862 && trackpos <= 18.902)
	con = 3;
if (room == room_dw_mansion_fire_paintings)
{
	if (extflag == "treasure")
		image_index = global.flag[138] == 1;
}
if (decorative == true)
	flip = false;
