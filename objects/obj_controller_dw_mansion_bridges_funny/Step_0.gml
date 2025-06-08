if (saved == true)
{
	with (swatchfriend)
	{
		scr_depth();
		if (con == 0)
		{
			global.interact = 1;
			image_speed = 0.25;
			if (x > 1376)
			{
				x -= 8;
			}
			else
			{
				x = 1376;
				con++;
			}
		}
		if (con == 1)
		{
			if (y < 140)
			{
				y += 8;
			}
			else
			{
				y = 140;
				con++;
			}
		}
		if (con == 2)
		{
			if (x > 1280)
			{
				x -= 8;
			}
			else
			{
				x = 1280;
				global.flag[376] = 1;
				con++;
			}
		}
		if (con == 3)
		{
			friendlySwatch = instance_create(x, y, obj_npc_room);
			friendlySwatch.sprite_index = sprite_index;
			friendlySwatch.image_index = image_index;
			friendlySwatch.image_speed = 0;
			friendlySwatch.image_xscale = image_xscale;
			friendlySwatch.image_yscale = image_yscale;
			global.interact = 0;
			instance_destroy();
		}
	}
}
if (vaseSpawned == 0 && spawnVaseTrig == 1)
{
	global.flag[376] = 2;
	global.interact = 1;
	vaseSpawned = 1;
	vase = instance_create(1078, -70, obj_queenvase);
	vase.image_index = 0;
	vase.image_xscale = 2;
	vase.image_yscale = 2;
	vase.con = 0;
	vase.newspeed = 4;
}
if (i_ex(vase))
{
	with (vase)
	{
		other.swatchLines = 1;
		if (con == 0)
		{
			newspeed *= 1.5;
			newspeed = clamp(newspeed, 0, 12);
			if (y <= 294)
				y += newspeed;
			if (y >= 294)
			{
				y = 294;
				con = 1;
				global.interact = 0;
			}
		}
	}
}
if (instance_exists(obj_marker))
{
	with (obj_marker)
	{
		if (sprite_index == spr_queenvase)
		{
			other.vaseCracked = 1;
			timer = 0;
		}
	}
}
if (vaseCracked == 1 && instance_exists(obj_npc_room))
{
	if (vaseCrackedCon == -1)
	{
		enemySwatch = instance_create(obj_npc_room.x, obj_npc_room.y + 18, obj_chaseenemy);
		enemySwatch.image_xscale = obj_npc_room.image_xscale;
		enemySwatch.image_yscale = obj_npc_room.image_yscale;
		enemySwatch.sprite_index = spr_npc_swatchling_sweep_walk;
		enemySwatch.image_speed = 0.25;
		with (enemySwatch)
		{
			myencounter = 64;
			radius = 100000;
			ignoresolid = 1;
			alertcon = 0;
			chasetype = 4;
		}
		with (obj_npc_room)
			instance_destroy();
		vaseCrackedCon++;
	}
}
if (vaseCrackedCon == 0)
{
	if (enemySwatch.x <= (obj_mainchara.x + obj_mainchara.sprite_width + 8))
	{
		global.interact = 1;
		enemySwatch.x = obj_mainchara.x + obj_mainchara.sprite_width + 8;
		image_index = 0;
		timer = 0;
		vaseCrackedCon++;
	}
	else if (instance_exists(obj_caterpillarchara) && enemySwatch.x <= (obj_caterpillarchara.x + obj_caterpillarchara.sprite_width + 8))
	{
		global.interact = 1;
		enemySwatch.x = obj_caterpillarchara.x + obj_caterpillarchara.sprite_width + 8;
		image_index = 0;
		timer = 0;
		vaseCrackedCon++;
	}
}
if (vaseCrackedCon == 1)
{
	enemySwatch.image_speed = 0;
	friendlySwatch = instance_create(enemySwatch.x, 208, obj_marker);
	friendlySwatch.sprite_index = spr_npc_swatchling_sweep;
	friendlySwatch.image_xscale = enemySwatch.image_xscale;
	friendlySwatch.image_index = 0;
	friendlySwatch.image_yscale = enemySwatch.image_yscale;
	friendlySwatch.image_speed = 0;
	with (friendlySwatch)
		scr_depth();
	with (enemySwatch)
		instance_destroy();
	timer = 0;
	vaseCrackedCon++;
}
if (vaseCrackedCon == 2)
{
	timer++;
	if (timer == 15)
	{
		global.facing = 1;
		if (instance_exists(obj_caterpillarchara))
		{
			with (obj_caterpillarchara)
			{
				fun = 1;
				_remsprite = sprite_index;
				sprite_index = rsprite;
				image_index = 0;
			}
		}
	}
	if (timer == 30)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* .../", "obj_controller_dw_mansion_bridges_funny_slash_Step_0_gml_180_0");
		msgnextloc("* I suppose we'll just have to let it go this once./%", "obj_controller_dw_mansion_bridges_funny_slash_Step_0_gml_181_0");
		d = d_make();
		vaseCrackedCon++;
	}
}
if (vaseCrackedCon == 3)
{
	if (!i_ex(d))
		vaseCrackedCon++;
}
if (vaseCrackedCon == 4)
{
	friendlySwatch.sprite_index = spr_npc_butler;
	friendlySwatch.y = 188;
	friendlySwatch.image_speed = 0.25;
	friendlySwatch.x -= 8;
	with (friendlySwatch)
		scr_depth();
	if (instance_exists(obj_caterpillarchara))
	{
		with (obj_caterpillarchara)
		{
			if ((other.friendlySwatch.x + (other.friendlySwatch.sprite_width / 2)) < x)
				fun = 1;
			_remsprite = sprite_index;
			sprite_index = lsprite;
			image_index = 0;
		}
	}
	if (friendlySwatch.x < obj_mainchara.x)
		global.facing = 3;
	if (friendlySwatch.x < (camerax() - friendlySwatch.sprite_width))
	{
		with (friendlySwatch)
			instance_destroy();
		global.interact = 0;
		if (instance_exists(obj_caterpillarchara))
		{
			with (obj_caterpillarchara)
			{
				fun = 0;
				image_index = 0;
			}
		}
		vaseCrackedCon++;
	}
}
