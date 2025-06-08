drawx = x;
drawy = y;
image_blend = merge_color(c_white, c_black, max(0, (y - 240) / 240));
if (init == 0)
{
	if (starter == 1)
		pattern = 4;
	else
		pattern = choose(0, 1, 2, 3);
	if (pattern == 0)
	{
		tiletype[0] = obj_marker;
		tiletype[1] = obj_marker;
		tiletype[2] = obj_marker;
		tiletype[3] = obj_marker;
		tiletype[4] = obj_holemouse_block_clockwise;
		tiletype[5] = obj_marker;
		tiletype[6] = obj_holemouse_block_counterclockwise;
		tiletype[7] = obj_holemouse_block_clockwise;
		rottype = 0;
		patidealy = 220 + (40 * choose(1, 2));
		puzSwitch = instance_create(x + 120, ((y + patidealy) - 220) + 40, obj_mice3_platSwitch);
		hole = instance_create(x + 40, y + 0, obj_holemouse_generator);
		staticTile[0] = instance_create(x + 0, y + 0, obj_holemouse_invis_clockwise);
		staticTile[1] = instance_create(x + 80, y + 0, obj_holemouse_invis_clockwise);
		staticTile[2] = instance_create(x + 0, y + 160, obj_holemouse_invis_clockwise);
		staticTile[3] = instance_create(x + 40, y + 160, obj_holemouse_invis_clockwise);
		staticTile[4] = instance_create(x + 80, y + 160, obj_holemouse_invis_clockwise);
	}
	if (pattern == 1)
	{
		tiletype[0] = obj_holemouse_block_clockwise;
		tiletype[1] = obj_holemouse_block_clockwise;
		tiletype[2] = obj_marker;
		tiletype[3] = obj_marker;
		tiletype[4] = obj_marker;
		tiletype[5] = obj_marker;
		rottype = 1;
		staticTile[0] = instance_create(x + 0, y + 0, obj_holemouse_invis_clockwise);
		staticTile[1] = instance_create(x + 80, y + 0, obj_holemouse_invis_clockwise);
		staticTile[2] = instance_create(x + 0, y + 160, obj_holemouse_invis_clockwise);
		staticTile[3] = instance_create(x + 40, y + 160, obj_holemouse_invis_clockwise);
		staticTile[4] = instance_create(x + 80, y + 160, obj_holemouse_invis_clockwise);
		hole = instance_create(x + 40, y + 0, obj_holemouse_generator);
		patidealy = 220 + (40 * choose(0, 1, 2));
		if (instance_exists(obj_masterPlatformController))
		{
			with (obj_masterPlatformController.noelle)
				idealy = other.patidealy;
		}
		puzSwitch = instance_create(x + 120, ((y + patidealy) - 220) + 40, obj_mice3_platSwitch);
	}
	if (pattern == 2)
	{
		tiletype[0] = obj_marker;
		tiletype[1] = obj_marker;
		tiletype[2] = obj_holemouse_block_counterclockwise;
		tiletype[3] = obj_marker;
		tiletype[4] = obj_marker;
		tiletype[5] = obj_marker;
		tiletype[6] = obj_holemouse_block_counterclockwise;
		tiletype[7] = obj_holemouse_block_clockwise;
		rottype = 0;
		patidealy = 220 + (40 * choose(1, 2));
		if (instance_exists(obj_masterPlatformController))
		{
			with (obj_masterPlatformController.noelle)
				idealy = other.patidealy;
		}
		puzSwitch = instance_create(x + 120, ((y + patidealy) - 220) + 40, obj_mice3_platSwitch);
		hole = instance_create(x + 0, y + 0, obj_holemouse_generator);
		staticTile[0] = instance_create(x + 40, y + 0, obj_holemouse_invis_counterclockwise);
		staticTile[1] = instance_create(x + 80, y + 0, obj_holemouse_invis_counterclockwise);
		staticTile[2] = instance_create(x + 0, y + 160, obj_holemouse_invis_clockwise);
		staticTile[3] = instance_create(x + 40, y + 160, obj_holemouse_invis_clockwise);
		staticTile[4] = instance_create(x + 80, y + 160, obj_holemouse_invis_clockwise);
	}
	if (pattern == 3)
	{
		tiletype[0] = obj_marker;
		tiletype[1] = obj_marker;
		tiletype[2] = obj_marker;
		tiletype[3] = obj_marker;
		tiletype[4] = obj_marker;
		tiletype[5] = obj_marker;
		tiletype[6] = obj_holemouse_block_counterclockwise;
		tiletype[7] = obj_holemouse_block_clockwise;
		rottype = 0;
		patidealy = 220 + (40 * choose(0, 2));
		if (instance_exists(obj_masterPlatformController))
		{
			with (obj_masterPlatformController.noelle)
				idealy = other.patidealy;
		}
		puzSwitch = instance_create(x + 120, ((y + patidealy) - 220) + 40, obj_mice3_platSwitch);
		hole = instance_create(x + 0, y + 0, obj_holemouse_generator);
		staticTile[0] = instance_create(x + 40, y + 0, obj_holemouse_invis_counterclockwise);
		staticTile[1] = instance_create(x + 80, y + 0, obj_holemouse_invis_counterclockwise);
		staticTile[2] = instance_create(x + 0, y + 160, obj_holemouse_invis_clockwise);
		staticTile[3] = instance_create(x + 40, y + 160, obj_holemouse_invis_clockwise);
		staticTile[4] = instance_create(x + 80, y + 160, obj_holemouse_invis_clockwise);
		staticTile[5] = instance_create(x + 40, y + 80, obj_holemouse_block_clockwise);
	}
	if (pattern == 4)
	{
		tiletype[0] = obj_marker;
		tiletype[1] = obj_marker;
		tiletype[2] = obj_marker;
		tiletype[3] = obj_marker;
		tiletype[4] = obj_marker;
		tiletype[5] = obj_holemouse_block_clockwise;
		tiletype[6] = obj_holemouse_block_clockwise;
		tiletype[7] = obj_marker;
		rottype = 0;
		patidealy = 260;
		if (instance_exists(obj_masterPlatformController))
		{
			with (obj_masterPlatformController.noelle)
				idealy = other.patidealy;
		}
		puzSwitch = instance_create(x + 120, ((y + patidealy) - 220) + 40, obj_mice3_platSwitch);
		hole = instance_create(x + 40, y + 0, obj_holemouse_generator);
		staticTile[0] = instance_create(x + 0, y + 0, obj_holemouse_invis_counterclockwise);
		staticTile[1] = instance_create(x + 80, y + 0, obj_holemouse_invis_counterclockwise);
		staticTile[2] = instance_create(x + 0, y + 160, obj_holemouse_invis_clockwise);
		staticTile[3] = instance_create(x + 40, y + 160, obj_holemouse_invis_clockwise);
		staticTile[4] = instance_create(x + 80, y + 160, obj_holemouse_invis_clockwise);
	}
	if (rottype == 0)
	{
		tilemax = 7;
		randomseed = floor(random(tilemax));
		for (i = 0; i <= tilemax; i++)
		{
			ishole[i] = 0;
			tile[i] = instance_create(x, y + 40, tiletype[i]);
			with (tile[i])
				scr_mouse_tile_rotation_init();
			randompos = i + randomseed;
			if (randompos > tilemax)
				randompos -= (tilemax + 1);
			tile[i].__currentposition = randompos;
		}
		tilemax++;
		tile[tilemax] = instance_create(x + 40, y, obj_marker);
		ishole[tilemax] = 1;
	}
	if (rottype == 1)
	{
		tilemax = 5;
		randomseed = floor(random(tilemax));
		for (i = 0; i <= tilemax; i++)
		{
			tile[i] = instance_create(x, y + 80, tiletype[i]);
			with (tile[i])
				scr_mouse_tile_rotation_init();
			randompos = i + randomseed;
			if (randompos > tilemax)
				randompos -= (tilemax + 1);
			tile[i].__currentposition = randompos;
			tile[i].__positionmax = 5;
			with (tile[i])
			{
				__positionx[0] = 0;
				__positiony[0] = 0;
				__positionx[1] = 40;
				__positiony[1] = 0;
				__positionx[2] = 80;
				__positiony[2] = 0;
				__positionx[3] = 80;
				__positiony[3] = 40;
				__positionx[4] = 40;
				__positiony[4] = 40;
				__positionx[5] = 0;
				__positiony[5] = 40;
			}
		}
		tilemax++;
		tile[tilemax] = instance_create(x + 40, y, obj_marker);
		ishole[tilemax] = 1;
	}
	with (obj_marker)
		visible = 0;
	visible = 1;
	init = 1;
}
for (i = 0; i <= tilemax; i++)
{
	if (ishole[i] == 0)
	{
		with (tile[i])
			scr_mouse_tile_rotation_step();
	}
}
if (phase == 0)
{
	if (freeze == 0)
	{
		timer++;
		if (x > rx || y > ry)
		{
			if (x > rx)
				x -= max(4, 20 - (timer / 2));
			else
				x = rx;
			if (y > (ry + 2))
				y = lerp(y, ry, 0.25);
			else
				y = ry;
		}
		else
		{
			timer = 0;
			phase = 1;
			x = rx;
			y = ry;
		}
	}
}
if (phase == 1)
{
}
if (phase == 2)
{
	if (x > lx)
	{
		x -= max(4, 10 - (timer / 2));
	}
	else
	{
		x = lx;
		phase = 3;
	}
}
if (phase == 3)
{
	if (freeze == 0)
		falltimer++;
	if (falltimer >= (fallthreshhold - 90))
		x = lx + random_range(-2, 2);
	if (falltimer >= fallthreshhold)
	{
		with (obj_masterPlatformController)
			failure = 1;
		phase = 3.5;
	}
}
if (keyboard_check_pressed(ord("F")))
	falltimer = fallthreshhold - 15;
