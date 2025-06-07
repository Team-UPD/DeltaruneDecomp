function scr_itemcomment(arg0, arg1)
{
	talkx = scr_charbox_x(arg0);
	itemcomment = instance_create(talkx + xx, yy + 460, obj_menuwriter);
	itemcomment.msg = arg1;
	itemcomment.who = arg0;
	if (global.flag[32] == 1)
	{
		with (itemcomment)
			instance_destroy();
	}
}
