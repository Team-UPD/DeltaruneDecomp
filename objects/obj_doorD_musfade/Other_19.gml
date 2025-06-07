global.interact = 3;
instance_create(0, 0, obj_fadeout);
mus_volume(global.currentsong[1], 0, 14);
if (touched == 0)
{
	alarm[3] = 14;
	alarm[2] = 15;
	touched = 1;
}
