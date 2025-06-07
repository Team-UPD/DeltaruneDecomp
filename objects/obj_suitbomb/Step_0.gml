if (con == 0)
{
	if (type == 0)
		sprite_index = spr_bomb_spade;
	if (type == 1)
		sprite_index = spr_bomb_diamond;
	if (type == 2)
		sprite_index = spr_bomb_heart;
	if (type == 3)
		sprite_index = spr_bomb_club;
	visible = 1;
	con = 1;
}
if (con == 1)
{
	timer += 1;
	if (timer >= 10)
	{
		with (obj_joker)
			beepnoise = 1;
		image_speed = timer / maxtimer;
	}
	if (timer >= maxtimer)
	{
		con = 2;
		timer = 0;
		speed = 0;
	}
}
if (con == 2)
{
	with (obj_joker)
		burstnoise = 1;
	if (type == 0)
	{
		dir = random(360);
		maxe = 12;
		for (i = 0; i < 12; i += 1)
		{
			spade[i] = instance_create(x, y, obj_regularbullet);
			scr_bullet_inherit(spade[i]);
			spade[i].active = 1;
			spade[i].direction = dir + (i * (360 / maxe));
			spade[i].speed = 8;
			spade[i].image_angle = spade[i].direction;
			spade[i].sprite_index = spr_spadebullet;
		}
		con = 3;
	}
	if (type == 1)
	{
		for (i = 0; i < 3; i += 1)
		{
			diamond[i] = instance_create(x, y, obj_regularbullet);
			diamond[i].damage = 100;
			scr_bullet_inherit(diamond[i]);
			with (diamond[i])
				move_towards_point(obj_heart.x + 8, obj_heart.y + 8, 11);
			diamond[i].speed -= i;
			diamond[i].image_angle = diamond[i].direction;
			diamond[i].sprite_index = spr_diamondbullet;
		}
		con = 3;
	}
	if (type == 2)
	{
		h = instance_create(x, y, obj_heartbomb_blast);
		scr_bullet_inherit(h);
		con = 3;
	}
	if (type == 3)
	{
		dir = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
		for (i = 0; i < 3; i += 1)
		{
			club[i] = instance_create(x, y, obj_regularbullet);
			club[i].sprite_index = spr_clubsbullet;
			club[i].damage = 100;
			scr_bullet_inherit(club[i]);
			club[i].active = 1;
			club[i].direction = (dir - 20) + (i * 20);
			club[i].image_angle = club[i].direction;
			club[i].speed = 8;
		}
		con = 3;
	}
}
if (explodedraw >= 40)
	instance_destroy();
