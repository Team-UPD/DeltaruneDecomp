function scr_draw_circle_width_qb(arg0, arg1, arg2, arg3, arg4)
{
	var xx = arg0;
	var yy = arg1;
	var radius = arg2;
	var width = arg3;
	var steps = arg4;
	var h = width / 2;
	draw_primitive_begin(pr_trianglelist);
	for (i = 0; i < steps; i += 1)
	{
		draw_vertex(xx + lengthdir_x(radius - h, (360 * i) / steps), yy + lengthdir_y(radius - h, (360 * i) / steps));
		draw_vertex(xx + lengthdir_x(radius + h, (360 * i) / steps), yy + lengthdir_y(radius + h, (360 * i) / steps));
		draw_vertex(xx + lengthdir_x(radius + h, (360 * (i + 1)) / steps), yy + lengthdir_y(radius + h, (360 * (i + 1)) / steps));
		draw_vertex(xx + lengthdir_x(radius + h, (360 * (i + 1)) / steps), yy + lengthdir_y(radius + h, (360 * (i + 1)) / steps));
		draw_vertex(xx + lengthdir_x(radius - h, (360 * (i + 1)) / steps), yy + lengthdir_y(radius - h, (360 * (i + 1)) / steps));
		draw_vertex(xx + lengthdir_x(radius - h, (360 * i) / steps), yy + lengthdir_y(radius - h, (360 * i) / steps));
	}
	draw_primitive_end();
}
