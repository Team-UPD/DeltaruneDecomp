depth = 202;
if (global.fighting == 1)
{
	if (image_alpha < 1)
		image_alpha += 0.02;
	for (i = 0; i < 6; i++)
	{
		myy[i] = 0;
		exists[i] = 0;
		if (i <= 2)
		{
			if (global.char[i] != 0)
			{
				if (i_ex(global.charinstance[i]))
				{
					exists[i] = 1;
					instance[i] = global.charinstance[i];
					width[i] = 80;
					myy[i] = instance[i].y + (sprite_get_height(instance[i].idlesprite) * 2);
					myx[i] = instance[i].x + 20;
					if (global.char[i] == 2)
						myx[i] += 15;
					if (global.char[i] == 3)
						myx[i] += 15;
				}
			}
		}
		if (i >= 3 && i <= 6)
		{
			if (i_ex(global.monsterinstance[i - 3]))
				exists[i] = 1;
			if (exists[i])
			{
				instance[i] = global.monsterinstance[i - 3];
				myx[i] = instance[i].x + (instance[i].sprite_width / 2);
				myy[i] = instance[i].y + instance[i].sprite_height;
				width[i] = global.monsterinstance[i - 3].sprite_width;
			}
		}
		if (exists[i] && i_ex(instance[i]))
		{
			if ((global.encounterno == 90 || global.encounterno == 91 || global.encounterno == 92 || global.encounterno == 93 || global.encounterno == 94) && i > 2)
			{
			}
			else
			{
				var lightHeight = 280;
				draw_sprite_pos(spr_whitegradientdown_40, 0, myx[i], myy[i] - lightHeight, myx[i], myy[i] - lightHeight, (myx[i] - (width[i] / 2)) + 2, myy[i] - 2, myx[i] + (width[i] / 2), myy[i] - 2, 0.25);
				draw_set_color(c_gray);
				draw_ellipse(myx[i] - (width[i] / 2), myy[i] + 4, myx[i] + (width[i] / 2), myy[i] - 10, false);
			}
		}
	}
	draw_set_alpha(1);
}
else if (image_alpha > 0)
{
	image_alpha -= 0.02;
}
