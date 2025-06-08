if (init == 0)
{
	if (pivotx == -999)
		pivotx = sprite_width / 2;
	if (pivoty == -999)
		pivoty = sprite_height / 2;
	init = 1;
}
timer++;
effecttimer++;
var __alpha = clamp(timer / poweruptime, 0, 1);
d3d_set_fog(true, image_blend, 0, 1);
flashtimer++;
if (flashtimer >= flashspeed)
{
	flashtimer = 0;
	flashspeed = max(4, (flashspeed * 2) / 3);
}
var __flash = ((timer + 15) >= poweruptime) ? lerp(0.4, 0.5, sin((flashtimer / flashspeed) * pi)) : lerp(__alpha / 2, 0.5, sin((flashtimer / flashspeed) * pi));
thrash.glow = __flash;
d3d_set_fog(false, c_black, 0, 0);
