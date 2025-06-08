if (shakecon == 1)
{
	shakecon = 0;
	scr_shakeobj();
	if (shake_loop)
		alarm[0] = 30;
}
