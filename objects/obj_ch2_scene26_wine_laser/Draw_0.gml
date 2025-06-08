depth = 96850;
laserx = x + (27 * image_xscale);
lasery = y - (6 * image_yscale);
beam_power = 0;
if (timer < 0)
{
	timer += 1.25;
	if (timer < -10)
		exit;
	draw_set_color(#B5E61D);
	draw_circle(laserx, lasery - ((timer + 10) * 25), 20, false);
}
if (timer > 0)
	beam_power = clamp(0, 5, beam_power / 2);
if (trailstart > 0 && trailend < 640)
{
	var _wine_color = merge_color(#B5E61D, c_white, clamp(scr_remapvalue(35, 45, timer, 0, 1), 0, 1));
	draw_set_color(_wine_color);
	if ((trailend + camerax()) < (noelle_x - 80))
		draw_rectangle(trailend + camerax(), 310, min(noelle_x - 80, trailstart + camerax()), 314, false);
	var _swerveleft = clamp((trailend + camerax()) - (noelle_x - 80), 0, 160);
	var _swerveright = clamp((trailstart + camerax()) - (noelle_x - 80), 0, 160 - _swerveleft);
	if (_swerveleft < 160 && _swerveright > 0)
		draw_sprite_part_ext(spr_cutscene_26_laser_swerve, 0, _swerveleft, 0, _swerveright, 160, (noelle_x - 80) + _swerveleft, 272, 1, 1, _wine_color, 1);
	if ((trailstart + camerax()) > (noelle_x + 80))
		draw_rectangle(max(trailend + camerax(), noelle_x + 80), 310, trailstart + camerax(), 314, false);
}
if (timer >= 40)
{
	if (timer >= 40 && timer < 41)
	{
		d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
		d.shakex = ceil(2);
		d.shakey = ceil(2);
		d.permashake = 1;
	}
	var bombdepth = irandom(5);
	d = instance_create(((camerax() + ((timer - 40) * 50)) - 50) + random_range(-15, 15), 230 + (bombdepth * 5), obj_animation_dx);
	trailend = d.x - 30 - camerax();
	d.sprite_index = spr_explosion_round;
	if ((explosioncount % 3) == 0)
		snd_play(snd_bomb);
	explosioncount++;
	d.image_xscale = 2;
	d.image_yscale = 2;
	d.image_speed = 0.75;
	d.depth -= bombdepth + 1;
	with (d)
		scr_depth();
	if (d.x > (camerax() + 680) && explosioncount >= 24)
	{
		if (instance_exists(obj_shake))
		{
			with (obj_shake)
				instance_destroy();
		}
		if (test_mode)
		{
			timer = -60;
			trailstart = 0;
			trailend = 0;
			explosioncount = 0;
			exit;
		}
		else
		{
			instance_destroy();
			exit;
		}
	}
}
if (timer >= 50)
{
	timer++;
	if (timer < 52)
	{
		var xincrease = lengthdir_x(4, 80);
		var yincrease = lengthdir_y(4, 80);
		for (i = 0; i < 40; i++)
		{
			d = instance_create(laserx + (xincrease * i), lasery + (yincrease * i), obj_ch2_scene26_wine_laser_splash);
			d.direction = 80 + random_range(-5, 5);
			d.speed = (i / 5) + 0.5;
			d.gravity = 0.5;
			d.image_speed = 0.25;
			d.depth = 1000001;
		}
	}
	exit;
}
var last_angle = lerp(90, 440, scr_ease_inout(timer / 50, 6));
if (timer >= 0)
{
	if (timer <= 40 && timer < 49)
		timer += 1.75;
	else
		timer += 0.75;
}
var current_angle = lerp(90, 440, scr_ease_inout(timer / 50, 6));
draw_set_color(#B5E61D);
var angleOffset = min(10, abs(last_angle - current_angle));
beam_power = clamp((1 - scr_ease_inout(timer / 50, 6)) * 40, 2, 20);
if (!surface_exists(laser_surface))
	laser_surface = surface_create(640, 480);
surface_set_target(laser_surface);
draw_clear_alpha(c_black, 0);
laserx -= camerax();
for (i = 0; i < 2; i++)
{
	draw_primitive_begin(pr_trianglestrip);
	xx = laserx + lengthdir_x(beam_power, current_angle + 90);
	yy = lasery + lengthdir_y(beam_power, current_angle + 90);
	draw_vertex(xx, yy);
	xx2 = laserx + lengthdir_x(beam_power, current_angle - 90);
	yy2 = lasery + lengthdir_y(beam_power, current_angle - 90);
	draw_vertex(xx2, yy2);
	var _beam_length = (timer < 0) ? ((timer + 10) * 25) : 1200;
	if (trailstart < 640)
	{
		var ybeam = lengthdir_y(_beam_length, current_angle + angleOffset);
		if (i == 1 && ybeam > 0 && trailstart < 640)
			trailstart = laserx + lengthdir_x(_beam_length * ((315 - yy) / ybeam), current_angle + angleOffset);
		else if (trailstart > 0 && trailstart < 640)
			trailstart = 700;
	}
	xx += lengthdir_x(_beam_length, current_angle + angleOffset);
	yy += lengthdir_y(_beam_length, current_angle + angleOffset);
	draw_vertex(xx, yy);
	_beam_length = (timer < 0) ? ((timer + 10) * 25) : 1200;
	xx2 += lengthdir_x(_beam_length, last_angle - angleOffset);
	yy2 += lengthdir_y(_beam_length, last_angle - angleOffset);
	draw_vertex(xx2, yy2);
	draw_primitive_end();
	draw_set_color(c_white);
	angleOffset = 0;
	beam_power = 0;
}
gpu_set_blendmode(bm_subtract);
draw_rectangle(0, 315, noelle_x - camerax() - 80, 480, false);
draw_rectangle(0, 345, 640, 480, false);
draw_sprite(spr_cutscene_26_laser_swerve, 1, noelle_x - camerax(), 313);
gpu_set_blendmode(bm_normal);
surface_reset_target();
draw_surface(laser_surface, camerax(), cameray());
