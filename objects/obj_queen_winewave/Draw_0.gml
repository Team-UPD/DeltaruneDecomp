x += xspeed;
if (xspeed < 0)
{
	if (obj_queen_wineglass.fill > 36 && rise > 1)
		rise--;
}
else if (obj_queen_wineglass.fill > 36 && rise > 3)
{
	rise--;
}
var wineheight = obj_queen_wineglass.starty - obj_queen_wineglass.fill;
siner++;
y = wineheight + rise + (sin(siner / (abs(xspeed) * 4)) * 2);
if (x > (obj_queen_wineglass.xstart + 75))
	x -= 150;
else if (x < (obj_queen_wineglass.xstart - 75))
	x += 150;
var height_fix = 11 - (obj_queen_wineglass.fill / 30);
visible = true;
var xx = 0;
var xx0 = 0;
if (instance_exists(obj_queen_wineglass))
{
	if (obj_queen_wineglass.image_angle < -4)
	{
		if (obj_queen_wineglass.fill > 30)
		{
			xx = obj_queen_wineglass.image_angle * 0.9;
			xx0 = obj_queen_wineglass.image_angle * 1.5;
		}
		if (obj_queen_wineglass.fill > 35)
		{
			xx = obj_queen_wineglass.image_angle * 0.4;
			xx0 = obj_queen_wineglass.image_angle * 0.8;
		}
		if (obj_queen_wineglass.fill > 40)
		{
			xx = obj_queen_wineglass.image_angle * 0.94;
			xx0 = obj_queen_wineglass.image_angle * 1.1;
		}
		if (obj_queen_wineglass.fill > 45)
		{
			xx = obj_queen_wineglass.image_angle * 0.4;
			xx0 = obj_queen_wineglass.image_angle * 0.8;
		}
		if (obj_queen_wineglass.fill > 51)
		{
			xx = obj_queen_wineglass.image_angle * -0.4;
			xx0 = obj_queen_wineglass.image_angle * -0.2;
		}
		if (obj_queen_wineglass.fill > 63)
		{
			xx = obj_queen_wineglass.image_angle * -0.55;
			xx0 = obj_queen_wineglass.image_angle * -0.21;
		}
		if (obj_queen_wineglass.fill > 70)
		{
			xx = obj_queen_wineglass.image_angle * -0.5;
			xx0 = obj_queen_wineglass.image_angle * -0.2;
		}
		scr_drawinbox((obj_queen_wineglass.xstart + xx) - xx0, wineheight - height_fix, 142 + xx, 20);
	}
	else if (obj_queen_wineglass.image_angle > 4)
	{
		if (obj_queen_wineglass.fill > 30)
		{
			xx = obj_queen_wineglass.image_angle * -0.6;
			xx0 = obj_queen_wineglass.image_angle * 1;
		}
		if (obj_queen_wineglass.fill > 30)
		{
			xx = obj_queen_wineglass.image_angle * -0.6;
			xx0 = obj_queen_wineglass.image_angle * 1;
		}
		if (obj_queen_bulletcontroller.type == 2.1)
		{
			if (obj_queen_wineglass.fill > 40)
			{
				xx = obj_queen_wineglass.image_angle * -0.1;
				xx0 = obj_queen_wineglass.image_angle * 0.1;
			}
			if (obj_queen_wineglass.fill > 42)
			{
				xx = obj_queen_wineglass.image_angle * 0;
				xx0 = obj_queen_wineglass.image_angle * 0;
			}
			if (obj_queen_wineglass.fill > 49)
			{
				xx = obj_queen_wineglass.image_angle * 0;
				xx0 = obj_queen_wineglass.image_angle * 0;
			}
		}
		else
		{
			if (obj_queen_wineglass.fill > 40)
			{
				xx = obj_queen_wineglass.image_angle * -0.5;
				xx0 = obj_queen_wineglass.image_angle * 0.9;
			}
			if (obj_queen_wineglass.fill > 42)
			{
				xx = obj_queen_wineglass.image_angle * -0.6;
				xx0 = obj_queen_wineglass.image_angle * 1;
			}
			if (obj_queen_wineglass.fill > 49)
			{
				xx = obj_queen_wineglass.image_angle * 0.4;
				xx0 = obj_queen_wineglass.image_angle * -0.2;
			}
		}
		if (obj_queen_wineglass.fill > 53)
		{
			xx = obj_queen_wineglass.image_angle * 0.6;
			xx0 = obj_queen_wineglass.image_angle * -0.5;
		}
		if (obj_queen_wineglass.fill > 63)
		{
			xx = obj_queen_wineglass.image_angle * 0.6;
			xx0 = obj_queen_wineglass.image_angle * -0.2;
		}
		if (obj_queen_wineglass.fill > 70)
		{
			xx = obj_queen_wineglass.image_angle * 0.6;
			xx0 = obj_queen_wineglass.image_angle * 0;
		}
		if (obj_queen_wineglass.fill > 75)
		{
			xx = obj_queen_wineglass.image_angle * 0.6;
			xx0 = obj_queen_wineglass.image_angle * 0.1;
		}
		if (obj_queen_wineglass.fill > 77)
		{
			xx = obj_queen_wineglass.image_angle * 0.6;
			xx0 = obj_queen_wineglass.image_angle * 0;
		}
		if (obj_queen_wineglass.fill > 80)
		{
			xx = obj_queen_wineglass.image_angle * 0.57;
			xx0 = obj_queen_wineglass.image_angle * -0.12;
		}
		if (obj_queen_wineglass.fill > 84)
		{
			xx = obj_queen_wineglass.image_angle * 0.6;
			xx0 = obj_queen_wineglass.image_angle * 0;
		}
		scr_drawinbox(obj_queen_wineglass.xstart - xx - xx0, wineheight - height_fix, 142 + xx, 20);
	}
	else
	{
		scr_drawinbox(obj_queen_wineglass.xstart, wineheight - 9, 142, 20);
	}
}
