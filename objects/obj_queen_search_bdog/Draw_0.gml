if (animtimer >= 8)
	animtimer = 0;
image_index = floor(animtimer / 4);
if (timer > 80)
	animtimer += 2;
else
	animtimer++;
if (loading > 0)
{
	loading--;
	if (loading == 30)
	{
	}
}
for (i = 0; i < 4; i++)
{
	xx = lerp(xstart, x, i / 4);
	yy = lerp(ystart, y, i / 4);
	draw_sprite(sprite_index, 2, xx, yy);
}
if (timer > 0)
	image_angle += (timer / 6);
hatx = lastx + scr_orbitx(0, 0, -9, -17, lastangle);
haty = lasty + scr_orbity(0, 0, -9, -17, lastangle);
var hatangle = (point_direction(hatx, haty, x + scr_orbitx(0, 0, -9, -8, image_angle), y + scr_orbity(0, 0, -9, -8, image_angle)) + 90) % 360;
var hatx1 = hatx + scr_orbitx(0, 0, -4, 0, hatangle);
var haty1 = haty + scr_orbity(0, 0, -4, 0, hatangle);
var hatx2 = hatx + scr_orbitx(0, 0, 5, 0, hatangle);
var haty2 = haty + scr_orbity(0, 0, 5, 0, hatangle);
var headx1 = x + scr_orbitx(0, 0, -18, -6, image_angle);
var heady1 = y + scr_orbity(0, 0, -18, -6, image_angle);
var headx2 = x + scr_orbitx(0, 0, 2, -10, image_angle);
var heady2 = y + scr_orbity(0, 0, 2, -10, image_angle);
draw_set_color(c_white);
draw_line(hatx1, haty1, headx1, heady1);
draw_line(hatx2, haty2, headx2, heady2);
draw_self();
draw_sprite_ext(sprite_index, 3, hatx, haty, 1, 1, hatangle, c_white, 1);
lastx = x;
lasty = y;
lastangle = image_angle;
if (bufferstate == 0 && loading == 0)
{
	var _af = scr_custom_afterimage(obj_buffer_afterimage);
	_af.image_alpha = 0.5;
	_af = scr_custom_afterimage(obj_buffer_afterimage);
	_af.image_alpha = 0.5;
	_af.image_index = 3;
	_af.x = hatx;
	_af.y = haty;
	_af.image_angle = hatangle;
}
