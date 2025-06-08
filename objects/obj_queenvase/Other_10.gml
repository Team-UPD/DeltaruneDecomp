if (instance_exists(obj_controller_dw_mansion_east_1f_a))
	obj_controller_dw_mansion_east_1f_a.triggered = 1;
image_index = 1;
snd_play(choose(snd_break1, snd_break2));
brokenpot = scr_dark_marker(x, y, sprite_index);
brokenpot.image_index = 1;
brokenpot.depth = 800000;
if (room == room_dw_mansion_potBalance)
	alarm[0] = 1;
instance_destroy();
