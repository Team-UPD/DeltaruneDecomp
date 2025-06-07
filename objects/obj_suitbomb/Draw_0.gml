if (con < 2)
	draw_self();
if (con >= 2)
{
	explodedraw += 1;
	draw_set_color(c_white);
	draw_set_alpha(1.5 - (explodedraw / 10));
	draw_circle(x, y, (sprite_width / 2) + (explodedraw * 2), false);
	draw_set_alpha(1);
}
