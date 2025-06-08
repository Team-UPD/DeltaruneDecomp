currentdir = direction;
if (direction == 0 && currentdir > 260)
	currentdir = -90;
if (direction == 270 && currentdir < 45)
	currentdir = 360;
prevdir = currentdir;
if (abs(currentdir - direction) <= 90)
{
	if ((currentdir - direction) > 0)
		currentdir -= 45;
	if ((currentdir - direction) < 0)
		currentdir += 45;
}
else
{
	if ((currentdir - direction) > 0)
		currentdir = direction + 45;
	if ((currentdir - direction) < 0)
		currentdir = direction - 45;
}
if (con == 0)
	draw_sprite_ext(spr_holemouse_emerge, 0, x + 20, y + 20, 2, 2, 0, c_white, image_alpha);
if (con == 1)
{
	draw_set_color(c_white);
	draw_sprite_ext(spr_holemouse_tail, timer / 2, x + 20, y + 20, 2, 2, prevdir, c_white, image_alpha);
	draw_sprite_ext(spr_holemouse, 0, x + 20, y + 20, 2, 2, currentdir, c_white, image_alpha);
}
if (con == 2)
	draw_sprite_ext(spr_holemouse_exit, 0, x + 20, y + 20, 2, 2, 0, c_white, image_alpha);
if (con >= 5)
{
	draw_set_color(c_black);
	draw_ellipse((x + 20) - 10, y + 20 + 15, x + 20 + 10, y + 20 + 20, false);
	if (customSprite == spr_holemouse)
	{
		draw_sprite_ext(spr_holemouse_tail, timer / 2, x + 20, y + 20 + fakeY, 2, 2, prevdir, c_white, image_alpha);
		draw_sprite_ext(spr_holemouse, 0, x + 20, y + 20 + fakeY, 2, 2, currentdir, c_white, image_alpha);
	}
	else
	{
		draw_sprite_ext(customSprite, 0, x + 20, y + 20 + fakeY, 2, 2, 0, c_white, image_alpha);
	}
}
