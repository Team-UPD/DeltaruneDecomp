draw_self();
if (draw_in)
{
	draw_sprite_ext(spr_maus_intext, 0, x - 40, y - draw_in_timer, 2, 2, 0, c_white, 2 - (draw_in_timer / 10));
	draw_in_timer++;
}
if (instance_exists(obj_maus_split))
{
}
