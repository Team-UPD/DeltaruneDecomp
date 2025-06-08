var count = instance_number(obj_maus_cursor_trail);
for (i = 0; i < count; i++)
{
	var trail = instance_find(obj_maus_cursor_trail, i);
	draw_sprite_ext(spr_maus_cursor, 0, trail.x, trail.y, 1, 1, image_angle, trail.image_blend, 1);
}
draw_self();
draw_set_color(c_white);
if (timer >= 10 && timer <= 70 && !instance_exists(obj_mauswheel_cursor))
{
	textflash++;
	if (textflash > 2)
		textflash = 0;
}
