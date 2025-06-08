tcon = 0;
image_speed = 0.05;
scr_depth();
if (room == room_flowershop_1f)
{
	counter = scr_marker(20, 103, spr_flowershop_counter);
	with (counter)
		scr_depth();
	flowera = scr_marker(177, 136, spr_flowershop_flowers);
	flowerb = scr_marker(177, 82, spr_flowershop_flowers);
	with (flowera)
		scr_depth();
	with (flowerb)
		scr_depth();
	con = 1;
	instance_create(x, y + sprite_height, obj_npc_facing);
}
if (room == room_flowershop_1f)
{
	if (global.entrance == 2)
	{
		global.interact = 0;
		global.entrance = 0;
		with (obj_mainchara)
			x = global.flag[264];
	}
}
if (room == room_flowershop_2f)
{
	visible = 0;
	if (global.entrance == 1)
	{
		global.entrance = 0;
		global.interact = 0;
		with (obj_mainchara)
			x = global.flag[264];
		if (obj_mainchara.x < 160)
			x = 255;
		if (obj_mainchara.x > 160)
			x = 15;
		instance_create(x, y + sprite_height, obj_npc_facing);
		con = -1;
	}
}
if (global.chapter == 1)
{
	instance_create(x, y + sprite_height, obj_npc_facing);
}
else if (global.chapter == 2)
{
	if (room == room_flowershop_1f)
		instance_destroy();
}
else
{
	instance_destroy();
}
