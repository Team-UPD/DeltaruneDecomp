function scr_healitem_all(arg0)
{
	scr_healall(arg0);
	for (i = 0; i < chartotal; i += 1)
	{
		healx = scr_charbox_x(i);
		healtext = instance_create(healx + 70 + xx, yy + 430, obj_healwriter);
		healtext.healamt = arg0;
	}
}
