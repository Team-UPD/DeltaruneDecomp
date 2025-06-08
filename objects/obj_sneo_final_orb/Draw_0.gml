flashsiner++;
var blend_color = merge_color(#00A2E8, c_aqua, 0.25 + (sin(flashsiner / 3) * 0.25));
draw_self();
image_angle += (10 + (timer * 2));
if (timer > 0)
{
	draw_sprite_ext(spr_sneo_bigcircle, 0, x, y, image_xscale + (timer * 2), image_yscale + timer, 0, c_white, 1);
	draw_sprite_ext(spr_pixel_white, 0, camerax() - 20, cameray() - 20, 220, 220, 0, c_white, clamp(timer / 15, 0, 1));
}
draw_set_alpha(0.5);
draw_set_color(c_white);
i = max(0, hp);
while (i < 12)
{
	var _conewidth = ((((i - 1) % 3) == 0) ? 14 : 4) / 2;
	var _x2 = lengthdir_x(999, ((sin(i) + 1) * 180) - _conewidth);
	var _y2 = lengthdir_y(999, ((sin(i) + 1) * 180) - _conewidth);
	var _x3 = lengthdir_x(999, ((sin(i) + 1) * 180) + _conewidth);
	var _y3 = lengthdir_y(999, ((sin(i) + 1) * 180) + _conewidth);
	draw_triangle(x, y, _x2, _y2, _x3, _y3, 0);
	i++;
}
draw_set_alpha(1);
