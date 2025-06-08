if (active == 1)
{
	if (target != 3)
		scr_damage();
	if (target == 3)
		scr_damage_all();
	active = 0;
	direction = 0;
	gravity = 0.6;
	spin = -7;
}
