if (instance_exists(obj_maus_split))
	exit;
if (state == 3)
	scr_enemy_drawhurt_generic();
scr_enemy_drawidle_generic(image_speed);
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
