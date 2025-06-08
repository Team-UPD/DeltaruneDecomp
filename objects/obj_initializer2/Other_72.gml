if (ds_map_find_value(async_load, "id") == global.savedata_async_id)
{
	global.savedata_async_id = -1;
	if (global.savedata_async_load)
	{
		global.savedata_async_load = false;
		if (ds_map_find_value(async_load, "status") == false)
		{
			if (!old_savedata_check)
			{
				old_savedata_check = true;
				ossafe_savedata_load_old_check();
				exit;
			}
			else
			{
				global.savedata_error = true;
				global.savedata_debuginfo = "load failed: " + string(ds_map_find_value(async_load, "status"));
				global.savedata = ds_map_create();
			}
		}
		else
		{
			global.savedata_error = false;
			global.savedata_debuginfo = "load succeeded";
			var json = buffer_read(global.savedata_buffer, buffer_string);
			global.savedata = json_decode(json);
		}
		buffer_delete(global.savedata_buffer);
		global.savedata_buffer = undefined;
		scr_84_init_localization();
		scr_84_load_ini();
		scr_gamestart();
		pal_swap_init_system(1);
		global.game_won = scr_completed_chapter_any_slot(global.chapter);
		global.damagefont = font_add_sprite_ext(spr_numbersfontbig, "0123456789", 20, 0);
		global.damagefontgold = font_add_sprite_ext(spr_numbersfontbig_gold, "0123456789+-%", 20, 0);
		global.hpfont = font_add_sprite_ext(spr_numbersfontsmall, "0123456789-+", 0, 2);
		for (i = 0; i < 100; i += 1)
			global.tempflag[i] = 0;
		global.heartx = 300;
		global.hearty = 220;
		scr_load_audio();
		if (!instance_exists(obj_time))
			instance_create(0, 0, obj_time);
		global.screen_border_id = stringsetloc("Dynamic", "obj_initializer2_slash_Create_0_gml_22_0");
	}
}
