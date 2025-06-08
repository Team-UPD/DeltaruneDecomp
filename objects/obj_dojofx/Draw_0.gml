if (global.mnfight > 0 && global.fighting == 1)
{
	if (ball.y >= -200)
		ball.vspeed -= 1;
	else
		ball.vspeed = 0;
}
else if (ball.y < -10)
{
	ball.y = lerp(ball.y, 0, 0.5);
}
if (global.fighting)
{
	with (obj_battleback)
		bgtype = 1;
}
siner++;
var color = scr_make_color_hsv(siner / 4, 255, 220 + (sin(siner / 15) * 30));
draw_set_color(color);
ballback.image_blend = color;
ballback.x = ball.x;
ballback.y = ball.y;
ballback.depth = 6000;
draw_set_alpha(0.5);
for (i = 0; i < 16; i++)
{
	sino = sin((i / 2) + (siner / 48));
	draw_circle(ball.x + (sino * 200), ball.y + 60 + (sin(i / 4) * 20), 16 + (abs(sino) * 12), false);
}
draw_triangle_color(x, y + 80, x - 80, y + 200, x + 80, y + 200, 16777215, 0, 0, false);
draw_set_alpha(1);
bsiner++;
if (bsiner >= 80)
	bsiner -= 80;
for (i = 0; i < 12; i++)
{
	draw_sprite_ext(spr_cc_boombox, siner / 8, 4, (-240 + y + (i * 80)) - bsiner, 2, 2, 0, color, image_alpha);
	draw_sprite_ext(spr_cc_boombox, siner / 8, 570, -240 + y + (i * 80) + bsiner, 2, 2, 0, color, image_alpha);
}
