if (scr_queen_buffercheck())
	exit;
nextx = x + lengthdir_x(fauxspeed, direction);
nexty = y + lengthdir_y(fauxspeed, direction);
if (init == 0)
{
	init = 1;
	hitbox[0].damage = damage;
	hitbox[1].damage = damage;
}
var newx = 0;
var newy = 0;
traillength = 100;
if (bouncecount < bouncecap)
{
	if (nextx <= minx && abs(angle_difference(0, direction)) > 90)
	{
		newx = minx;
		if (direction == 180)
		{
			newy = y;
			direction = point_direction(0, 0, choose(1, 2), choose(-2, -1, 1, 2));
			nexty = y + lengthdir_y(minx - nextx, direction);
			nextx = minx + lengthdir_x(minx - nextx, direction);
		}
		else
		{
			direction = scr_reflect(direction, 0);
			newy = scr_remapvalue(x, nextx, minx, y, nexty);
			nextx = minx + (minx - nextx);
		}
		bouncecount++;
	}
	else if (nextx >= maxx && abs(angle_difference(180, direction)) > 90)
	{
		newx = maxx;
		if (direction == 0)
		{
			newy = y;
			direction = point_direction(0, 0, choose(-1, -2), choose(-2, -1, 1, 2));
			nexty = y - lengthdir_y(maxx - nextx, direction);
			nextx = maxx - lengthdir_x(maxx - nextx, direction);
		}
		else
		{
			newy = scr_remapvalue(x, nextx, maxx, y, nexty);
			direction = scr_reflect(direction, 180);
			nextx = maxx + (maxx - nextx);
		}
		bouncecount++;
	}
	if (nexty <= miny)
	{
		newy = miny;
		newx = scr_remapvalue(y, nexty, miny, x, nextx);
		direction = scr_reflect(direction, 270);
		nexty = miny + (miny - nexty);
		bouncecount++;
	}
	else if (nexty >= maxy)
	{
		newy = maxy;
		newx = scr_remapvalue(y, nexty, maxy, x, nextx);
		direction = scr_reflect(direction, 90);
		nexty = maxy + (maxy - nexty);
		bouncecount++;
	}
}
x = nextx;
y = nexty;
if (newx != 0 || newy != 0)
{
	bouncepoint_x[2] = bouncepoint_x[1];
	bouncepoint_y[2] = bouncepoint_y[1];
	bouncepoint_x[1] = bouncepoint_x[0];
	bouncepoint_y[1] = bouncepoint_y[0];
	bouncepoint_x[0] = newx;
	bouncepoint_y[0] = newy;
}
image_angle = point_direction(x, y, bouncepoint_x[0], bouncepoint_y[0]);
if (bouncepoint_x[2] < (__view_get(e__VW.XView, 0) - 80))
	instance_destroy();
if (bouncepoint_x[2] > (__view_get(e__VW.XView, 0) + 760))
	instance_destroy();
if (bouncepoint_y[2] < (__view_get(e__VW.YView, 0) - 80))
	instance_destroy();
if (bouncepoint_y[2] > (__view_get(e__VW.YView, 0) + 580))
	instance_destroy();
