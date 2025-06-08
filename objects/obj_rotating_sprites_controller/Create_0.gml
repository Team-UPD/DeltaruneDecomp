x = o_boxingcontroller.x + 38;
y = o_boxingcontroller.y - 96;
f = 2;
timer = 0;
state = 0;
rotating_sprite_piece1 = instance_create(x, y, obj_rotating_sprite);
rotating_sprite_piece2 = instance_create(x, y, obj_rotating_sprite);
rotating_sprite_piece3 = instance_create(x, y, obj_rotating_sprite);
rotating_sprite_piece4 = instance_create(x, y, obj_rotating_sprite);
rotating_sprite_piece5 = instance_create(x, y, obj_rotating_sprite);
rotating_sprite_piece6 = instance_create(x, y, obj_rotating_sprite);
with (rotating_sprite_piece1)
{
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
	path_position = 0;
}
with (rotating_sprite_piece2)
{
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
	path_position = 0.1666;
}
with (rotating_sprite_piece3)
{
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
	path_position = 0.3333;
}
with (rotating_sprite_piece4)
{
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
	path_position = 0.5;
}
with (rotating_sprite_piece5)
{
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
	path_position = 0.66666;
}
with (rotating_sprite_piece6)
{
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
	path_position = 0.8333;
}
