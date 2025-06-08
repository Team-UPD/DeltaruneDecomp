function scr_heartcolor(arg0)
{
	__heartcolor = arg0;
	if (__heartcolor == "red" || __heartcolor == 0)
	{
		with (obj_heart)
		{
			color = 0;
			sprite_index = spr_heart;
		}
	}
	if (__heartcolor == "yellow" || __heartcolor == 1)
	{
		with (obj_heart)
		{
			color = 1;
			sprite_index = spr_yellowheart;
		}
		obj_grazebox.sprite_index = spr_grazeappear_yellow;
	}
}
