enemyCount = 0;
screenChangeTrigger = 0;
if (global.flag[367] == 0)
{
	dumbscreen = instance_create(440, 140, obj_queenscreen);
	dumbscreen.image_index = 3;
	dumbscreen.tasquecon = 999;
}
if (global.flag[367] == 1)
{
	dumbscreen = instance_create(440, 140, obj_queenscreen);
	dumbscreen.sprite_index = spr_tasqueStuckinWindow;
	dumbscreen.image_speed = 0.25;
	dumbscreen.tasquecon = 999;
	dumbscreen.extspawnflag = 999;
	dumbread = instance_create(440, 140, obj_readable_room1);
	screenChangeTrigger = 2;
}
tasquescreen1 = instance_create(440, 340, obj_queenscreen);
tasquescreen1.extspawnflag = 1;
tasquescreen1.image_index = 9;
tasquescreen2 = instance_create(680, 540, obj_queenscreen);
tasquescreen2.extspawnflag = 2;
tasquescreen2.image_index = 9;
if (global.flag[539] != 0)
{
	tasquescreen1.image_index = 11;
	tasquescreen2.image_index = 11;
	if (global.flag[539] == 2 || global.flag[539] == 3)
	{
		enem1 = instance_create(564, 386, obj_chaseenemy);
		enem1.pacetype = 21;
		enem2 = instance_create(564, 586, obj_chaseenemy);
		enem2.pacetype = 22;
		with (obj_chaseenemy)
		{
			touchflag = 539;
			eraser = 1;
		}
	}
}
