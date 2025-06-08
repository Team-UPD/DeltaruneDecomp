image_xscale = vspeed;
if (fillamount >= 15)
	instance_destroy();
draw_set_color(acidColor);
var __glassbottom = obj_growtangle.ystart + 30 + ((28 - abs(x - obj_growtangle.xstart)) / 2);
var __fillpoint = min(__glassbottom, obj_queen_wineglass.starty - obj_queen_wineglass.fill);
var __dropend = min(y, __glassbottom);
var __topend = min(__dropend, y - (image_xscale * 10));
draw_circle(x, __dropend, 7, 0);
draw_line_width(x, __dropend, x, __topend, 14);
if (y > __fillpoint)
{
	obj_queen_wineglass.prefill += 2;
	fillamount += 2;
	if (createdroplets == 0)
	{
		createdroplets = 1;
		var rand_dir = random(28);
		bullet = instance_create((x - 3) + random(5), y, obj_wine_droplet);
		bullet.direction = 76 + rand_dir;
		bullet.speed = 12;
		bullet.gravity_direction = 270;
		bullet.gravity = 0.75;
		bullet.depth = depth - 1;
		bullet = instance_create((x - 3) + random(5), y, obj_wine_droplet);
		bullet.direction = (76 + rand_dir) - 3;
		bullet.speed = 12;
		bullet.gravity_direction = 270;
		bullet.gravity = 0.75;
		bullet.depth = depth - 1;
		bullet = instance_create((x - 3) + random(5), y, obj_wine_droplet);
		bullet.direction = 76 + random(28);
		bullet.speed = 12;
		bullet.gravity_direction = 270;
		bullet.gravity = 0.75;
		bullet.depth = depth - 1;
	}
}
