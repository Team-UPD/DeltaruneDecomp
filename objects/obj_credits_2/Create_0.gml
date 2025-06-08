if (scr_is_switch_os())
	instance_create(x, y, obj_switchAsyncHelper);
con = 0;
timer = 0;
lyric = stringset(" ");
textalpha = 1;
creditalpha = 1;
for (i = 0; i < 8; i += 1)
{
	line[i] = stringset(" ");
	linecolor[i] = c_white;
}
trackpos = 0;
modifier = 0;
song1 = 0;
drawtesters = false;
menugray = hexcolor(#949494);
drawfred = false;
