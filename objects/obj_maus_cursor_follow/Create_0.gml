scr_bullet_init();
followindex = 0;
if (instance_exists(obj_mauswheel_enemy))
	followindexmax = 25;
else
	followindexmax = 33;
for (i = 0; i < (followindexmax + 1); i++)
{
	heartposx[i] = obj_heart.x;
	heartposy[i] = obj_heart.y;
}
damage = 6;
timer = 0;
destroyonhit = 0;
trail = ds_queue_create();
maxx = obj_growtangle.x + (obj_growtangle.sprite_width / 1.3);
maxy = obj_growtangle.y + (obj_growtangle.sprite_height / 1.3);
depth -= 3;
textflash = 0;
if (instance_exists(obj_mauswheel_enemy))
{
	damage = global.monsterat[obj_mauswheel_enemy.myself] * 5;
	grazepoints = 3;
}
