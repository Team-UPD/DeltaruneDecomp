if (instance_exists(obj_mainchara))
{
	if (obj_mainchara.y <= 374 && werespawn == 0)
	{
		werespawn = 1;
		werewire1 = instance_create(520, 200, obj_chaseenemy);
		with (werewire1)
		{
			myencounter = 74;
			sprite_index = spr_werewire_hang_overworld;
			touchsprite = spr_werewire_hang_overworld;
			radius = 1;
			pacetype = 13;
			chasetype = -1;
			alertskip = 1;
			offscreen_frozen = 0;
			increment = 2;
			amplitude = 160;
			t = 270;
			t = (t + increment) % 360;
			shift = amplitude * dsin(t);
			y = yy + shift;
		}
		werewire2 = instance_create(720, 200, obj_chaseenemy);
		with (werewire2)
		{
			myencounter = 74;
			sprite_index = spr_werewire_hang_overworld;
			touchsprite = spr_werewire_hang_overworld;
			radius = 1;
			pacetype = 13;
			chasetype = -1;
			alertskip = 1;
			offscreen_frozen = 0;
			increment = 2;
			amplitude = 160;
			t = 290;
			t = (t + increment) % 360;
			shift = amplitude * dsin(t);
			y = yy + shift;
		}
		werewire3 = instance_create(920, 200, obj_chaseenemy);
		with (werewire3)
		{
			myencounter = 74;
			sprite_index = spr_werewire_hang_overworld;
			touchsprite = spr_werewire_hang_overworld;
			radius = 1;
			pacetype = 13;
			chasetype = -1;
			alertskip = 1;
			offscreen_frozen = 0;
			increment = 2;
			amplitude = 160;
			t = 310;
			t = (t + increment) % 360;
			shift = amplitude * dsin(t);
			y = yy + shift;
		}
		werewire4 = instance_create(1120, 200, obj_chaseenemy);
		with (werewire4)
		{
			myencounter = 74;
			sprite_index = spr_werewire_hang_overworld;
			touchsprite = spr_werewire_hang_overworld;
			radius = 1;
			pacetype = 13;
			chasetype = -1;
			alertskip = 1;
			offscreen_frozen = 0;
			increment = 2;
			amplitude = 160;
			t = 330;
			t = (t + increment) % 360;
			shift = amplitude * dsin(t);
			y = yy + shift;
		}
		werewire5 = instance_create(1320, 200, obj_chaseenemy);
		with (werewire5)
		{
			myencounter = 74;
			sprite_index = spr_werewire_hang_overworld;
			touchsprite = spr_werewire_hang_overworld;
			radius = 1;
			pacetype = 13;
			chasetype = -1;
			alertskip = 1;
			offscreen_frozen = 0;
			increment = 2;
			amplitude = 160;
			t = 350;
			t = (t + increment) % 360;
			shift = amplitude * dsin(t);
			y = yy + shift;
		}
		if (global.entrance != 2)
		{
			werewire6 = instance_create(2000, 360, obj_chaseenemy);
			with (werewire6)
			{
				myencounter = 74;
				sprite_index = spr_werewire_hang_overworld;
				touchsprite = spr_werewire_hang_overworld;
				radius = 1;
				pacetype = 13;
				chasetype = -1;
				alertskip = 1;
				offscreen_frozen = 0;
				increment = 2;
				amplitude = 160;
				t = 370;
				t = (t + increment) % 360;
				shift = amplitude * dsin(t);
				y = yy + shift;
			}
		}
	}
}
if (i_ex(obj_mainchara))
{
	if (obj_mainchara.x >= 1000 && obj_mainchara.y < 430 && global.flag[350] == 0)
		global.flag[350] = 1;
}
if (global.flag[350] == 1)
	safe_delete(obj_npc_room);
if (i_ex(obj_battleback))
{
	safe_delete(werewire1);
	safe_delete(werewire2);
	safe_delete(werewire3);
	safe_delete(werewire4);
	safe_delete(werewire5);
	safe_delete(werewire6);
	spawn7 = true;
}
if (global.entrance == 2 || global.flag[528] == 1)
	spawn7 = true;
if (spawned == 0 && spawn7 == true)
{
	werewire7 = instance_create(2000, 362, obj_solidblock);
	with (werewire7)
	{
		sprite_index = spr_werewire_hang_overworld;
		image_speed = 0.125;
		image_xscale = 2;
		image_yscale = 2;
		visible = true;
		depth = 100000;
	}
	spawned = 1;
}
if (!i_ex(hintscreen) && global.flag[351] == true)
{
	hintscreen = instance_create(1100, 952, obj_queenscreen);
	hintscreen.image_xscale = 2;
	hintscreen.image_yscale = 2;
	hintscreen.image_index = 17;
	state = 0;
}
if (state == 0)
{
	hintscreen.y -= 4;
	if (hintscreen.y <= 900)
		state = 1;
}
if (state == 1)
{
	hintscreen.x += 4;
	if (hintscreen.x >= 1280)
		state = 2;
}
if (i_ex(werewire6))
{
	if (scr_onscreen(werewire6))
	{
		spawned = 1;
		hatflyaway = 1;
	}
}
if (spawned == 1 && i_ex(hat) && hatflyaway == 1 && i_ex(obj_battleback))
{
	with (hat)
	{
		hatfade = scr_afterimage();
		hatfade.vspeed = -16;
		hatfade.hspeed = 4;
		hatfade.friction = 0.25;
		instance_destroy();
	}
}
