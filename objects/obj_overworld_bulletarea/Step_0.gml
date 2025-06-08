if (instance_exists(obj_mainchara) && ignorebuffer < 0)
{
	obj_mainchara.battlemode = 0;
	cancel = 0;
	if (onlyActiveIfBulletsExist && !instance_exists(obj_overworldbulletparent))
		cancel = 1;
	if (onlyActiveIfSpecialObjectExists && !i_ex(specialObject))
		cancel = 1;
	if (cancel == 0)
	{
		if (obj_mainchara.bbox_right >= x && obj_mainchara.bbox_left <= (x + sprite_width) && obj_mainchara.bbox_bottom >= y && obj_mainchara.bbox_top <= (y + sprite_height))
		{
			obj_overworld_bulletarea.checkid = id;
			with (obj_overworld_bulletarea)
			{
				if (id != checkid)
					ignorebuffer = 2;
			}
			obj_mainchara.battlemode = 1;
			if (keepHidden == 0)
			{
				with (obj_overworld_bulletarea)
				{
					if (scr_debug())
						showArea = 1;
				}
			}
		}
	}
}
ignorebuffer--;
if (obj_mainchara.battlemode == 0)
	timer++;
else
	timer = 0;
if (timer >= 60)
{
	with (obj_darkcontroller)
		charcon = 0;
}
image_alpha = 0;
