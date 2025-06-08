saved = false;
swatchfriend = 0;
swatchLines = 0;
spawnVaseTrig = 0;
vaseSpawned = 0;
vase = 0;
vaseCracked = 0;
vaseCrackedCon = -1;
friendlySwatch = 0;
enemySwatch = 0;
timer = 0;
visible = true;
x = -100;
y = -100;
if (global.flag[376] == 0)
{
	swatchfriend = instance_create(1500, 0, obj_marker);
	swatchfriend.sprite_index = spr_npc_butler;
	scr_darksize(swatchfriend);
	swatchfriend.image_speed = 0;
	swatchfriend.con = 0;
}
if (global.flag[376] == 1)
{
	friendlySwatch = instance_create(1280, 140, obj_npc_room);
	friendlySwatch.sprite_index = spr_npc_butler;
	friendlySwatch.image_speed = 0;
	scr_darksize(friendlySwatch);
	with (obj_bridgeSwapper)
	{
		if (x > 1550)
			alarm[0] = 1;
	}
}
