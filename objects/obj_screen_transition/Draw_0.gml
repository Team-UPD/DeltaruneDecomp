if (!_active)
	exit;
if (!sprite_exists(spr_aftereffect))
{
	spr_aftereffect = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0);
	sprite_set_offset(spr_aftereffect, room_width / 2, room_height / 2);
	yy = room_height / 2;
}
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_color(c_white);
draw_sprite_ext(spr_aftereffect, 0, room_width / 2, yy, xscale, yscale, 0, c_white, fadeout);
