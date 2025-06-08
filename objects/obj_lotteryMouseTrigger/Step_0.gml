timer++;
if (freezeplayer == true)
{
	global.interact = 1;
	if (!instance_exists(obj_holemouse_lottery) && timer > 5)
	{
		freezeplayer = false;
		global.interact = 0;
	}
}
