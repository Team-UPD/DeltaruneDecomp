function scr_draw_circle_width_radius(arg0, arg1, arg2, arg3, arg4)
{
	var xx = arg0;
	var yy = arg1;
	var radius = arg2;
	var inner_radius = max(arg3, 0);
	var steps = arg4;
	draw_primitive_begin(pr_trianglelist);
	for (i = 0; i < steps; i += 1)
	{
		draw_vertex(xx + lengthdir_x(inner_radius, (360 * i) / steps), yy + lengthdir_y(inner_radius, (360 * i) / steps));
		draw_vertex(xx + lengthdir_x(radius, (360 * i) / steps), yy + lengthdir_y(radius, (360 * i) / steps));
		draw_vertex(xx + lengthdir_x(radius, (360 * (i + 1)) / steps), yy + lengthdir_y(radius, (360 * (i + 1)) / steps));
		draw_vertex(xx + lengthdir_x(radius, (360 * (i + 1)) / steps), yy + lengthdir_y(radius, (360 * (i + 1)) / steps));
		draw_vertex(xx + lengthdir_x(inner_radius, (360 * (i + 1)) / steps), yy + lengthdir_y(inner_radius, (360 * (i + 1)) / steps));
		draw_vertex(xx + lengthdir_x(inner_radius, (360 * i) / steps), yy + lengthdir_y(inner_radius, (360 * i) / steps));
	}
	draw_primitive_end();
}
