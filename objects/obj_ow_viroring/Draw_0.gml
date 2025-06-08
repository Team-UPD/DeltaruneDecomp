draw_self();
draw_set_blend_mode(bm_add);
if (timer >= (shotSpeed - 10) && active)
	flashamt = lerp(flashamt, (timer - (shotSpeed - 10)) / 10, 0.5);
else
	flashamt = lerp(flashamt, 0, 0.4);
for (var i = 0; i < 5; i++)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, flashamt);
draw_set_blend_mode(bm_normal);
