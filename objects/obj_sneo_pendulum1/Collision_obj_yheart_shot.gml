if (destroyable == 1)
{
	if (other.big == 0)
		myspeed += 1;
	if (other.big)
		myspeed = 4;
	with (other)
		event_user(0);
	flash = 1;
	if (sin((siner + swingdir) / 20) < sin(siner / 20))
		swingdir *= -1;
}
else if (destroyable == -1)
{
	with (other)
		event_user(0);
}
