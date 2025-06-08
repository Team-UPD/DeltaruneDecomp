if (image_alpha < 1 && obj_spamton_attack_mode.state <= 2)
{
	image_alpha += 0.1;
}
else if (obj_spamton_attack_mode.state > 2)
{
	image_alpha -= 0.1;
	active = false;
	if (image_alpha <= 0)
		instance_destroy();
}
var maxx = obj_spamton_attack_mode.x + obj_spamton_attack_mode.mouthx;
if (obj_spamton_attack_mode.state == 2)
{
	scr_drawpart_crop(0, 0, maxx, 800);
	if ((x - sprite_xoffset) > maxx)
		instance_destroy();
}
else
{
	draw_self();
}
