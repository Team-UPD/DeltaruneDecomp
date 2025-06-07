if (active == 0)
{
	active = 1;
	failtimer = 0;
	image_index = 0;
	sprite_index = spr_hourglass_switch_on;
	event_user(1);
	event_user(2);
}
