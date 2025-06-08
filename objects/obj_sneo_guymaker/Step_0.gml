xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
timer++;
if (type == 1 || type == 2 || type == 3 || type == 4 || type == 5 || type == 6 || type == 7)
{
	if (timer == 1)
	{
		if (type == 1)
		{
			row = choose(0, 1);
			if (prevrow == 2)
				row = choose(0, 1);
		}
		if (type == 2)
		{
			var aa = choose(0, 1, 2);
			if (prevrowy == 0)
				aa = choose(1, 2);
			if (prevrowy == 1)
				aa = choose(0, 2);
			if (prevrowy == 2)
				aa = choose(0, 1);
			rowy = (yy + 210) - (46 * aa);
			prevrowy = aa;
			row = 2;
		}
		if (type == 3 || type == 4)
		{
			rowy = (yy + 210) - (40 * choose(0, 1));
			row = choose(0, 1, 3, 6);
			if (prevrow == 2)
				row = choose(0, 1, 3, 6);
			if (prevrow == 3)
				row = choose(0, 1);
			if (row == 3 && firstspawn == 0)
				row = choose(0, 1);
			firstspawn = 1;
		}
		if (type == 5)
		{
			rowy = (yy + 210) - (40 * choose(0, 1, 2));
			row = choose(0, 1, 2, 2, 3, 6);
			if (prevrow == 2)
				row = choose(0, 1, 3, 6);
			if (prevrow == 3)
				row = choose(0, 1, 2);
		}
		if (type == 6)
			row = 6;
		if (type == 7)
			row = 7;
	}
	if (timer == 5 || timer == 10 || timer == 15 || timer == 20)
	{
		if (row == 0 || row == 1 || row == 2)
		{
			guy = instance_create(xx + 700, yy + 280, obj_sneo_lilguy);
			guy.hspeed = -18;
			guy.friction = -0.1;
			guy.vspeed = -2;
			guy.alarm[0] = 44;
			guy.alarm[1] = 40;
			guy.alarm[2] = 32;
			guy.gravity = 0.5;
			guy.gravity_direction = 0;
			guy.destroyable = 1;
			guy.image_blend = #00A2E8;
			guy.changedirection = 0;
			guy.altdirection = 0;
			guy.altspeed = 4;
			guy.altfriction = -0.2;
			guy.altgravity = 0;
			if (type == 2)
				guy.alarm[0] = 44;
			if (row == 1)
			{
				guy.y -= 240;
				guy.vspeed = -guy.vspeed;
			}
			if (row == 2)
			{
				guy.y -= 120;
				guy.vspeed = 0;
				guy.hspeed = -21;
			}
			if (row == 2 && type == 2)
			{
				guy.hspeed = -21;
				guy.gravity = 0;
				guy.friction = 0.5;
				guy.alarm[0] = 36;
				guy.changedirection = 1;
				guy.altdirection = guy.direction;
			}
			if ((type == 2 || type == 3 || type == 4 || type == 5) && row == 2)
				guy.y = rowy;
		}
		if (row == 3 && timer != 20)
		{
			for (guyi = 0; guyi < 2; guyi++)
			{
				guy[guyi] = instance_create(xx + 300, (yy - 40) + (400 * guyi), obj_sneo_lilguy);
				guy[guyi].vspeed = 18 - (36 * guyi);
				guy[guyi].alarm[0] = 44;
				guy[guyi].alarm[1] = 40;
				guy[guyi].alarm[2] = 32;
				guy[guyi].gravity = 0.8 - (1.6 * guyi);
				guy[guyi].gravity_direction = 90;
				guy[guyi].destroyable = 1;
			}
		}
		if (row == 6 && timer == 5)
		{
			spawncount = 2;
			var a = 0;
			repeat (spawncount)
			{
				guy = instance_create(xx + 410 + (a * 70), (yy - 20) + 0, obj_sneo_lilguy);
				guy.vspeed = 15;
				guy.alarm[0] = 44;
				guy.alarm[1] = 30;
				guy.alarm[2] = 32;
				guy.gravity = 0.53;
				guy.gravity_direction = 90;
				guy.destroyable = 1;
				guy = instance_create(xx + 445 + (a * 70), (yy - 20) + 400, obj_sneo_lilguy);
				guy.vspeed = -15;
				guy.alarm[0] = 44;
				guy.alarm[1] = 40;
				guy.alarm[2] = 32;
				guy.gravity = -0.53;
				guy.gravity_direction = 90;
				guy.destroyable = 1;
				a++;
			}
		}
		if (row == 7 && timer != 20)
		{
			guy = instance_create(xx + 630, yy + 100, obj_sneo_lilguy);
			guy.alarm[0] = 44;
			guy.alarm[1] = 40;
			guy.alarm[2] = 32;
			guy.destroyable = 1;
			with (guy)
				path_start(path_sneo_head_path1, 11, path_action_stop, 0);
		}
	}
	if (type == 2 && timer >= 41)
		timer = 0;
	if (type == 3 && timer >= 69)
		timer = 0;
	if (type == 6 && timer >= 69)
		timer = 0;
	if (type == 4 && timer >= 50)
		timer = 0;
	if (type == 5 && timer >= 69)
		timer = 0;
	if (timer >= 50)
		timer = 0;
	if (timer == 0)
		prevrow = row;
}
