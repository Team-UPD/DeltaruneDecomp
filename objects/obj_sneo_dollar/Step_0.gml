if (fade == 1)
{
	image_alpha -= 0.1;
	speed = 0;
	if (image_alpha <= 0)
		instance_destroy();
}
event_inherited();
if (!instance_exists(obj_sneo_final_forme))
	exit;
if (x > ((obj_sneo_final_forme.x + obj_sneo_final_forme.mouthx) - 50))
	y += clamp((obj_sneo_final_forme.y + obj_sneo_final_forme.mouthy) - y, -5, 5);
if (x < ((obj_sneo_final_forme.x + obj_sneo_final_forme.mouthx) - 10))
{
	direction = point_direction(x, y, obj_sneo_final_forme.x + obj_sneo_final_forme.mouthx, obj_sneo_final_forme.y + obj_sneo_final_forme.mouthy);
	friction = -0.1;
}
var _mouthrelative = obj_sneo_final_forme.x + obj_sneo_final_forme.mouthx;
var _scalesize = lerp(startscale, 1, clamp(scr_inverselerp(_mouthrelative - 200, _mouthrelative - 50, x), 0, 1));
image_xscale = _scalesize;
image_yscale = _scalesize;
if (x > (obj_sneo_final_forme.x + obj_sneo_final_forme.mouthx + 50))
{
	instance_destroy();
	snd_play(snd_swallow);
}
