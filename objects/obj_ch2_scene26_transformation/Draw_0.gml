if (screen_fade < 1)
	screen_fade += 0.05;
if (screen_fade < 0)
	exit;
if (image_play)
{
	timer++;
	if (timer == 3)
	{
		timer = 0;
		image_index++;
		if (image_index == max_index)
			image_play = false;
	}
}
draw_self();
if (screen_fade < 1)
{
	draw_set_color(c_white);
	draw_set_alpha(1 - screen_fade);
	draw_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, 0);
	draw_set_alpha(1);
	exit;
}
af = scr_afterimage();
af.fadeSpeed = 0.25;
if ((image_index - frame_offset) >= 0)
{
	draw_sprite_ext(headsprite, image_index - frame_offset, x, y, image_xscale, image_yscale, 0, c_black, 1);
	af = scr_afterimage();
	af.image_index = image_index - frame_offset;
	af.sprite_index = headsprite;
	af.fadeSpeed = 0.25;
}
if (max_index == 11)
{
	if (timer < 15)
		timer++;
	y = lerp(ystart, ystart + 120, scr_ease_out(timer / 15, 1));
}
