if (specialDraw == 1)
{
	glowValue = clamp(glowValue + 0.05, 0, 1);
	draw_sprite_ext_flash(ra_actor.sprite_index, ra_actor.image_index, ra_actor.x, ra_actor.y, ra_actor.image_xscale, ra_actor.image_yscale, ra_actor.image_angle, ra_actor.image_blend, glowValue);
}
if (specialDraw == 2)
{
	draw_sprite_ext_flash(ra_actor.sprite_index, ra_actor.image_index, ra_actor.x, ra_actor.y, ra_actor.image_xscale, ra_actor.image_yscale, ra_actor.image_angle, ra_actor.image_blend, 0);
	specialDraw = 3;
}
