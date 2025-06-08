if (type == 5 && sameattacker < 2 && obj_swatchling_battle_controller.red_count > 0)
{
	var swatch_bc = obj_swatchling_battle_controller;
	if (init == 1)
	{
		if (sameattacker == 1 && sameattack == scr_monsterpop())
			btimer = -20;
		init = 2;
		if (scr_monsterpop() != 1 && sameattack != scr_monsterpop())
			side = irandom(20);
		difficulty = (scr_monsterpop() == 1) ? 1.5 : 1;
		var _platecarry = swatch_bc.yellow_count > swatch_bc.blue_count;
		if (_platecarry)
			difficulty = (sameattacker == 1) ? 0.35 : 0.75;
		if (_platecarry)
			swatch_bc.shockwave_x_1 = ((maxx + 140) - side) + 98;
	}
	if (made >= 10)
	{
		made = 0;
		if (swatch_bc.yellow_count > swatch_bc.blue_count)
		{
			if ((init % 2) == 0)
				swatch_bc.shockwave_x_2 = ((maxx + 140) - side) + 98 + 40;
			else
				swatch_bc.shockwave_x_1 = ((maxx + 140) - side) + 98 + 40;
		}
		else
		{
			side = irandom(20);
		}
		init++;
	}
	if (btimer > ((scr_monsterpop() == sameattack) ? 4 : 6))
	{
		flip = sameattacker == 1 || (swatch_bc.blue_count == swatch_bc.yellow_count && swatch_bc.blue_count > 0);
		reverse = swatch_bc.blue_count == swatch_bc.yellow_count && swatch_bc.blue_count > 0;
		btimer = 0;
		xx = (maxx + 140) - (made * 40) - side;
		yy = maxy - 3;
		if (flip)
			yy = miny + 3;
		if (reverse)
			xx = (minx - 140) + (made * 40) + side;
		d = scr_bullet_create(xx, yy, obj_swatchling_shockwave);
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
		if (swatch_bc.blue_count > swatch_bc.yellow_count)
			d.sizemultiplier = 0.5;
		else
			d.sizemultiplier = difficulty;
		d.startColor = special ? c_orange : c_red;
		if (flip)
			d.image_angle = 180;
		made++;
	}
}
else if (type == 6 && sameattacker < 2 && obj_swatchling_battle_controller.yellow_count > 0)
{
	if (init == 1)
	{
		ratio = min(ratio, 1.6);
		init = 2;
		side = irandom(6 - (scr_monsterpop() + sameattack));
		if (obj_swatchling_battle_controller.red_count > obj_swatchling_battle_controller.blue_count)
		{
			if (sameattack >= 2)
				ratio = 2.4;
			if (sameattacker == 1)
				btimer = 36;
		}
	}
	if (btimer > (30 * ratio))
	{
		btimer = 0;
		var _bounce = obj_swatchling_battle_controller.blue_count > 0;
		var _shockwave = !_bounce && obj_swatchling_battle_controller.red_count > 0;
		if (sameattack > 1)
			_bounce = false;
		var _combo = _shockwave || _bounce;
		xx = (sameattacker || _shockwave) ? (minx - 120) : (maxx + 120);
		flip = (sameattack > 1) ? sameattacker : (made % 2);
		if (_combo)
			flip = 0;
		yy = (obj_growtangle.y + 50) - (flip * 60);
		d = instance_create(xx, yy, obj_swatchling_platter);
		d.speed = (sameattack || _combo == 3) ? 3 : 4;
		d.direction = ((sameattacker == 0 || _bounce) && !_shockwave) ? 180 : 0;
		d.grazepoints = 4;
		if (special)
			d.hasCandy = irandom(6) == 6;
		else if (made == side)
			d.hasCandy = 1;
		d.timer = -1 - irandom(19);
		d.damage = damage;
		d.target = target;
		d.startColor = special ? c_green : c_yellow;
		d.platterPlate.image_blend = image_blend == d.startColor;
		d.platterLid.image_blend = image_blend == d.startColor;
		made++;
	}
}
else if (type == 7 && obj_swatchling_battle_controller.blue_count > 0)
{
	if (special == 0)
	{
		special = 1;
		d = instance_create(x + 82, y + 68, obj_swatchling_cannonball);
		d.creator = creator;
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
		d.childgraze = 4;
		global.monsterinstance[creator].visible = 0;
		if (sameattack > 1)
			d.trackplayer = -1;
		if (sameattack > 2)
			d.spawnbullets = 0;
	}
}
