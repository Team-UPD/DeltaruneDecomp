myinteract = 0;
talked = 0;
checked = 0;
global.flag[32] = 0;
image_xscale = 2;
image_yscale = 2;
con = 0;
image_speed = 0;
teleportmode = 0;
door_destination = room;
door_location = room;
on = 1;
weirdlight = scr_dark_marker(x + 6, y + 96, spr_weirdlight);
with (weirdlight)
{
	depth = 895000;
	image_speed = 0.125;
}
if (global.plot < 60)
	on = 0;
if (room == room_forest_fightsusie)
{
	if (global.plot < 154)
		on = 0;
}
if (on == 0)
{
	sprite_index = spr_shortcut_door_off;
	with (weirdlight)
		instance_destroy();
}
