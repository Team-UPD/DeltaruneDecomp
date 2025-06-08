if (loading > 0)
{
	loading--;
	if (loading == 0)
		image_index = 0;
	else if ((loading % 3) == 0)
		image_index++;
	draw_self();
	exit;
}
if (broken == 0)
{
	for (i = 0; i < 4; i++)
	{
		xx = lerp(xstart, x, i / 4);
		yy = lerp(ystart, y, i / 4);
		draw_sprite(sprite_index, 1, xx, yy);
	}
}
draw_self();
if (bufferstate == 0)
{
	var _af = scr_custom_afterimage(obj_buffer_afterimage);
	_af.image_alpha = 0.5;
}
draw_set_color(c_aqua);
scr_debug_print_persistent("swing time = " + string(timer));
if (bufferstate == 1)
	draw_sprite(spr_queen_buffering, obj_queen_buffercontroller.bufferbar % 8, x, y);
