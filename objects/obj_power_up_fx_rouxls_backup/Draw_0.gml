if (init == 0)
{
	if (pivotx == -999)
		pivotx = (sprite_width / 2) - (sprite_get_xoffset(sprite_index) * image_xscale);
	if (pivoty == -999)
		pivoty = (sprite_height / 2) - (sprite_get_yoffset(sprite_index) * image_yscale);
	init = 1;
}
timer++;
effecttimer++;
var __alpha = clamp(timer / poweruptime, 0, 1);
scr_draw_outline(2, image_blend, __alpha * 2);
draw_self();
d3d_set_fog(true, image_blend, 0, 1);
flashtimer++;
if (ripple_effect == 0 && flashtimer >= (flashspeed / 2))
{
	ripple_effect = 1;
	with (obj_ch2_scene21_loop.puddle)
	{
		var ripple = scr_custom_afterimage(obj_power_up_afterimage);
		ripple.sprite_index = spr_rouxls_ripple;
		ripple.image_blend = #E3FF67;
		ripple.yrate *= 5;
		ripple.use_pivot = true;
		ripple.maxsize = clamp(1 - ((y - 90) / 45), 0.1, 2);
		ripple.image_speed = 0;
		ripple.image_index = (obj_ch2_scene21_loop.thrash.part[0] == 2) ? 1 : 0;
		ripple.depth = depth - 1;
	}
}
if (flashtimer >= flashspeed)
{
	ripple_effect = 0;
	flashtimer = 0;
	flashspeed = max(4, (flashspeed * 2) / 3);
}
var __flash = __alpha + sin((flashtimer / flashspeed) * pi);
if ((timer + 15) >= poweruptime)
	__flash = sin(((timer % 3) / 3) * pi) / 4;
draw_set_blend_mode(bm_add);
__alpha *= 0.8;
draw_sprite_ext(spr_rurus_aura, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, __flash / 2);
if (ring_timer > 0)
	ring_timer--;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, __alpha);
d3d_set_fog(false, c_black, 0, 0);
if (instance_exists(obj_thrashmachine))
{
	obj_thrashmachine.rim_flash = (__flash / 2) + (__alpha / 2);
	obj_thrashmachine.glow = __alpha / 4;
}
var centerX = x + pivotx;
var centerY = y + pivoty;
if (effecttimer >= effectPause)
{
	if ((timer + 15) >= poweruptime)
	{
		d = scr_custom_afterimage(obj_power_up_afterimage);
		d.depth = depth + 2;
		d.image_alpha = max(0.1, __alpha);
		d.reverse = 1;
		d.fade = 0.1;
		d.pivotx = pivotx;
		d.pivoty = pivoty;
		d = scr_custom_afterimage(obj_power_up_afterimage);
		d.image_alpha = max(0.1, __alpha);
		d.fade = 0.1;
		d.depth += 2;
		d.image_blend = image_blend;
		d.pivotx = pivotx;
		d.pivoty = pivoty;
	}
	if (intensity >= 2 && timer < (poweruptime - 15))
	{
		var _thinindex = irandom(5);
		for (i = 0; i < 6; i++)
		{
			d = instance_create(centerX, centerY, obj_rouxls_power_up_orb);
			d.direction = irandom(60) + (i * 60);
			d.lifetime = effectPause * 2;
			d.depth = depth + 1;
			d.image_blend = image_blend;
			if (i == _thinindex)
				d.thin = true;
		}
	}
	if (effectPause > 5)
		effectPause--;
	effecttimer = 0;
}
draw_set_blend_mode(bm_normal);
if (intensity == 1)
{
}
if (intensity == 2)
{
	if ((timer + 15) >= poweruptime && (timer + 15) <= (poweruptime + 30))
	{
		draw_set_color(image_blend);
		var _progress = ((timer + 15) - poweruptime) / 30;
		var _circlesize = lerp(0.75, 1, scr_ease_out(_progress, 5)) * 80;
		var _circlewidth = scr_ease_out(_progress, 5) * 78;
		draw_set_alpha(1 - scr_ease_in(_progress, 4));
		scr_draw_circle_width_radius(centerX, centerY, _circlesize, _circlewidth, 36);
		draw_set_alpha(1);
		if (_progress <= 0)
			draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_black, 0.5);
	}
}
else if (intensity == 3)
{
	if (timer > (poweruptime + 15))
	{
	}
}
