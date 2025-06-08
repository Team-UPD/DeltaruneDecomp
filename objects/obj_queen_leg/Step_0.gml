if (stompwait > 0)
	exit;
if (stompspeed > 0 && stomplerp >= 1)
{
	stomplerp = 1;
	stompspeed = 0;
	d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
	d.shakex = ceil(2);
	d.shakey = ceil(2);
	snd_play(snd_screenshake);
	if (shootbullets == 1)
		event_user(0);
}
else if (stompspeed == 0 && stomphold >= 0)
{
	stomphold--;
	if (stomphold <= 0)
		stompspeed = -0.1;
	if (special == 1)
		stompspeed = 0;
	if (special == 2)
		stompspeed = 0;
}
else if (stompspeed < 0 && stomplerp <= 0)
{
	instance_destroy();
}
if (hurttimer == 0 && hittimer == 0)
	stomplerp += stompspeed;
if (special == 3 && stomplerp >= 0.5)
	stompspeed = 0.002;
if (special == 3 && stomplerp >= 0.7)
	stompspeed = 0.0001;
if (direction == 270)
	y = lerp(miny - 4, maxy - 8, scr_ease_in(stomplerp, 2));
if (direction == 90)
	y = lerp(miny - 8, maxy - 4, scr_ease_in(stomplerp, 2));
if (direction == 180)
	x = lerp(maxx - 8, minx - 4, scr_ease_in(stomplerp, 2));
if (direction == 0)
	x = lerp(minx - 4, maxx - 8, scr_ease_in(stomplerp, 2));
