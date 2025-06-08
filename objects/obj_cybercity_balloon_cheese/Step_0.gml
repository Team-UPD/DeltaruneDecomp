siner += 1;
if (mode == 0)
	y = ystart + (sin(siner / 16) * 5);
if (place_meeting(x, y, obj_forcefield))
	broken = 1;
if (broken)
{
	image_index = 1;
	snd_play(snd_break2);
	afterimage = instance_create(x + 14, y + 14, obj_afterimage_cut);
	afterimage.sprite_index = sprite_index;
	afterimage.image_index = image_index;
	afterimage.image_blend = image_blend;
	afterimage.image_speed = 0;
	afterimage.depth = depth;
	scr_darksize(afterimage);
	afterimage.image_angle = image_angle;
	with (afterimage)
		event_user(0);
	instance_create(x + 8, y + 96, obj_mazecheese);
	global.flag[447] = 1;
	instance_destroy();
}
