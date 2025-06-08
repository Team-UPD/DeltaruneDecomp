if (birthday >= infinity)
	show_error("BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW ", false);
if (birthday >= infinity)
	birthday = 0;
if (bufferstate == 0 && scr_queen_buffercheck())
{
	image_blend = c_gray;
	bufferstate = 1;
}
else if (bufferstate == 1 && !scr_queen_buffercheck())
{
	image_blend = c_white;
	bufferstate = 2;
}
if (bufferstate == 1)
	exit;
if (loading > 0)
	exit;
if (timer < 162)
{
	scr_orbitaroundpoint_dx(xstart, ystart, min(timer * 1.9, 340), (timer * 10 * flip) + direction);
}
else if (timer >= 162 && impact == 0)
{
	timer = 162;
	scr_orbitaroundpoint_dx(xstart, ystart, min(timer * 1.9, 340), (timer * 10 * flip) + direction);
	d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
	d.shakex = ceil(2);
	d.shakey = ceil(2);
	snd_play(snd_screenshake);
	impact = 1;
	var explosion = instance_create(x, y, obj_animation_dx);
	explosion.sprite_index = spr_realisticexplosion;
	explosion.image_index = 3;
	explosion.depth = depth - 4;
	birthday = infinity;
}
timer++;
bufferstate = 0;
