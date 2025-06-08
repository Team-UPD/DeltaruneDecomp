image_alpha -= 0.02;
x += h_speed;
if (image_alpha <= 0.8)
{
	var _ilerp = scr_remapvalue(0.8, 0, image_alpha, 0, 1);
	h_speed = lerp_ease_in(0, -8, _ilerp, 1);
}
if (image_alpha < 0)
	instance_destroy();
if (!instance_exists(o_coaster_berdly) && instance_exists(obj_ch2_scene11a.coaster_berdly) && instance_exists(obj_ch2_scene11a))
	depth = obj_ch2_scene11a.coaster_berdly.depth + 1;
