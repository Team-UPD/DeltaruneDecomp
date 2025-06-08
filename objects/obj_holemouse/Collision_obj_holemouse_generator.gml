if (room == room_dw_city_mice3 && direction != 270 && bounceOffDoor == 1 && con == 1)
{
	y += 40;
	direction += 90;
	turndir = "left";
	if (direction >= 360)
		direction -= 360;
	if (direction < 0)
		direction += 360;
	breakcount++;
	if (direction == (remdir - 180) || direction == (remdir + 180))
		direction += 90;
	if (breakcount == 4)
	{
		direction = remdir + 180;
		if (direction > 360)
			direction -= 360;
		mx = lengthdir_x(40, direction);
		my = lengthdir_y(40, direction);
	}
	turnfx = scr_afterimage();
	turnfx.image_angle = direction;
	turnfx.sprite_index = spr_holemouse_turnrightfx;
	turnfx.image_index = 0;
	turnfx.x += 20;
	turnfx.y += 20;
	if (turndir == "right")
		turnfx.image_index = 1;
}
else if (direction != 270 && bounceOffDoor == 1 && con == 1)
{
	if (con == 1)
		con = 5;
}
