maker = 0;
depth = -10;
biggestwidth = 1;
biggestheight = 1;
trappingX = false;
for (i = 0; i < 3; i++)
{
	cancatch[i] = 0;
	ismaus[i] = 0;
	caught[i] = 0;
}
init = 0;
visible = 0;
if (instance_exists(obj_mauswheel_enemy))
{
	instance_create(obj_mauswheel_enemy.x, obj_mauswheel_enemy.y, obj_maus_trapping_fake_idle);
	obj_mauswheel_enemy.idlesprite = spr_maus_idle;
	obj_mauswheel_enemy.x += 60;
	obj_mauswheel_enemy.y += 66;
}
