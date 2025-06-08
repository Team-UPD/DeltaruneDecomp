var travellength = traillength;
draw_set_color(!scr_queen_buffercheck ? c_gray : c_white);
var checkx = x;
var checky = y;
draw_circle(x, y, 4, 0);
for (i = 0; i < 3; i++)
{
	hitbox[i].image_angle = point_direction(checkx, checky, bouncepoint_x[i], bouncepoint_y[i]);
	if (i > 0)
	{
		hitbox[i].x = checkx;
		hitbox[i].y = checky;
	}
	if (i > 0 && checkx == bouncepoint_x[i] && checky == bouncepoint_y[i])
	{
		while (i < 3)
		{
			hitbox[i].image_xscale = 0;
			hitbox[i].x = 0;
			hitbox[i].y = 0;
			i++;
		}
		break;
	}
	var lengthcheck = point_distance(checkx, checky, bouncepoint_x[i], bouncepoint_y[i]);
	if (lengthcheck <= travellength)
	{
		hitbox[i].image_xscale = lengthcheck / 10;
		draw_line_width(checkx, checky, bouncepoint_x[i], bouncepoint_y[i], 8);
		travellength -= lengthcheck;
		checkx = bouncepoint_x[i];
		checky = bouncepoint_y[i];
		draw_circle(checkx, checky, 4, 0);
	}
	else
	{
		hitbox[i].image_xscale = travellength / 10;
		var traveldir = point_direction(checkx, checky, bouncepoint_x[i], bouncepoint_y[i]);
		var tailx = checkx + lengthdir_x(travellength, traveldir);
		var taily = checky + lengthdir_y(travellength, traveldir);
		draw_line_width(checkx, checky, tailx, taily, 8);
		draw_circle(tailx, taily, 4, 0);
		i++;
		while (i < 3)
		{
			hitbox[i].image_xscale = 0;
			hitbox[i].x = 0;
			hitbox[i].y = 0;
			i++;
		}
		break;
	}
}
