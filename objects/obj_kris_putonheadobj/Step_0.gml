if (myinteract == 2)
{
	snd_play(snd_swallow);
	scr_move_to_point_over_time(headobj.x, headobj.y, 5);
	myinteract = 3;
}
if (myinteract == 3)
{
	timer++;
	if (timer >= 6)
	{
		snd_play(snd_coin);
		headobj.visible = 1;
		global.interact = 0;
		myinteract = 0;
		instance_destroy();
	}
}
if (myinteract == 1)
	myinteract = 2;
