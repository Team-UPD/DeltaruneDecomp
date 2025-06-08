con = -1;
customcon = 0;
if (global.chapter != 2)
{
	instance_destroy();
}
else
{
	with (obj_doorB)
		instance_destroy();
	if (global.flag[343] == 0)
	{
		if (global.plot < 140)
		{
			scr_losechar();
			safe_delete(obj_caterpillarchara);
			scr_getchar(3);
			obj_mainchara.x = -100;
			var ra_x = (global.plot < 140) ? (obj_mainchara.x - 40) : obj_mainchara.x;
			var ra_y = (global.plot < 140) ? obj_mainchara.y : (obj_mainchara.y - 40);
			scr_makecaterpillar(ra_x, ra_y, 3, 0);
			with (obj_caterpillarchara)
				scr_caterpillar_interpolate();
		}
		var swanboat_x = (global.plot < 140) ? -200 : 140;
		swanboat = instance_create(swanboat_x, 240, obj_queencar);
		with (swanboat)
			scr_depth();
		swanboat.con = global.plot < 140;
		swanboat.pause_y_move = true;
		swanboat.pause_auto_talk = true;
		queenhand = instance_create(285, 185, obj_npc_sign);
		queenhand.sprite_index = spr_dw_mansion_hand;
		queenhand.image_xscale = 2;
		queenhand.image_yscale = 2;
		queenhand.setdepth = 0;
		queenhand.depth = swanboat.depth + 100;
		remove_collider = false;
		if (global.plot >= 140)
		{
			bottom_collider = instance_create(200, 320, obj_soliddark);
			bottom_collider.visible = 0;
			bottom_collider.image_xscale = 6;
			var swan_interact = instance_create(swanboat.x + 50, swanboat.y + 80, obj_npc_sign);
			swan_interact.visible = 0;
			swan_interact.image_xscale = 4;
		}
	}
	if (global.flag[343] == 1)
	{
		swanboat = instance_create(235, 240, obj_queencar);
		with (swanboat)
			scr_depth();
		swanboat.pause_y_move = true;
		swanboat.pause_auto_talk = true;
		var swan_interact = instance_create(swanboat.x + 20, 320, obj_npc_sign);
		swan_interact.visible = 0;
		swan_interact.image_xscale = 6;
		remove_collider = false;
		left_collider = instance_create(200, 320, obj_soliddark);
		left_collider.visible = 0;
		left_collider.image_xscale = 2;
		right_collider = instance_create(360, 320, obj_soliddark);
		right_collider.visible = 0;
		right_collider.image_xscale = 2;
	}
}
