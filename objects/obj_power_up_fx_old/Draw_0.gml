if (init == 0)
{
	if (pivotx == -999)
		pivotx = sprite_width / 2;
	if (pivoty == -999)
		pivoty = sprite_height / 2;
	init = 1;
}
timer++;
effecttimer++;
var __alpha = clamp(timer / poweruptime, 0, 1);
scr_draw_outline(2, image_blend, __alpha * 2);
draw_self();
d3d_set_fog(true, image_blend, 0, 1);
flashtimer++;
if (flashtimer >= flashspeed)
{
	flashtimer = 0;
	flashspeed = max(4, (flashspeed * 2) / 3);
}
var __flash = lerp(((timer + 15) >= poweruptime) ? 0.9 : __alpha, 1, sin((flashtimer / flashspeed) * pi));
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, __flash);
d3d_set_fog(false, c_black, 0, 0);
var centerX = (x - sprite_get_xoffset(sprite_index)) + pivotx;
var centerY = (y - sprite_get_yoffset(sprite_index)) + pivoty;
if (effecttimer >= effectPause)
{
	if ((timer + 15) >= poweruptime)
	{
		d = scr_custom_afterimage(obj_power_up_afterimage);
		d.depth = depth + 1;
		d.image_alpha = max(0.1, __alpha);
		d.reverse = 1;
		d.fade = 0.1;
		d.pivotx = pivotx;
		d.pivoty = pivoty;
		d = scr_custom_afterimage(obj_power_up_afterimage);
		d.image_alpha = max(0.1, __alpha);
		d.fade = 0.1;
		d.image_blend = image_blend;
		d.pivotx = pivotx;
		d.pivoty = pivoty;
	}
	draw_set_blend_mode(bm_normal);
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
		var _circlesize = lerp(0.75, 1, scr_ease_out(_progress, 5));
		var _circlewidth = _circlesize * (1 - scr_ease_out(min(_progress * 3, 1), 5));
		draw_set_alpha(1 - scr_ease_in(_progress, 4));
		scr_draw_circle_width_qb(centerX, centerY, (_circlesize * 80) - (_circlewidth / 2), _circlewidth * 80, 36);
		draw_set_alpha(1);
	}
}
else if (intensity == 3)
{
	if (timer > (poweruptime + 15))
	{
	}
}
