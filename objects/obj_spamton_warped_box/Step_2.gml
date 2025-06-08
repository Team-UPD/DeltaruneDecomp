if (instance_exists(obj_heart))
{
	rborder = lerp(maxx, suckx, suckpower);
	uborder = miny;
	dborder = maxy;
	if (snapback == 0)
		obj_heart.x += suckpower;
	if (snapback <= 0 && global.turntimer <= 30 && obj_heart.x >= (rborder - 22))
	{
		snapback = suckpower;
		if (suckpower > 0.5)
		{
			if (!instance_exists(obj_shake))
			{
				d = instance_create(0, 0, obj_shake);
				d.shakex = ceil(suckpower * 4);
				d.shakey = ceil(suckpower * 4);
			}
		}
	}
	if (snapback > 0)
	{
		obj_heart.x -= (20 * scr_ease_in(snapback, 2));
		snapback -= 0.1;
	}
	if (obj_heart.x < (minx + 3))
		obj_heart.x = minx + 3;
	if (obj_heart.x > (rborder - 20))
		obj_heart.x = rborder - 20;
	var xoffset = (obj_heart.x - (minx + 3)) / (rborder - 20 - (minx + 3));
	var uppersuckoffset = (upper_sucky - miny) * xoffset * suckpower;
	var lowersuckoffset = (maxy - lower_sucky) * xoffset * suckpower;
	if (obj_heart.y < (uborder + 3 + uppersuckoffset))
		obj_heart.y = uborder + 3 + uppersuckoffset;
	if (obj_heart.y > (dborder - 20 - lowersuckoffset))
		obj_heart.y = dborder - 20 - lowersuckoffset;
	if (obj_heart.y < (uborder + 3))
		obj_heart.y = uborder + 3;
	if (obj_heart.y > (dborder - 20))
		obj_heart.y = dborder - 20;
}
