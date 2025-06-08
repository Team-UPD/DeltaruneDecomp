if (dance_active)
	draw_sprite_ext(spr_queenscreen, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
else
	draw_sprite_ext(spr_queenscreen, 26, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
if (scr_debug())
	draw_text(10, 100, string(audio_sound_get_track_position(global.currentsong[1])));
draw_set_color(c_white);
draw_self();
siner++;
y += (sin(siner / 16) / 4);
if (global.flag[8] == 0)
{
	draw_set_blend_mode(bm_add);
	draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale + 0.01, image_yscale + 0.01, image_angle, image_blend, 0.1 + (sin(siner / 5) * 0.1));
	draw_set_blend_mode(bm_normal);
}