if (phase == 3.5)
{
	failure = 1;
	hole.closed = true;
	if (i_ex(obj_holemouse))
		snd_play(snd_mouse);
	if (i_ex(obj_holemouse))
	{
		with (obj_holemouse)
		{
			jumper = scr_afterimage();
			with (jumper)
				scr_jump_to_point(x + random_range(-40, 40), room_height + (sprite_height * 2), 20, 16);
			jumper.sprite_index = spr_holemouse_emerge;
			instance_destroy();
		}
	}
	phase = 4;
}
if (phase == 4)
{
	gravity = 1.5;
	hole.closed = true;
	if (failure == 1)
	{
		x = lx + random_range(-2, 2);
		if (y >= 600)
		{
			obj_masterPlatformController.makenewplatform = 1;
			instance_destroy();
		}
	}
	else
	{
		hspeed = -8;
		phase = 5;
	}
}
if (phase == 5)
{
	if (y >= 600)
		instance_destroy();
}
if (hole.mousecreate == 1 || instance_exists(obj_holemouse) || phase < 3 || failure == 1 || (instance_exists(obj_mouseTowerTrigger) && obj_mouseTowerTrigger.blocked == 1))
	move = 0;
for (i = 0; i <= tilemax; i++)
{
	if (ishole[i] == 0)
	{
		if (i_ex(tile[i]))
			tile[i].__move = move;
		if (i_ex(tile[i]))
		{
			with (tile[i])
				scr_mouse_tile_rotation_step();
		}
		if (i_ex(tile[i]))
			tilecon = tile[i].__con;
	}
}
if (i_ex(tile[0]))
{
	if (tile[0].__con == 0)
		moving = false;
	else
		moving = true;
}
