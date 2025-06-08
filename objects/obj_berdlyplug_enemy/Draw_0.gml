if (shake > 0)
	shake -= 0.5;
var z = (random(shake) * 2) - shake;
if (shake2 > 0)
	shake2 -= 0.5;
var a = (random(shake2) * 2) - shake2;
if (sprite_index == spr_cutscene_25_berdly_grab_plug)
{
	draw_sprite_ext(spr_cutscene_25_berdly_grab_plug, 0, x + a, y + a, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else
{
	draw_sprite_ext(spr_berdly_plug_queen_boss, 1, x + a, y + a, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_berdly_plug_queen_boss, 0, x + z, y + z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
fsiner++;
if (flash == 1)
	draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
if (shake > 4)
	draw_sprite_ext_flash(spr_berdly_plug_queen_boss, 0, x + z, y + z, image_xscale, image_yscale, image_angle, image_blend, 1);
