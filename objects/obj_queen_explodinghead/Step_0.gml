if (global.turntimer < 2)
	instance_destroy();
if (laugh && scr_queen_buffercheck())
{
	if (laughpause == 0 && snd_is_playing(laughsound))
	{
		laughpause = 1;
		snd_pause(laughsound);
	}
	exit;
}
else if (laughpause == 1)
{
	laughpause = 0;
	snd_resume(laughsound);
}
if (timer == 20)
{
	image_speed = 1;
	sprite_index = spr_queen_wireframe_laugh;
	if (laugh == 1)
		laughsound = snd_play(snd_queen_bitcrushlaugh);
}
timer--;
if (first == 1)
	timer -= 1;
if (timer == 8 && buffer && !instance_exists(obj_queen_buffercontroller))
{
	var bc = instance_create(0, 0, obj_queen_buffercontroller);
	bc.bufferdelay = 15;
	bc.bufferduration = 30;
}
if (timer == 0)
{
	snd_play(snd_explosion_mmx3);
	if (ultimate == 1)
	{
		for (i = 0; i < 10; i++)
		{
			var _shotdir = (i * 36) + irandom(20);
			var _shotspread = ((i % 2) == 0) ? 3 : 1;
			var _bullet = obj_queen_bufferbullet;
			if (i == banana && abs(angle_difference(_shotdir, point_direction(x, y, obj_growtangle.x, obj_growtangle.y))) <= 45)
				_bullet = obj_queen_bananabullet;
			d = instance_create(x + lengthdir_x(_shotspread, _shotdir), y + lengthdir_y(_shotspread, _shotdir), _bullet);
			d.direction = _shotdir;
			d.speed = 10 + random(4);
			if (abs(d.direction - point_direction(x, y, obj_heart.x, obj_heart.y)) < 22)
				d.speed = d.speed / 1.5;
			d.image_xscale = 2;
			d.image_yscale = 2;
			d.fadeaway = 1;
			d.sprite_index = spr_queen_wireframe_temp_bullet;
			if (buffer == 0)
				d.slowdown = 1;
		}
	}
	else if (type == 0)
	{
		for (i = 0; i < 14; i++)
		{
			var _shotdir = (i * 25.71) + irandom(15);
			var _shotspread = ((i % 2) == 0) ? 3 : 1;
			var _bullet = obj_queen_bufferbullet;
			if (i == banana && abs(angle_difference(_shotdir, point_direction(x, y, obj_growtangle.x, obj_growtangle.y))) <= 45)
				_bullet = obj_queen_bananabullet;
			d = instance_create(x + lengthdir_x(_shotspread, _shotdir), y + lengthdir_y(_shotspread, _shotdir), _bullet);
			d.direction = _shotdir;
			d.speed = 9 + random(4);
			if (abs(d.direction - point_direction(x, y, obj_heart.x, obj_heart.y)) < 22)
				d.speed = d.speed / 1.5;
			d.image_xscale = 1.5;
			d.image_yscale = 1.5;
			d.fadeaway = 1;
			d.sprite_index = spr_queen_wireframe_temp_bullet;
			if (buffer == 0)
				d.slowdown = 1;
		}
	}
	else
	{
		for (i = 0; i < 9; i++)
		{
			var _shotdir = (i * 40) + irandom(25);
			var _shotspread = ((i % 2) == 0) ? 3 : 1;
			var _bullet = obj_queen_bufferbullet;
			if (i == banana && abs(angle_difference(_shotdir, point_direction(x, y, obj_growtangle.x, obj_growtangle.y))) <= 45)
				_bullet = obj_queen_bananabullet;
			d = instance_create(x + lengthdir_x(_shotspread, _shotdir), y + lengthdir_y(_shotspread, _shotdir), _bullet);
			d.direction = _shotdir;
			d.speed = buffer ? 12 : (7 + random(4));
			if (abs(d.direction - point_direction(x, y, obj_heart.x, obj_heart.y)) < 22)
				d.speed = d.speed / 1.5;
			d.image_xscale = 1.5;
			d.image_yscale = 1.5;
			d.fadeaway = 1;
			d.sprite_index = spr_queen_wireframe_temp_bullet;
			if (buffer == 0)
				d.slowdown = 1;
		}
	}
	d = instance_create(x, y, obj_buffer_tempeffect);
	d.sprite_index = spr_queen_wireframe_explode;
}
