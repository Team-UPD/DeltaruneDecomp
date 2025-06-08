if (global.flag[7] == 0)
	snd_free_all();
global.facing = 0;
instance_create(0, 0, obj_persistentfadein);
returnroom = (global.chapter >= 2) ? room_dw_castle_area_2_transformed : room_field_shop1;
room_goto(returnroom);
