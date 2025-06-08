if (!debug_mode || ++x > (xstart + 3))
{
	instance_destroy();
	room_goto_next();
}
