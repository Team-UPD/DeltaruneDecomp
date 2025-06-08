draw_sprite_tiled_ext(spr_cyber_coaster_bg_cityscape, 0, camerax(), y, 1, 1, c_white, 1);
draw_rectangle_color(camerax(), cameray() + 160, camerax() + view_wport[0], cameray() + view_hport[0], c_black, c_black, c_black, c_black, false);
draw_set_color(c_navy);
for (i = 0; i < 7; i++)
{
	ly = lerp(160, 250, (i * i) / 100);
	draw_line_width(-10, ly, room_width + 10, ly, 4 - (i / 3));
}
drawx = (camerax() + cx) - (cameray() / factor);
animsiner++;
draw_sprite_ext(spr_castle_fountain, animsiner / 10, drawx - 25, y, 2, 2, 1, c_white, 1);
draw_sprite_ext(spr_queenmansion_bg_base, image_index, drawx, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(spr_queenmansion_bg_middle, image_index, drawx, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index, drawx, y, image_xscale, image_yscale, 0, c_white, 1);
draw_triangle_colour(drawx - 3, y + 160, 520 + cx, y + 240, 720 + cx, y + 240, bred, 255, 255, false);
