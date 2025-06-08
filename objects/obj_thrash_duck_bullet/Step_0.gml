event_inherited();
if (gravity == 0 && x < (obj_growtangle.x - (obj_growtangle.sprite_width / 2)))
{
	gravity = 0.5;
	spin = 7;
}
image_angle += spin;
