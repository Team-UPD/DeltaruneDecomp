if (init == 0)
{
	if (attack == 1)
		firingspeed = 25;
	else
		btimer = firingspeed - irandom(10);
	init = 1;
}
if (state == 0)
{
}
if (state == 1)
{
	if (reposition == 0)
	{
		reposition = 1;
		x -= pieceoffset_x;
		y -= pieceoffset_y;
	}
	timer++;
	if (timer >= 10)
	{
		timer = 0;
		state = 2;
	}
}
if (state == 2)
{
	timer++;
	btimer++;
	if (attack != 0)
		y = (ystart - pieceoffset_y) + (sin(timer / 10) * 50);
	if (btimer >= firingspeed && attack < 2)
	{
		if (attack == 0)
		{
			d = instance_create(x + mouthx, y + mouthy, obj_spamton_jumper);
			d.direction = 180;
			d.speed = 5;
			d.target = target;
			d.damage = damage;
			d.grazepoints = grazepoints;
			if (jumpy == 0)
			{
				d.jumper = 1;
				if (doublecount == 2)
				{
					jumpy = 2;
					doublecount = 0;
				}
				else
				{
					jumpy = choose(1, 2, 2);
					if (jumpy == 1)
						doublecount++;
					else
						doublecount = 0;
				}
			}
			else
			{
				jumpy--;
			}
			if (flip)
				d.gravity = 0.12;
			else
				d.gravity = -0.19;
			flip = 1 - flip;
		}
		else
		{
			var attackstring = choose(stringsetloc("$$DEALS$", "obj_spamton_attack_mode_slash_Step_0_gml_69_0"), stringsetloc("$VALUES$", "obj_spamton_attack_mode_slash_Step_0_gml_69_1"), stringsetloc("$$REAL$$", "obj_spamton_attack_mode_slash_Step_0_gml_69_2"), stringsetloc("$\"CHEAP\"", "obj_spamton_attack_mode_slash_Step_0_gml_69_3"), stringsetloc("$PRICES$", "obj_spamton_attack_mode_slash_Step_0_gml_69_4"), stringsetloc("BARGAIN$", "obj_spamton_attack_mode_slash_Step_0_gml_69_5"), stringsetloc("$$49.998", "obj_spamton_attack_mode_slash_Step_0_gml_69_6"));
			if (attackstring == stringsetloc("$VALUES$", "obj_spamton_attack_mode_slash_Step_0_gml_70_0") && irandom(19) == 0)
				attackstring = stringsetloc("$VAULES$", "obj_spamton_attack_mode_slash_Step_0_gml_70_1");
			var xoff = mouthx;
			var falsetimer = sin(timer / 10) * 50;
			for (i = 0; i < string_length(attackstring); i++)
			{
				d = instance_create(x + xoff, ((y + mouthy) - 10) + (sin((timer + 20) / 10) * 50), obj_spamton_wordbullet);
				d.direction = 180;
				d.speed = 10;
				d.timer = -xoff / 2;
				d.offset = (y + mouthy) - 10 - d.ystart;
				d.mouthx = x + mouthx;
				d.creator = self;
				d.bulletletter = string_char_at(attackstring, i + 1);
				d.target = target;
				d.damage = damage;
				d.grazepoints = grazepoints;
				xoff += 15;
				d.type = made;
			}
			made = 1 - made;
		}
		btimer = 0;
	}
	else if (btimer >= firingspeed && attack == 2 && global.turntimer >= 40)
	{
		if (inhalesfx == 0)
		{
			inhalesfx = 1;
			snd_loop(snd_sneo_overpower);
			snd_pitch(snd_sneo_overpower, 3);
			snd_pitch_time(snd_sneo_overpower, 5, 30);
			snd_volume(snd_sneo_overpower, 0.5, 0);
		}
		effecttimer++;
		if ((effecttimer % 6) == 0)
		{
			for (i = 0; i < 3; i++)
			{
				d = instance_create(x + mouthx, y + mouthy, obj_rouxls_power_up_orb);
				d.direction = irandom(40) + (i * 40) + 120;
				d.distance_multiplier = 0.75;
				d.lifetime = 12;
				d.max_radius = 3;
				d.depth = depth - 1;
				d.image_blend = image_blend;
			}
		}
	}
	if (global.turntimer <= 30 && btimer > 8)
	{
		timer = 10;
		state = 3;
	}
}
if (state == 3)
{
	if (inhalesfx)
	{
		inhalesfx = 0;
		snd_stop(snd_sneo_overpower);
	}
	timer--;
	if (timer == 0)
	{
		image_index = 4;
		image_speed = -1;
		x = xstart;
		y = ystart;
		state = 4;
	}
}
if (state == 4)
{
	if (image_index <= 0)
		image_speed = 0;
}
