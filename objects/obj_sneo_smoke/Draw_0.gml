var _scale_a = lerp(2, 2.15, timer / 75);
image_xscale = _scale_a;
image_yscale = _scale_a;
image_alpha = lerp(1, 0, timer / 75);
timer++;
draw_self();
if (timer > 75)
	instance_destroy();
