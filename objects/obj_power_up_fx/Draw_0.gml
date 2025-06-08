if (init == 0)
{
	if (use_pivot)
	{
		if (pivotx == -999)
			pivotx = 0;
		if (pivoty == -999)
			pivoty = 0;
	}
	else
	{
		if (pivotx == -999)
			pivotx = (sprite_width / 2) - (sprite_get_xoffset(sprite_index) * image_xscale);
		if (pivoty == -999)
			pivoty = (sprite_height / 2) - (sprite_get_yoffset(sprite_index) * image_yscale);
	}
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
var __flash = __alpha + (sin((flashtimer / flashspeed) * pi) / 4);
draw_set_blend_mode(bm_add);
if (ring_timer > 0)
	ring_timer--;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, __flash);
d3d_set_fog(false, c_black, 0, 0);
var centerX = x + pivotx;
var centerY = y + pivoty;
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
		d.use_pivot = use_pivot;
		d = scr_custom_afterimage(obj_power_up_afterimage);
		d.image_alpha = max(0.1, __alpha);
		d.fade = 0.1;
		d.image_blend = image_blend;
		d.use_pivot = use_pivot;
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
