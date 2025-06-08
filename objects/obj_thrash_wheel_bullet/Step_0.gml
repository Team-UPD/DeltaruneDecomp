if (bounce == 1)
{
	var _boxbottom = (obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 8;
	if (vspeed > 0 && (y + vspeed + 10) >= _boxbottom && x <= ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 8))
	{
		y = _boxbottom - 10;
		last_hspeed = hspeed;
		last_vspeed = vspeed;
		speed = 0;
		initialgravity = gravity;
		gravity = 0;
		bounce = -2;
		image_index = 1;
	}
}
else if (bounce < 0)
{
	bounce++;
	if (bounce == 0)
	{
		hspeed = last_hspeed;
		vspeed = -last_vspeed / 2;
		gravity = initialgravity;
		image_index = 0;
	}
}
