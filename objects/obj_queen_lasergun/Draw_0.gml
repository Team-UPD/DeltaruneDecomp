if (con == 1)
{
	draw_set_color(c_red);
	draw_sprite_ext(spr_lasergun_laser_telegraph, 0, x, y, 999, 1, image_angle, c_white, 0.3);
}
draw_self();
