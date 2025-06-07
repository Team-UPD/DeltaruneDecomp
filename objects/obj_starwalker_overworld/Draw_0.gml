targetx = obj_mainchara.x + (obj_mainchara.sprite_width / 2);
bodyfacing = 1;
if (targetx <= (x - 30))
	bodyfacing = 0;
if (targetx >= (x + 30))
	bodyfacing = 2;
if (attackcon < 2)
{
	if (bodyfacing == 0)
		xmake = -2;
	if (bodyfacing == 2)
		xmake = 2;
}
bounce = sin(siner / 5);
wing_index += (0.2 + abs(bounce / 8));
if (attackcon == -1)
	draw_sprite_ext(spr_starwalker_attack, 0, x, y + (bounce * 4), xmake, 2, image_angle, c_white, image_alpha);
if (attackcon == 0)
{
	siner += 1;
	draw_sprite_ext(spr_starwalker_wings, wing_index, x, y + (bounce * 4), 2, 2, image_angle, c_white, image_alpha);
	draw_sprite_ext(spr_starwalker_body, bodyfacing, x, y + (sin(siner / 5) * 2), 2, 2, image_angle, c_white, image_alpha);
}
if (attackcon == 1)
	draw_sprite_ext(spr_starwalker_attack, 0, x, y + (bounce * 4), xmake, 2, image_angle, c_white, image_alpha);
if (attackcon == 2)
{
	shkx = random(shakefactor);
	shky = random(shakefactor);
	if (shakefactor > 0)
		shakefactor -= 1;
	draw_sprite_ext(spr_starwalker_attack, 1, x + shkx, y + shky + (bounce * 4), xmake, 2, image_angle, c_white, image_alpha);
}
