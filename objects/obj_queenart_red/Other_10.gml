if (flippable == true)
	flip = true;
if (isswitch == true)
{
	if (room == room_dw_mansion_east_2f_transformed_new)
	{
		if (extflag == "a")
		{
			if (global.flag[395] == 0)
			{
				global.flag[395] = 1;
				snd_play(snd_impact);
				instance_create(x, y, obj_shake);
				if (shine != -4)
					instance_destroy(shine);
			}
			isswitch = false;
		}
		if (extflag == "b")
		{
			if (global.flag[396] == 0)
			{
				global.flag[396] = 1;
				snd_play(snd_impact);
				instance_create(x, y, obj_shake);
				if (shine != -4)
					instance_destroy(shine);
			}
			isswitch = false;
		}
	}
	if (room == room_dw_mansion_fire_paintings)
	{
		if (extflag == "treasureswitch" && global.flag[398] == 0)
		{
			snd_play(snd_impact);
			with (obj_queenart_mona)
			{
				if (extflag == "treasure")
				{
					treasure = instance_create(x + (sprite_width / 2), y, obj_queenart_red);
					treasure.flippable = false;
					treasure.extflag = "treasure";
					treasure.isswitch = true;
					treasure.sprite_index = spr_queenart_mona_middlepoint;
					treasure.spriteindex2 = spr_queenart_treasure_middlepoint;
					treasure.flip = true;
					instance_destroy();
				}
			}
			with (obj_overworld_bulletarea)
			{
				if (extflag == "bottom")
					instance_destroy();
			}
			if (shine != -4)
				instance_destroy(shine);
			skip = true;
			isswitch = false;
			extflag = 0;
			global.flag[398] = 1;
			dontshine = 1;
		}
		if (extflag == "treasure")
		{
			if (global.flag[138] == 0)
			{
				snd_play(snd_impact);
				itemflag = 138;
				var itemget = scr_itemget_anytype_text(2, "item");
				scr_speaker("no_name");
				msgsetloc(0, "* (You found a ReviveMint!)/", "obj_queenart_red_slash_Other_10_gml_91_0");
				msgnext(itemget);
				if (noroom == 0)
				{
					global.flag[itemflag] = 1;
					with (obj_event_manager)
						trigger_event((0 << 0), (23 << 0), (939 << 0));
				}
				if (shine != -4)
					instance_destroy(shine);
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (There's nothing here.)/%", "obj_queenart_red_slash_Other_10_gml_107_0");
			}
			mydialoguer = instance_create(0, 0, obj_dialoguer);
		}
		if (extflag == "fireswitch" && global.flag[399] == 0)
		{
			global.flag[399] = 1;
			dontshine = 1;
			isswitch = false;
			decor = false;
			con = 0;
			flipcon = 0;
			flip = true;
			instance_create(x, y, obj_shake);
			with (shine)
				instance_destroy();
			with (obj_queenart_mona)
			{
				if (extflag == "exitblocker")
				{
					decor = instance_create(x, y, obj_queenart_red);
					decor.decorative = true;
					decor.sprite_index = spr_queenart_red;
					decor.spriteindex2 = spr_queenart_red;
					decor.extflag = "decor";
					decor.depth = 998000;
					snd_play(snd_impact);
					instance_destroy();
				}
			}
			with (obj_overworld_bulletarea)
			{
				if (extflag == "blocker")
					instance_destroy();
			}
		}
	}
}
myinteract = 3;
global.interact = 1;
if (skip != 0)
	global.interact = 0;
