timer++;
depth = -99999;
var maxsize = 1;
if (o_boxingcontroller.wireframe_boxing == 1)
	maxsize = 0.4;
if (timer <= 20)
{
	image_xscale = lerp_ease_in(image_xscale, maxsize, timer / 45, 0);
	image_yscale = lerp_ease_in(image_yscale, maxsize, timer / 45, 0);
}
if (timer >= 9)
{
	if (timer >= 19)
		image_alpha -= 0.05;
	xoffset[0] -= letterspeed1;
	xoffset[1] -= letterspeed2;
	xoffset[3] += letterspeed2;
	xoffset[4] += letterspeed1;
	letterspeed1 -= 0.25;
	letterspeed2 -= 0.125;
	if (letterspeed1 < 0)
		letterspeed1 = 0;
	if (letterspeed2 < 0)
		letterspeed2 = 0;
}
if (timer == 39)
	instance_destroy();
for (i = 0; i < 5; i += 1)
	draw_sprite_ext(sprite_index, i, x + xoffset[i], y, image_xscale, image_yscale, 0, c_white, image_alpha);
