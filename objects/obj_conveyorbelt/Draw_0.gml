if (xspeed != 0)
	image_speed = clamp(xspeed, -1, 1);
if (yspeed != 0)
	image_speed = clamp(yspeed, -1, 1);
ht = image_yscale / 2;
wd = image_xscale / 2;
for (var i = 0; i < ht; i++)
{
	for (var j = 0; j < wd; j++)
		draw_sprite_ext(sprite_index, image_index, x + (j * 40), y + (i * 40), 2, 2, 0, c_white, image_alpha);
}
