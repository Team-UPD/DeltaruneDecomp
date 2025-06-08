if (instance_exists(obj_mainchara) && triggered == 0)
{
	if (point_in_rectangle(obj_mainchara.x + 9, obj_mainchara.y + 18, 592, 423, 672, 503))
		triggered = 1;
}
if (triggered == 1)
{
	enem = instance_create(1000, 420, obj_chaseenemy);
	with (enem)
	{
		myencounter = 53;
		sprite_index = spr_werewire_hang_overworld;
		touchsprite = sprite_index;
		radius = 0;
		pacetype = 12;
		chasetype = 5;
		alertskip = 1;
		eraser = 1;
		ignoresolid = 0;
		moveradius = 160;
	}
	triggered = 2;
}
if (triggered == 2)
{
	if (instance_exists(obj_chaseenemy) && point_in_rectangle(obj_mainchara.x + 9, obj_mainchara.y + 18, 240, 640, 320, 670))
	{
		enem2 = instance_create(720, 620, obj_chaseenemy);
		with (enem2)
		{
			myencounter = 53;
			sprite_index = spr_werewire_hang_overworld;
			touchsprite = sprite_index;
			radius = 0;
			pacetype = 12;
			chasetype = 5;
			eraser = 1;
			alertskip = 1;
			ignoresolid = 0;
			moveradius = 160;
		}
		triggered = 3;
	}
}
if (triggered == 3)
{
	if (global.interact == 0)
	{
		with (enem)
		{
			x += 4;
			if (x > room_width)
				instance_destroy();
			if (!scr_onscreen(id))
				instance_destroy();
		}
	}
}
