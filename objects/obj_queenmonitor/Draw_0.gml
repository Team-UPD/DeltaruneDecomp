siner++;
talking = 0;
if (i_ex(obj_face) && global.fc == 21)
	talking = 1;
if (turnon == 1 && con == 0)
{
	snd_play_pitch(snd_spearappear, 2);
	con = 1;
	timer = 0;
	turnon = 0;
}
if (con == 1)
{
	timer += ((timer / 2) + 1);
	if (timer > 15)
		timer = 15;
	xscale = lerp(0, 1.5, timer / 15);
	yscale = lerp(0, 0.4, timer / 15);
	if (timer == 15)
	{
		con = 2;
		timer = 0;
	}
}
if (con == 2)
{
	timer += ((timer / 2) + 1);
	if (timer > 15)
		timer = 15;
	xscale = lerp(1.5, 2, timer / 15);
	yscale = lerp(0.4, 2, timer / 15);
	if (timer == 15)
	{
		con = 3;
		timer = 0;
	}
}
if (turnoff && con == 3)
{
	snd_play_pitch(snd_spearappear, 2);
	turnoff = 0;
	con = 4;
	timer = 0;
}
if (con == 4)
{
	timer += ((timer / 2) + 1);
	if (timer > 15)
		timer = 15;
	xscale = lerp(2, 1.5, timer / 15);
	yscale = lerp(2, 0.4, timer / 15);
	if (timer == 15)
	{
		con = 5;
		timer = 0;
	}
}
if (con == 5)
{
	timer += ((timer / 2) + 1);
	if (timer > 15)
		timer = 15;
	xscale = lerp(1.5, 0, timer / 15);
	yscale = lerp(0.4, 0, timer / 15);
	if (timer == 15)
	{
		con = 0;
		timer = 0;
	}
}
if (talking == 1)
	talkframe += 0.17;
else
	talkframe = 0;
draw_sprite_ext(spr_queenmonitor_border, 1, x, y, 2, 2, 0, c_white, 1);
if (con != 3)
{
	draw_sprite_ext(spr_queenmonitor_bg, 0, x, y, xscale, yscale, 0, c_white, 1);
	draw_sprite_ext(spr_queenmonitor, talkframe, x, y, xscale, yscale, 0, c_white, 1);
}
if (con == 3)
{
	sineheight = sin(35) + 36;
	draw_set_blend_mode(bm_normal);
	draw_sprite_ext(spr_queenmonitor_bg, 0, x, y, xscale, yscale, 0, c_white, 1);
	draw_set_blend_mode(bm_add);
	draw_sprite_ext(spr_queenmonitor_bg, 0, x, y, xscale, yscale, 0, c_white, (sin(siner / 12) * 0.05) + 0.02);
	draw_set_blend_mode(bm_normal);
	draw_sprite_ext(spr_queenmonitor, talkframe, x, y, xscale, yscale, 0, c_white, 1);
}
draw_sprite_ext(spr_queenmonitor_border, 0, x, y, 2, 2, 0, c_white, 1);
