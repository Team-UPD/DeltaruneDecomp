depth = 900000;
siner += 0.5;
y = 132;
for (i = 0; i < 10; i++)
{
	draw_sprite_ext(spr_beatbullet_smol, 0, x + (sin(i + (siner / 4)) * 40), y - (i * 30), 2, 2, 90, c_white, 0.8);
	draw_sprite_ext(spr_beatbullet_smol, 0, x - (sin(i + (siner / 4)) * 40), y - (i * 30), 2, 2, -90, c_white, 0.8);
}
for (i = 0; i < 4; i++)
{
	var alphaadd = sin((siner / 4) + i) * 0.1;
	if (global.flag[8] == 1)
		alphaadd = 0;
	draw_sprite_ext(spr_beatbullet_smol, 0, x + 60, y - (i * 30), 2, 2, 90, c_white, 0.9 + alphaadd);
	draw_sprite_ext(spr_beatbullet_smol, 0, x - 60, y - (i * 30), 2, 2, -90, c_white, 0.9 + alphaadd);
}
