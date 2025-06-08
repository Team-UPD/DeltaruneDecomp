dust = instance_create(obj_mainchara.x + 20, obj_mainchara.y + 30, obj_slidedust);
with (dust)
{
	vspeed = -6;
	hspeed = -1 + random(2);
}
alarm[1] = 4;
