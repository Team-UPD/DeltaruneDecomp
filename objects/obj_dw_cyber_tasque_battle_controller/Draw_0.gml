if (global.interact == 0)
{
	wait++;
	if (wait > 1800 && global.flag[330] == 0)
	{
		alpha1 += 0.0025;
		alpha2 += 0.00125;
		alpha1 = clamp(alpha1, 0, 0.5);
		alpha2 = clamp(alpha1, 0, 0.32);
		draw_sprite_ext(spr_tasqueHintLine_h1, 0, 556, 498, 2, 2, 0, c_white, alpha1);
		draw_sprite_ext(spr_tasqueHintLine_h2, 0, 556, 498, 2, 2, 0, c_white, alpha2);
		draw_sprite_ext(spr_tasqueHintLine_v1, 0, 558, 498, 2, 2, 0, c_white, alpha1);
		draw_sprite_ext(spr_tasqueHintLine_v2, 0, 558, 498, 2, 2, 0, c_white, alpha2);
	}
}
