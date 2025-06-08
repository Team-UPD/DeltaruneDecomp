dust = instance_create_depth(obj_mainchara.x + 20, obj_mainchara.y + 30, depth, obj_slidedust);
with (dust)
{
	vspeed = -6;
	hspeed = -1 + random(2);
}
alarm[1] = 4;
