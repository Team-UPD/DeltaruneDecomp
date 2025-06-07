scr_84_set_draw_font("mainbig");
draw_set_color(c_lime);
draw_set_alpha(image_alpha);
draw_text(x, y, string_hash_to_newline("+" + string(healamt)));
draw_set_alpha(1);
image_alpha -= 0.1;
if (image_alpha < 0)
	instance_destroy();
