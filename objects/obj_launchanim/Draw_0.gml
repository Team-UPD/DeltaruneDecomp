if (t == 0)
{
	shakex = scr_movetowards(shakex, 0, 1);
	shakex *= -1;
	hurtshake = 0;
	draw_sprite_ext(sprite_index, 0, x + shakex, y, 2, 2, 0, image_blend, 1);
}
else
{
	draw_sprite_center_pivot(sprite_index, image_index, x, y);
}
sweat = 0;
if (g <= 5)
	sweat = 1;
if (g >= 9 && g <= 13)
	sweat = 1;
if (sweat == 1)
	draw_sprite(spr_defeatsweat, 0, x - 6, y - 6);
if ((t > 0 && t <= 20) || g == 19)
{
	d = scr_custom_afterimage(obj_growing_afterimage);
	d.sprite_index = spr_launchsmoke;
	var sidelen = random_range(-10, 10);
	d.x += (sprite_width / 2) + lengthdir_x(sidelen, direction + 90);
	d.y += (sprite_height / 2) + lengthdir_y(sidelen, direction + 90);
	var rotdir = irandom(3);
	var _xscale = 1;
	var _yscale = 1;
	if ((rotdir % 2) == 1)
		_yscale = random_range(0.5, 0.75);
	else
		_xscale = random_range(0.5, 0.75);
	d.image_angle = (rotdir * 90) + direction;
	d.image_xscale = (choose(1, 1) * (scr_remapvalue(1, 10, t, 3, 1) + random_range(-0.2, 0.2))) - _xscale;
	d.image_yscale = (choose(1, 1) * (scr_remapvalue(1, 10, t, 3, 1) + random_range(-0.2, 0.2))) - _yscale;
	d.gravity = -0.1;
	d.direction = direction;
	d.speed = -2;
	d.depth = depth + 1;
}
if (t >= 30)
	instance_destroy();
