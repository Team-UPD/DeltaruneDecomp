image_blend = merge_color(c_red, c_white, hp / hpmax);
if (hp < 1)
{
	if (active == 1)
		snd_play(snd_dtrans_flip);
	active = 0;
	image_alpha -= 0.05;
	if (image_alpha < 0.01)
		instance_destroy();
	exit;
}
if (instance_exists(obj_heart))
{
	rotator_target = obj_heart;
	depth = obj_heart.depth - 1;
	if (button2_h() && xhold < 9)
		xhold++;
	else if (xhold > 0)
		xhold--;
	var extra_speed = xhold;
	if (extra_speed > 8)
		extra_speed = 8;
	myspeed = 8 - extra_speed;
	x = rotator_target.x + 10 + lengthdir_x(length, place);
	y = rotator_target.y + 10 + lengthdir_y(length, place);
	place += myspeed;
}
if (!instance_exists(obj_heart))
	visible = false;
if (instance_exists(obj_heart))
{
	if (alarm[0] == 9)
		visible = false;
	else if (alarm[0] == 8)
		visible = false;
	else if (alarm[0] == 5)
		visible = false;
	else if (alarm[0] == 4)
		visible = false;
	else if (alarm[0] == 1)
		visible = false;
	else if (alarm[0] == 0)
		visible = false;
	else
		visible = true;
}
