function scr_tb_pattern()
{
	var _pattern = room;
	if (argument_count > 0)
	{
		_pattern = argument[0];
		switch (_pattern)
		{
			default:
				break;
			case 0:
				var _spacing = 84;
				var _distance = 720;
				var _bullets = _distance div _spacing;
				for (var i = 0; i < (_bullets - 1); i++)
				{
					var _h = 100 + (i * _spacing);
					bullet = scr_tb_make(_h, 270 + (i * 40), 0, 1, false);
					if (i == (_bullets - 1))
						bullet.boostAmount = 16;
				}
				break;
			case 1:
				var _spacing = 84;
				var _distance = 1040;
				var _bullets = _distance div _spacing;
				for (var i = 0; i < (_bullets - 1); i++)
				{
					var _h = 100 + (i * _spacing);
					bullet = scr_tb_make(_h, 270 - (i * 40), 0, 1, false);
					if (i == (_bullets - 1))
						bullet.boostAmount = 16;
				}
				break;
			case 2:
				lasti = 6;
				bangle[0] = 270;
				bangle[1] = 230;
				bangle[2] = 190;
				bangle[3] = 230;
				bangle[4] = 270;
				bangle[5] = 310;
				bangle[6] = 350;
				for (var i = 0; i <= lasti; i++)
				{
					for (j = 0; j < 4; j++)
					{
						bullet = scr_tb_make(240 + (i * 360) + (j * 40), bangle[i], 0, 1, false);
						bullet.boostAmount = 12;
					}
				}
				break;
			case 3:
				lasti = 5;
				bangle[0] = 270;
				bangle[1] = 230;
				bangle[2] = 190;
				bangle[3] = 230;
				bangle[4] = 270;
				bangle[5] = 310;
				for (var i = 0; i <= lasti; i++)
				{
					for (j = 0; j < 3; j++)
					{
						bullet = scr_tb_make(140 + (i * 320) + (j * 40), bangle[i], 0, 1, false);
						bullet.boostAmount = 12;
					}
				}
				break;
			case 4:
				lasti = 2;
				bangle[0] = 270;
				bangle[1] = 310;
				bangle[2] = 270;
				for (var i = 0; i <= lasti; i++)
				{
					for (j = 0; j < 4; j++)
					{
						bullet = scr_tb_make(140 + (i * 360) + (j * 40), bangle[i], 0, 1, false);
						bullet.boostAmount = 12;
					}
				}
				break;
			case 5:
				for (var i = 0; i < 5; i++)
				{
					bullet = scr_tb_make(140 + (i * 40), 270, 0, 1, false);
					bullet.boostAmount = 12;
				}
				break;
			case 52:
				for (var i = 0; i < 4; i++)
				{
					bullet = scr_tb_make(120 + (i * 40), 270, 0, 1, false);
					bullet.boostAmount = 12;
				}
				break;
			case 53:
				for (var i = 0; i < 3; i++)
				{
					bullet = scr_tb_make(100 + (i * 40), 270, 0, 1, false);
					bullet.boostAmount = 12;
				}
				break;
			case 6:
				riseSpeed = 3;
				riseSpeedBoostInitial = 8;
				riseSpeedBoost = riseSpeedBoostInitial;
				riseSpeedBoostMax = 10;
				riseSpeedBoostFriction = 0.15;
				lasti = 9;
				nowdir = 270;
				for (var i = 0; i <= lasti; i++)
				{
					bullet = scr_tb_make(400 + (i * 140), nowdir, 0, 1, false);
					bullet.boostAmount = 6;
					if (i == lasti)
						bullet.boostAmount = 10;
					nowdir += choose(30, 30, 0, -30, -30);
					if (nowdir <= 180)
						nowdir = choose(180, 210, 210);
					if (nowdir >= 360)
						nowdir = choose(360, 330, 330);
				}
				break;
			case 7:
				riseSpeed = 3;
				riseSpeedBoostInitial = 6;
				riseSpeedBoost = riseSpeedBoostInitial;
				riseSpeedBoostMax = 9;
				riseSpeedBoostFriction = 0.25;
				lasti = 15;
				nowdir = 270;
				for (var i = 0; i <= lasti; i++)
				{
					bullet = scr_tb_make(200 + (i * 120), nowdir, 0, 1, false);
					bullet.boostAmount = 6;
					if (i == lasti)
						bullet.boostAmount = 10;
					nowdir += choose(30, 30, 0, -30, -30);
					if (nowdir <= 180)
						nowdir = choose(180, 210, 210);
					if (nowdir >= 360)
						nowdir = choose(360, 330, 330);
				}
				break;
			case 8:
				riseSpeed = 3;
				riseSpeedBoostInitial = 8;
				riseSpeedBoost = riseSpeedBoostInitial;
				riseSpeedBoostMax = 10;
				riseSpeedBoostFriction = 0.15;
				lasti = 5;
				nowdir = 270;
				for (var i = 0; i <= lasti; i++)
				{
					bullet = scr_tb_make(400 + (i * 180), nowdir, 0, 1, false);
					bullet.boostAmount = 6;
					if (i == lasti)
						bullet.boostAmount = 10;
					nowdir += choose(30, 30, 0, -30, -30);
					if (nowdir <= 240)
						nowdir = choose(240, 270);
					if (nowdir >= 300)
						nowdir = choose(300, 270);
				}
				scoreboardGoal = 6;
				break;
		}
	}
	else
	{
		switch (_pattern)
		{
			default:
				break;
			case 10:
				scr_tb_make(500, 90, 0, 3, false);
				scr_tb_make(600, 120, 0, 3, false);
				scr_tb_make(700, 150, 0, 3, false);
				scr_tb_make(800, 180, 0, 3, false);
				scr_tb_make_split(1400, 0, spinSpeed, 2, 0);
				scr_tb_make_split(1500, 30, spinSpeed, 2, 0);
				scr_tb_make_split(1600, 60, spinSpeed, 2, 0);
				scr_tb_make_split(1800, 0, spinSpeed, 2, 0);
				scr_tb_make_split(2000, 10, spinSpeed, 3, 0);
				scr_tb_make_split(2200, 20, spinSpeed, 4, 0);
				for (var i = 0; i < 10; i++)
				{
					scr_tb_make(2300 + (i * 20), 230, 0, 0, false);
					scr_tb_make(2300 + (i * 20), 270, 0, 1, false);
					scr_tb_make(2300 + (i * 20), 310, 0, 0, false);
				}
				for (var i = 0; i < 64; i++)
				{
					scr_tb_make(2700 + (i * 20), i * 10, 0, 0, true);
					scr_tb_make(2700 + (i * 20), 180 + (i * 10), 0, 0, true);
				}
				break;
			case 79:
				var _spacing = 74;
				var _distance = 440;
				var _bullets = _distance div _spacing;
				for (var i = 0; i < _bullets; i++)
				{
					var _h = 60 + (i * _spacing);
					bullet = scr_tb_make(_h - 5, 350 + (i * 40), 0, 1, false);
					bullet.boostAmount = 6;
					if (i == (_bullets - 1))
						bullet.boostAmount = 8;
				}
				break;
			case 165:
				var _angle = [30, 150, 270];
				lasti = 2;
				for (var i = 0; i <= lasti; i++)
				{
					for (j = 0; j < 5; j++)
						bullet = scr_tb_make(500 + (i * 280) + (j * 30), _angle[i], 0, 0, false);
				}
				scr_tb_make_split(1500, 90, 0, 2, 4);
				scr_tb_make_split(1800, 90, 0, 3, 4);
				scr_tb_make_split(2100, 0, 0, 4, 4);
				scr_tb_make_split(2400, 45, 0, 4, 4);
				break;
			case 168:
				scr_tb_make_split(650, 0, -3, 3, 0);
				scr_tb_make_split(840, 30, 3, 3, 0);
				scr_tb_make_split(1030, 60, -3, 3, 0);
				scr_tb_make_split(1220, 90, 5, 3, 0);
				scr_tb_make_split(1410, 90, -5, 3, 0);
				scr_tb_make_split(1600, 90, 5, 3, 0);
				scr_tb_make_split(1790, 90, 6, 3, 0);
				scr_tb_make_split(1980, 90, 6, 3, 0);
				scr_tb_make_split(2170, 90, 6, 3, 0);
				break;
			case 167:
				scr_tb_make_split(650, 90, 6, 3, 0);
				scr_tb_make_split(700, 90, 6, 3, 0);
				scr_tb_make_split(750, 90, 6, 3, 0);
				scr_tb_make_split(1000, 90, -6, 3, 0);
				scr_tb_make_split(1050, 90, -6, 3, 0);
				scr_tb_make_split(1100, 90, -6, 3, 0);
				scr_tb_make_split(1350, 90, 6, 3, 0);
				scr_tb_make_split(1400, 90, 6, 3, 0);
				scr_tb_make_split(1450, 90, 6, 3, 0);
				scr_tb_make_split(1500, 90, 6, 3, 3);
				break;
			case 166:
				scr_tb_make_split(640, 70, -3, 2, 4);
				scr_tb_make_split(900, 180, 3, 2, 4);
				scr_tb_make(1100, 0, -4, 3, false);
				scr_tb_make(1100, 180, -4, 3, false);
				scr_tb_make(1960, 0, 4, 3, false);
				scr_tb_make(1960, 120, 4, 3, false);
				scr_tb_make(1960, 240, 4, 3, false);
				break;
			case 175:
				var aa = 300;
				for (var ii = 0; ii < 10; ii++)
					scr_tb_make_split(aa + 950 + (ii * 40), 90, 10, 3, 0);
				for (var ii = 0; ii < 10; ii++)
					scr_tb_make_split(aa + 1600 + (ii * 40), 90, -10, 3, 0);
				var nn = 1500 + aa;
				scr_tb_make_crescent(750 + nn, 270, 20, 1, 0, 14);
				scr_tb_make_crescent(1000 + nn, 0, 20, 1, 0, 14);
				scr_tb_make_crescent(1250 + nn, 90, 20, 1, 0, 14);
				scr_tb_make_crescent(1500 + nn, 180, 20, 1, 0, 14);
				scr_tb_make_crescent(1750 + nn, 90, 20, 1, 0, 14);
				scr_tb_make_crescent(2000 + nn, 0, 20, 0, 0, 8);
				scr_tb_make_crescent(2200 + nn, 90, 20, 0, 0, 10);
				scr_tb_make_crescent(2400 + nn, 180, 20, 0, 0, 10);
				scr_tb_make_crescent(2600 + nn, 270, 20, 0, 0, 10);
				scr_tb_make_crescent(2800 + nn, 0, 20, 0, 0, 13);
				scr_tb_make_crescent(3000 + nn, 90, 20, 0, 0, 13);
				scr_tb_make_crescent(3200 + nn, 180, 20, 0, 0, 13);
				scr_tb_make_crescent(3400 + nn, 270, 20, 0, 0, 13);
				var mm = 5100 + aa;
				for (var ii = 0; ii < 40; ii++)
					scr_tb_make_split((ii * 32) + mm, 90 + (10 * ii), 6.25, 3, 0);
		}
	}
}
