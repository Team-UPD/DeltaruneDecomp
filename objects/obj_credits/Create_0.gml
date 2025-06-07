con = 0;
timer = 0;
lyric = " ";
textalpha = 1;
creditalpha = 1;
if (scr_is_switch_os())
	instance_create_depth(0, 0, 0, obj_switchAsyncHelper);
for (i = 0; i < 8; i += 1)
{
	line[i] = " ";
	linecolor[i] = c_white;
}
