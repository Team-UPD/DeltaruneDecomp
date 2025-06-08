if (!bottomhit && (y + vspeed) > ((obj_growtangle.y + (obj_growtangle.sprite_width / 2)) - 20))
{
	y = (obj_growtangle.y + (obj_growtangle.sprite_width / 2)) - 20;
	obj_growtangle.y += 4;
	direction = random_range(30, 150);
	speed = random(3);
	d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
	d.shakex = ceil(2);
	d.shakey = ceil(2);
	snd_play(snd_screenshake);
	bottomhit = 1;
}
if (y > (__view_get(e__VW.YView, 0) + 580))
	instance_destroy();
