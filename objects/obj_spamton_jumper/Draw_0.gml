var minx = (obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + 5;
var maxx = obj_spamton_attack_mode.x + obj_spamton_attack_mode.mouthx;
if (timer > 0)
{
	var timerscale = scr_ease_out(1 - (abs(timer - 5) / 5), 7);
	var ypoint = obj_growtangle.y + (((obj_growtangle.sprite_height / 2) - 4) * flip);
	ypoint = lerp(y, ypoint, timerscale / 2);
	draw_sprite_ext(sprite_index, image_index, x, ypoint, 1 + (timerscale / 2), (1 - (timerscale / 2)) * yscale, 0, c_white, 1);
	if (timer > 0)
	{
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_ext(sprite_index, image_index, x, ypoint, 1 + (timerscale / 2), (1 - (timerscale / 2)) * yscale, 0, c_white, (10 - timer) / 10);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
else
{
	scr_drawpart_crop(minx, 0, maxx, 800);
}
if ((x + 20) < minx)
	instance_destroy();
