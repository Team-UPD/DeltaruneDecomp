if (room == room_field_checkers1)
{
	if (timer >= 900)
	{
		instance_create(1202, 240, obj_ob_checkertile);
		instance_create(1242, 280, obj_ob_checkertile);
		instance_create(1282, 320, obj_ob_checkertile);
		instance_create(962, 240, obj_ob_checkertile);
		instance_create(1002, 280, obj_ob_checkertile);
		instance_create(1042, 320, obj_ob_checkertile);
		instance_create(722, 240, obj_ob_checkertile);
		instance_create(762, 280, obj_ob_checkertile);
		instance_create(802, 320, obj_ob_checkertile);
	}
	if (obj_mainchara.x >= 4000 && obj_mainchara.x <= 1620)
		obj_mainchara.battlemode = 1;
	else
		obj_mainchara.battlemode = 0;
	if (global.interact == 0)
		timer += 1;
	if (timer >= 40)
	{
		timer = 0;
		ch = con * 40;
		instance_create(1442 - ch, 240 + ch, obj_ob_checkertile);
		con += 1;
		if (con > 2)
			con = 0;
	}
}
if (whitetimer >= 20 && whitecon == 1)
{
	xdiff = obj_mainchara.x - 340;
	obj_mainchara.x = 340;
	if (instance_exists(global.cinstance[0]))
	{
		global.cinstance[0].x -= xdiff;
		for (i = 25; i >= 0; i -= 1)
			global.cinstance[0].remx[i] -= xdiff;
	}
	if (instance_exists(global.cinstance[1]))
	{
		global.cinstance[1].x -= xdiff;
		for (i = 25; i >= 0; i -= 1)
			global.cinstance[1].remx[i] -= xdiff;
	}
	whitecon = 2;
}
if (room == room_field_checkers4 || room == room_field_checkers6)
{
	if (obj_mainchara.x >= 4000 && obj_mainchara.x <= 1620)
		obj_mainchara.battlemode = 1;
	else
		obj_mainchara.battlemode = 0;
}
