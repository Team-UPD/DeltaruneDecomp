if (global.flag[335] == 0)
{
	global.interact = 1;
	shovel_start = true;
	var pile = scr_dark_marker(x - 10, y + 85, spr_dw_mansion_room_kris_shovels);
	pile.depth = depth - 10;
	var pile_dark = scr_dark_marker(x, y, spr_dw_mansion_door_open_shovel);
	pile_dark.depth = depth - 5;
	var pile_collider = instance_create(pile.x, pile.y + 10, obj_soliddark);
	pile_collider.image_xscale = 3;
	sprite_index = spr_dw_mansion_door_open;
	image_xscale = 2;
	image_yscale = 2;
	snd_play(snd_impact);
	instance_create(0, 0, obj_shake);
	if (i_ex(obj_mainchara))
	{
		with (obj_mainchara)
			y += 20;
	}
}
else
{
	event_inherited();
}
