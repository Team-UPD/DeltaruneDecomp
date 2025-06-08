if (state == 3)
{
	scr_enemyhurt_tired_after_damage(0.5);
	scr_enemy_drawhurt_generic();
}
fixy = 0;
if (global.flag[221] == 2)
	fixy = 10;
if (global.flag[221] == 3)
	fixy = 26;
thrash.xx = x + 34;
thrash.yy = y + 108;
if (state == 0)
{
	fsiner += 1;
	if (saberanim)
	{
		if (thissprite != sabersprite)
		{
			siner = 0;
			thissprite = sabersprite;
		}
		else if (siner < 3)
		{
			siner++;
		}
	}
	else
	{
		siner += 0.16666666666666666;
		thissprite = idlesprite;
		if (global.mercymod[myself] >= global.mercymax[myself])
			thissprite = sparedsprite;
	}
	var xpos = (thrashcon == 0) ? x : remx;
	if (thrashcon > 2 && thrashcon != 6)
		draw_monster_body_part(thissprite, siner, xpos, y + floatheight);
	else
		draw_monster_body_part(thissprite, siner, xpos, y + (thrash.s * thrash.walkc) + fixy);
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
if (scr_debug())
{
	global.flag[220] = 3;
	global.flag[221] = 0;
	global.flag[222] = 3;
}
var turretbody = thrash.part[0] == 2;
thrash.s = 3;
var puddx = remx + (turretbody ? 18 : 34);
var puddy = remy + 173 + ((thrash.s * thrash.walkc) / 4);
puddle.x = puddx;
puddle.y = remy + 173 + ((thrash.s * cos((thrash.wsiner + thrash.wsinerrate) / 3)) / 4);
if (thrashcon < 2 || thrashcon > 5)
	draw_sprite_ext(spr_rouxls_puddle, turretbody ? 3 : 1, puddx, puddy, 2, 2, 0, c_lime, 1);
puddle.image_index = turretbody ? 2 : 0;
if (thrashmode == 0)
{
}
if (thrashmode == 1)
{
	if (thrashcon == 0)
	{
		thrashtimer = 0;
		thrashcon = 1;
		var xoff = 0;
		if (turretbody)
		{
			xoff = 10;
			d = instance_create((puddle.x - 60) + xoff, puddle.y + 4, obj_rouxls_splasheffect);
			d.depth = depth - 1;
		}
		d = instance_create((puddle.x - 30) + xoff, puddle.y + 4, obj_rouxls_splasheffect);
		d.depth = depth - 1;
		d = instance_create(puddle.x + 30 + xoff, puddle.y + 4, obj_rouxls_splasheffect);
		d.depth = depth - 1;
		d = instance_create(puddle.x + xoff, puddle.y + 6, obj_rouxls_splasheffect);
		d.depth = depth - 2;
	}
	if (thrashcon == 1)
	{
		thrash.wsinerrate = 0;
		if (y < (remy - 10))
			thrash.drawfeet = 1;
		if (y >= 10)
		{
			thrash.wsiner += 1.6;
			y -= 4;
		}
		else
		{
			if (headattack)
				thrashtimer = arcsin(0.75) * 10;
			aimtime = irandom(15) + 15;
			thrashcon = 2;
			thrash.wsinerrate = 0;
		}
	}
	if (thrashcon == 2)
	{
		thrashtimer++;
		if ((thrashtimer % 8) == 0)
		{
			var ripple = instance_create(puddle.x, puddle.y, obj_rouxls_ripple);
			ripple.maxsize = clamp(1 - ((y - 90) / 45), 0.1, 2);
			ripple.image_speed = 0;
			ripple.image_index = turretbody ? 1 : 0;
			ripple.depth = puddle.depth - 1;
			submerged = 0;
		}
		if (thrashtimer <= aimtime || headattack)
			y = (headattack ? 40 : 10) - (sin(thrashtimer / (headattack ? 10 : 5)) * 40);
		if (headattack && y <= 10 && global.turntimer <= 40)
		{
			headattack = 0;
			thrashtimer = 0;
			thrashcon = 5;
		}
		else if (!headattack && thrashtimer >= (aimtime + 25))
		{
			thrashtimer = 0;
			thrashcon = 3;
			thrash.moving = 1;
			floatheight = (thrash.s * thrash.walkc) + fixy;
		}
		else if (!headattack && thrashtimer >= (aimtime + 10))
		{
			thrash.wsiner += 1.6 * (advancespeed / 4);
		}
	}
	if (thrashcon == 3)
	{
		if (x >= (camerax() + 200))
		{
			thrash.wsiner += 1.6 * (advancespeed / 8);
			x -= advancespeed;
		}
		else
		{
			thrashcon = 4;
		}
	}
	if (thrashcon == 4)
	{
		thrashtimer++;
		if (thrashtimer >= 15)
		{
			thrashcon = 5;
			thrashtimer = 0;
		}
	}
	if (thrashcon == 5)
	{
		if (x < (remx - 6))
		{
			x += returnspeed;
			thrash.wsiner -= 1.6 * (returnspeed / 6);
		}
		else
		{
			x = remx;
			thrashcon = 6;
			thrash.moving = 0;
		}
	}
	if (thrashcon == 6)
	{
		if (!submerged && y > (remy - 18))
		{
			var xoff = 0;
			if (turretbody)
			{
				xoff = 10;
				d = instance_create((puddle.x - 60) + xoff, puddle.y + 4, obj_rouxls_splasheffect);
				d.depth = depth - 1;
			}
			d = instance_create((puddle.x - 30) + xoff, puddle.y + 4, obj_rouxls_splasheffect);
			d.depth = depth - 1;
			d = instance_create(puddle.x + 30 + xoff, puddle.y + 4, obj_rouxls_splasheffect);
			d.depth = depth - 1;
			d = instance_create(puddle.x + xoff, puddle.y + 6, obj_rouxls_splasheffect);
			d.depth = depth - 2;
			submerged = 1;
		}
		if (y > (remy - 10))
			thrash.drawfeet = 0;
		if (y <= (remy - 4))
		{
			y += 4;
			thrash.wsiner -= 0.8;
		}
		else
		{
			y = remy;
			x = remx;
			thrashcon = 0;
			thrashmode = 0;
			thrash.wsinerrate = 0.8;
			advancespeed = 8;
			returnspeed = 6;
		}
	}
	if (thrashcon == 7)
	{
		if (thrashtimer == 50)
		{
			snd_play(snd_pombark);
			thrash.a = 1;
		}
		if (thrashtimer < 75)
		{
			thrashtimer++;
			thrash.wsiner -= 0.8;
		}
		else
		{
			x = remx;
			thrashcon = 6;
			thrash.moving = 0;
			returnease = 0;
			thrashtimer = 0;
		}
	}
}
if (scr_debug())
{
	draw_set_color(c_white);
	if (global.mnfight == 7)
		draw_text(x - 200, y, "");
	if (instance_exists(obj_battletester))
	{
		var debugstring = "";
		if (thrash.dbselect == 1)
			debugstring += "";
		scr_debug_print_persistent(debugstring);
	}
	if (keyboard_check_pressed(ord("B")))
		thrashmode++;
	if (thrashmode >= 2)
		thrashmode = 0;
	if (thrashmode == 0)
		thrash.drawfeet = thrash.dbselect;
}
