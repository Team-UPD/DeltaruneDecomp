visibiliytimer++;
if (visibiliytimer < 2)
	exit;
if (image_alpha < 1)
	image_alpha += 0.1;
draw_set_alpha(image_alpha);
draw_self();
draw_set_alpha(1);
