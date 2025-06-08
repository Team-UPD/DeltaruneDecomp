if (init == 0)
{
	tiletype[0] = obj_marker;
	tiletype[1] = obj_marker;
	tiletype[2] = obj_holemouse_block_counterclockwise;
	tiletype[3] = obj_marker;
	tiletype[4] = obj_marker;
	tiletype[5] = obj_holemouse_block_clockwise;
	tiletype[6] = obj_marker;
	tiletype[7] = obj_marker;
	rottype = 0;
	hole = instance_create(x + 40, y + 0, obj_marker);
	tilemax = 7;
	randomseed = floor(random(tilemax));
	for (i = 0; i <= tilemax; i++)
	{
		tile[i] = instance_create(x, y, tiletype[i]);
		with (tile[i])
			scr_mouse_tile_rotation_init();
		randompos = i + randomseed;
		if (randompos > tilemax)
			randompos -= (tilemax + 1);
		tile[i].__currentposition = randompos;
		tile[i].__positionmax = 7;
		with (tile[i])
		{
			__positionx[0] = 0;
			__positiony[0] = 0;
			__positionx[1] = 40;
			__positiony[1] = 0;
			__positionx[2] = 40;
			__positiony[2] = 40;
			__positionx[3] = 40;
			__positiony[3] = 80;
			__positionx[4] = 40;
			__positiony[4] = 120;
			__positionx[5] = 0;
			__positiony[5] = 120;
			__positionx[6] = 0;
			__positiony[6] = 80;
			__positionx[7] = 0;
			__positiony[7] = 40;
		}
	}
	tilemax++;
	tile[tilemax] = instance_create(x + 40, y, obj_marker);
	ishole[tilemax] = 1;
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
	phase = 1;
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
	if (instance_exists(obj_noelle_scared))
	{
		if (obj_noelle_scared.waiting == true)
			falltimer++;
	}
}
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
