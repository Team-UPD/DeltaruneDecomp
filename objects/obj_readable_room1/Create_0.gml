myinteract = 0;
image_speed = 0;
read = 0;
tempvar = 0;
extflag = 0;
mydialoguer = -1;
skip = 0;
selfdestruct = false;
if (global.chapter == 2)
{
	if (room == room_schooldoor && x >= 270 && x <= 470)
	{
		dwt = instance_create(x, y, obj_dw_transition_interactable);
		dwt.image_xscale = image_xscale;
		dwt.image_yscale = image_yscale;
		instance_destroy();
	}
	if (room == room_dw_city_spamton_shop_exterior)
	{
		if (global.flag[386] >= 1)
		{
			var spamdoor = instance_create(275, 200, obj_doorw_musfade);
			spamdoor.image_xscale = 4.5;
			spamdoor.image_yscale = 4.5;
			instance_destroy();
		}
		else
		{
			var spamcollider = instance_create(241, 257, obj_soliddark);
			spamcollider.image_xscale = 4;
		}
	}
	if (room == room_dw_cyber_keyboard_puzzle_1)
	{
		if (global.plot < 70)
			instance_destroy();
	}
	if (room == room_dw_mansion_east_1f_a)
	{
		sprite_index = spr_basement_plaque;
		visible = true;
		scr_depth();
	}
	if (room == room_dw_mansion_lightner_hallway)
	{
		if (x < 220 && x > 230 && global.flag[335] == 1)
			instance_destroy();
	}
	if (room == room_dw_mansion_east_2f_transformed_new)
		visible = false;
	if (room == room_dw_mansion_east_1f_e)
	{
		if (global.flag[339] == 1 && y < 170)
			instance_destroy();
	}
	if (room == room_dw_mansion_darkbulb_1 || room == room_dw_mansion_darkbulb_2 || room == room_dw_mansion_darkbulb_3)
	{
		var plaque = scr_dark_marker(115, 110, spr_mansion_plaque_small);
		with (plaque)
			scr_depth();
	}
}
