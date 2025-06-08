if (image_xscale < 1)
	image_xscale += 0.1;
if (image_yscale < 1)
	image_yscale += 0.1;
if (path_position >= 0.5 && path_position < 0.84)
{
	depth = o_boxingcontroller.depth + 1;
	image_blend = c_gray;
}
else
{
	depth = o_boxingcontroller.depth - 1;
	image_blend = c_white;
}
if (x != (o_boxingcontroller.x + 38) && y != (o_boxingcontroller.y - 96))
{
	var path_pos = path_position;
	path_end();
	x = o_boxingcontroller.x + 38;
	y = o_boxingcontroller.y - 96;
	path = path_add();
	path_set_kind(path, 1);
	path_set_closed(path, true);
	path_add_point(path, 368, 160, 100);
	path_add_point(path, 304, 184, 100);
	path_add_point(path, 272, 184, 100);
	path_add_point(path, 208, 160, 100);
	path_add_point(path, 272, 136, 100);
	path_add_point(path, 304, 136, 100);
	path_start(path, 4, path_action_continue, false);
	path_position = path_pos;
}
