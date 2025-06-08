if (direction == 270 && other.direction == 180)
{
	hurttimer = 20;
	hurtx = x;
	hurty = y;
	with (other)
	{
		stomphold--;
		stompspeed = -0.1;
		stomplerp = 0.8;
		event_user(0);
		hittimer = 28;
	}
}
