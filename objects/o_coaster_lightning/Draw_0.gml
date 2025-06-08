draw_self();
if (con == -2)
{
	waitpeak = waittime / 2;
	if (timer < waitpeak)
		fakealpha += (1 / waitpeak);
	else
		fakealpha -= (1 / waitpeak);
	draw_sprite_ext(spr_coaster_lightning_warning, 0, xstart, ystart, 2, 2, 0, c_white, fakealpha);
}
