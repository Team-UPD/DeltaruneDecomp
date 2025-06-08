timer++;
if (timer == 8)
{
	if (sprite_index == spr_gigaqueen_intro_round1)
		snd_play(snd_boxing_round1);
	if (sprite_index == spr_gigaqueen_intro_round2)
		snd_play(snd_boxing_round2);
	if (sprite_index == spr_gigaqueen_intro_round3)
		snd_play(snd_boxing_round3);
}
if (o_boxingcontroller.wireframe_boxing == 1)
{
	if (timer <= 30)
		y = EaseOutBounce(timer / 30, ystart + 60, ystart + 60, 1);
}
else if (timer <= 30)
{
	y = EaseOutBounce(timer / 30, ystart + 100, cameray() + 200, 1);
}
if (timer < 52)
{
	draw_self();
}
else
{
	image_alpha -= 0.1;
	if (image_alpha < 0)
		instance_destroy();
	xoffset[0] -= 3;
	yoffset[0] -= 4;
	xoffset[1] += 3;
	yoffset[1] -= 4;
	xoffset[2] += 3;
	yoffset[2] += 4;
	xoffset[3] -= 3;
	yoffset[3] += 4;
	for (i = 0; i < 4; i += 1)
		draw_sprite_ext(sprite_index, 1 + i, x + xoffset[i], y + yoffset[i], image_xscale, image_yscale, image_angle, c_white, image_alpha);
}
