if (instance_exists(obj_growtangle))
{
	if (global.turntimer < 0 || spawntimer < 15)
	{
		spawntimer++;
		if (spawntimer == 15)
		{
			obj_heart.x += (x - xhome);
			obj_heart.y += (y - yhome);
			x = xhome;
			y = yhome;
		}
		obj_growtangle.x = scr_movetowards(obj_growtangle.x, x, 5);
		obj_growtangle.y = scr_movetowards(obj_growtangle.y, y, 5);
	}
}
else
{
	instance_destroy();
}
