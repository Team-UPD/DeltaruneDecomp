event_inherited();
if (shovel_start)
{
	shovel_timer--;
	if (shovel_timer <= 0)
	{
		shovel_timer = shovel_time;
		if (global.flag[335] == 0)
		{
			global.flag[335] = 1;
			global.interact = 0;
		}
		var shovel = instance_create(x + sprite_get_width(sprite_index) + random_range(-20, 20), y + sprite_get_height(sprite_index), obj_mansion_shovelpile_particle);
		shovel.depth = 95000;
	}
}
