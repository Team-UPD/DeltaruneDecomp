timer += 0.1;
if (timer > 1)
	instance_destroy();
scale = scr_ease_out(timer, 3) * maxsize;
if (timer < 0.25)
	alpha = timer * 4;
else if (timer > 0.75)
	alpha = 1 - ((timer - 0.75) * 4);
else
	alpha = 1;
draw_sprite_ext(sprite_index, image_index, x, 755, scale, scale, 0, c_lime, alpha);
