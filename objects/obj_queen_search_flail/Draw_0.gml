if (loading <= 0 && image_blend != c_white)
	image_blend = merge_color(#31D989, c_white, timer / 10);
image_xscale = 0.75;
image_yscale = 0.75;
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
		var _alpha = clamp(0, 1, scr_inverselerp(45, 200, point_distance(xx, yy, obj_heart.x + 8, obj_heart.y + 8)));
		draw_sprite_ext(sprite_index, 1, xx, yy, 1, 1, 0, #31D989, _alpha);
	}
}
draw_self();
if (bufferstate == 0)
{
	var _af = scr_custom_afterimage(obj_buffer_afterimage);
	_af.image_alpha = 0.5;
	_af.image_index = 5;
	_af.image_blend = #31D989;
}
if (bufferstate == 1)
	draw_sprite(spr_queen_buffering, obj_queen_buffercontroller.bufferbar % 8, x, y);
