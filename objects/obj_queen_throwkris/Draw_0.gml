if (throwXcon == 1)
	draw_sprite_ext(spr_susieb_throwralseiready_setup, 0, x, y - ralseiy, 2, 2, image_angle, c_gray, image_alpha);
if (throwXcon == 2)
{
	draw_sprite_ext(spr_susieb_throwralseiready_setup, 0, x, y - ralseiy, 2, 2, image_angle, c_white, image_alpha);
	if (ralseiy > 0)
		ralseiy -= 4;
	if (ralseiy < 1 && !instance_exists(obj_writer) && !instance_exists(obj_queen_kristhrown))
	{
		sprite_index = spr_susieb_throwralseiready;
		image_index = 0;
		throwXcon = 3;
		throwcon = 1;
		angledraw = 1;
		throwready = 0;
	}
}
draw_self();
if (angledraw == 0)
	throwalpha = 0;
if (throwXcon == 3 && !instance_exists(obj_queen_throwtarget))
	exit;
if (angledraw == 1)
{
	if (throwalpha < 1)
		throwalpha += 0.125;
	draw_set_alpha(throwalpha);
	draw_set_color(merge_color(c_blue, c_white, 0.5));
	for (i = 0; i < 12; i += 1)
	{
		fr = 2;
		draw_circle(kx + (lx * ((i * fr) + fro)), ky + (ly * ((i * fr) + fro)) + krisyoff[(i * fr) + fro], 4, 0);
		draw_line_width(kx + (lx * ((i * fr) + fro)), ky + (ly * ((i * fr) + fro)) + krisyoff[(i * fr) + fro], kx + (lx * (((i + 1) * fr) + fro)), ky + (ly * (((i + 1) * fr) + fro)) + krisyoff[((i + 1) * fr) + fro], 2);
		draw_sprite_ext(spr_werewire_throwarrow, 0, kx, ky, 2, 2, angle, c_red, 1);
	}
	draw_set_alpha(1);
}
