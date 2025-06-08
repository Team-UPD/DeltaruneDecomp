if (dir == 0)
	horizontal = false;
else
	horizontal = true;
if (instance_exists(obj_MovingPlat_dw_cyber_music_final))
{
	xx = obj_MovingPlat_dw_cyber_music_final.x;
	yy = obj_MovingPlat_dw_cyber_music_final.y;
}
if (init == 0)
{
	xx = obj_MovingPlat_dw_cyber_music_final.x + 38;
	yy = 152;
	mody = 232;
	rx = (xx - 50 - 38) + 2;
	lx = (((xx + 330) - 38) + 2) - 4;
	if (x == lx)
		dir = "left";
	if (x == rx)
		dir = "right";
	if (y == yy)
		dir = "down";
	if (dir != "down")
		horizontal = true;
	else
		horizontal = false;
	if (dir == "left")
		image_angle = -90;
	if (dir == "right")
		image_angle = 90;
	glow = instance_create(x, y, obj_beatbullet_simpleglow);
	glow.image_angle = image_angle;
	glow.sprite_index = sprite_index;
	glow.depth = depth + 1;
	init = 1;
}
if (con == 0)
{
	timer++;
	image_alpha *= 1.5;
	if (timer == 16 && horizontal == true)
	{
		if (dir == "down")
			scr_move_to_point_over_time(x, 400, traveltime);
		if (dir == "left")
			scr_move_to_point_over_time(xx, y, traveltime);
		if (dir == "right")
			scr_move_to_point_over_time(xx + 278, y, traveltime);
		con = 1;
	}
}
if (dir == "down" && y > 399)
	instance_destroy();
if (dir == "left" && x <= xx)
	instance_destroy();
if (dir == "right" && x >= (xx + 278))
	instance_destroy();
if (con == 0 && place_meeting(x, y, obj_beatbullet_simple))
	instance_destroy();
