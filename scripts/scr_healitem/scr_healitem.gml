function scr_healitem(arg0, arg1)
{
	scr_heal(arg0, arg1);
	healx = scr_charbox_x(arg0);
	healtext = instance_create(healx + 70 + xx, yy + 430, obj_healwriter);
	healtext.healamt = arg1;
}
