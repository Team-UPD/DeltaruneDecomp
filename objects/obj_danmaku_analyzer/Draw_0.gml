if (!surface_exists(mysurface))
	mysurface = surface_create(640, 480);
surface_set_target(mysurface);
draw_set_alpha(0.5);
draw_set_color(c_aqua);
with (obj_collidebullet)
{
	if (mask_index > 1)
		draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_aqua, 0.5);
	else
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 0);
}
draw_set_alpha(1);
surface_reset_target();
draw_surface(mysurface, camerax(), cameray());
global.hp[1] = 999;
