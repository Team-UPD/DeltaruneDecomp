if (smallrocks)
{
	draw_sprite_ext(spr_cutscene_26_rocks_bg_2, 0, x, y, image_xscale, image_yscale, 0, image_blend, 1);
	draw_sprite_ext(spr_cutscene_26_rocks_bg_2, 0, x + 320, y, image_xscale, image_yscale, 0, image_blend, 1);
	draw_sprite_ext(spr_cutscene_26_rocks_bg_2, 0, x, y + 240, image_xscale, image_yscale, 0, image_blend, 1);
	draw_sprite_ext(spr_cutscene_26_rocks_bg_2, 0, x + 320, y + 240, image_xscale, image_yscale, 0, image_blend, 1);
}
else
{
	draw_sprite(spr_cutscene_26_rocks_bg, 0, x, y);
}
