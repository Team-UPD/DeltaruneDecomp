if (scr_queen_buffercheck())
{
	buffering = true;
	image_blend = c_gray;
	draw_self();
	exit;
}
else if (buffering && !scr_queen_buffercheck())
{
	buffering = false;
	image_blend = c_white;
}
if (scale < 1)
{
	scale += 0.1;
	image_xscale = scale;
	image_yscale = scale;
	image_angle = scale * 360;
	af = scr_custom_afterimage(obj_buffer_afterimage);
	af.image_alpha = 0.5;
}
if (timer > 0)
	draw_self();
