image_alpha = 0.05;
if (instance_exists(obj_mainchara) && ignorebuffer < 0)
{
	obj_mainchara.swordmode = 0;
	if (instance_exists(obj_swordobjparent))
	{
		if (obj_mainchara.bbox_right >= x && obj_mainchara.bbox_left <= (x + sprite_width))
		{
			if (obj_mainchara.bbox_bottom >= y && obj_mainchara.bbox_top <= (y + sprite_height))
			{
				obj_swordarea.checkid = id;
				with (obj_swordarea)
				{
					if (id != checkid)
						ignorebuffer = 2;
				}
				swordobj = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_swordobjparent, false, true);
				if (swordobj != -4)
				{
					if (swordobj.active == 1)
						obj_mainchara.swordmode = 1;
				}
			}
		}
	}
}
ignorebuffer--;
