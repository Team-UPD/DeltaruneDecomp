timer++;
var progress = scr_ease_out(timer / growtime, 2);
radius = lerp(minradius, maxradius, progress);
if (collision_circle(x, y, radius, obj_viro_needle, false, true))
{
	with (obj_viro_needle)
	{
		if (active == 0 || countdown > 0)
			continue;
		distance = distance_to_point(other.x, other.y);
		if (distance <= other.radius)
		{
			countdown = 1;
			flash = 4;
			spawnVirus = 1;
			spawning = false;
			d = instance_create(x, y, obj_animation_dx);
			d.sprite_index = spr_viro_poison_effect_big;
			d.image_angle = irandom(3) * 90;
			d.image_blend = other.color;
			d.image_xscale = 1;
			d.image_yscale = 1;
			d.depth = depth - 1;
		}
	}
}
if (radius >= nextradius)
{
	nextradius += 10;
	var c = radius * 2 * pi;
	var count = floor(c / 60) + 1;
	var startoffset = random(360);
	for (i = 0; i <= count; i++)
	{
		var dir = startoffset + ((360 / count) * i) + random_range(-180 / count, 180 / count);
		var len = radius + random_range(-5, 5);
		var xx = lengthdir_x(len, dir);
		var yy = lengthdir_y(len, dir);
		d = instance_create(xx + x, yy + y, obj_animation_dx);
		d.sprite_index = choose(spr_viro_poison_effect_a, spr_viro_poison_effect_b);
		d.image_angle = irandom(3) * 90;
		d.image_blend = color;
		d.image_alpha = 0.5;
		d.image_xscale = 1;
		d.image_yscale = 1;
	}
	if (timer >= growtime)
		instance_destroy();
}
