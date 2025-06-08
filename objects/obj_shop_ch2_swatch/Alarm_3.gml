if (global.flag[7] == 0)
	snd_free_all();
global.facing = 0;
instance_create(0, 0, obj_persistentfadein);
room_goto(room_dw_mansion_entrance);
