var redscreen = 26;
if (scr_onscreen(id) && scr_onscreen_tolerance(other, 64) && active == 1 && other.aligned == 1 && other.image_index != redscreen && other.image_index != 9 && other.sprite_index != spr_queenscreen_red)
{
	make_simple_bullet = 0;
	simple_bullet_index = 0;
	cause_explosion = 0;
	speed = 0;
	active = 0;
	exploded = 1;
	if (other.image_index == 27 || other.image_index == 31)
	{
		other.extflag = 0;
		make_simple_bullet = 1;
		btype = "dancer";
	}
	if (other.image_index == 28)
	{
		make_simple_bullet = 1;
		simple_bullet_index = 2;
		btype = "virus";
	}
	if (other.image_index == 29 || other.extflag == 6)
	{
		cause_explosion = 1;
		btype = "bomb";
	}
	if (other.image_index == 37)
	{
		cause_explosion = 1;
		btype = "tribomb";
	}
	if (other.extflag == 11 && room == room_dw_cyber_viro_ring)
	{
		with (obj_ow_viroring)
			con = 99;
		with (obj_virospear)
			exploded = 1;
		safe_delete(obj_forcefield);
		safe_delete(obj_overworld_bulletarea);
		obj_mainchara.battlemode = 0;
		scr_shakescreen();
		snd_play(snd_won);
		global.flag[352] = 1;
	}
	if (other.extflag == 10)
	{
		global.flag[427] = 1;
		plat = scr_dark_marker(758, 1150, spr_viroring_hiddenplatform);
		plat.depth = 998000;
		leftlight = instance_create(760, 1200, obj_cyber_wall_lights_left);
		leftlight.image_xscale = 1;
		leftlight.depth = plat.depth - 10;
		midlight = instance_create(802, 1200, obj_cyber_wall_lights);
		midlight.depth = plat.depth - 10;
		midlight2 = instance_create(842, 1200, obj_cyber_wall_lights);
		midlight2.depth = plat.depth - 10;
		rightlight = instance_create(864, 1200, obj_cyber_wall_lights_right);
		rightlight.depth = plat.depth - 12;
		chest = instance_create(844, 1144, obj_treasure_room);
		shake = instance_create(x, y, obj_shake);
		snd_play(snd_impact);
		with (obj_ow_viroring)
		{
			if (trigNum == 3)
				con = 99;
		}
		if (instance_exists(obj_overworld_bulletarea))
			obj_overworld_bulletarea.image_yscale = 22;
	}
	if (make_simple_bullet == 1)
	{
		b = instance_create(other.x, other.y, obj_overworldbulletparent);
		if (btype != "dancer")
		{
			b.sprite_index = spr_queenscreen_bullets;
			b.image_index = simple_bullet_index;
			b.image_speed = 0;
			b.tolerance = 10;
		}
		if (btype == "dancer")
		{
			b.sprite_index = spr_queenscreen_bullet_dance;
			b.image_speed = 0.25;
			b.tolerance = 10;
		}
		b.active = 1;
		b.target = 3;
		b.damage = 16;
		b.depth = 200;
		b.alarm[0] = -10;
		b.image_xscale = 2;
		b.image_yscale = 2;
		with (b)
			move_towards_point(obj_mainchara.x + 2, obj_mainchara.y + 4, 4);
		b.friction = -0.2;
	}
	if (cause_explosion == 1)
	{
		if (btype == "bomb")
		{
			with (other)
				instance_create(x, y, obj_viroroom_bomb);
		}
		if (btype == "tribomb")
		{
			with (other)
				instance_create(x, y, obj_viroroom_tribullet);
		}
	}
	if (other.extflag == 11)
		other.image_index = 42;
	else
		other.sprite_index = spr_queenscreen_red;
	active = 0;
	snd_play_pitch(snd_jump, 2.5);
}
if (other.image_index == 9 && active == 1 && room == room_dw_mansion_east_1f_d)
{
	if (other.x >= camerax() && other.x <= (camerax() + 640) && other.y >= cameray() && other.y <= (cameray() + 480))
	{
		other.tasquecon = 1;
		global.interact = 1;
		if (instance_exists(obj_ow_virokun_mansion_east_1f_d))
			obj_ow_virokun_mansion_east_1f_d.con = 1.5;
		if (instance_exists(obj_mainchara))
			obj_mainchara.battlemode = 0;
		if (instance_exists(obj_overworld_bulletarea))
		{
			with (obj_overworld_bulletarea)
				instance_destroy();
		}
		other.sprite_index = spr_queenscreen_red;
		if (instance_exists(obj_overworldbulletparent))
		{
			with (obj_overworldbulletparent)
				instance_destroy();
		}
		if (instance_exists(obj_virospear))
		{
			with (obj_virospear)
				instance_destroy();
		}
	}
}
