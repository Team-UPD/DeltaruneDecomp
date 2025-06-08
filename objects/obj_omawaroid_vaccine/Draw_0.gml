if (image_index == 2 && image_speed > 0)
	image_speed = 0;
if ((hspeed > 0 && x > (obj_growtangle.x + (obj_growtangle.sprite_width / 2) + 10)) || (hspeed < 0 && x < (obj_growtangle.x - (obj_growtangle.sprite_width / 2) - 10)))
{
	image_alpha -= 0.1;
	active = false;
}
else if (image_alpha < 1)
{
	image_alpha += 0.1;
}
draw_self();
