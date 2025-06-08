draw_self();
if (bighitbox == 1)
{
	draw_set_color(c_red);
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, true);
	draw_circle(bbox_left, bbox_top, 2, true);
}
