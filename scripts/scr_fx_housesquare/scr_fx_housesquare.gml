function scr_fx_housesquare(arg0, arg1, arg2)
{
	var gr = 0;
	for (i = 0; i < 3; i++)
	{
		gr = instance_create(arg0, arg1, obj_fx_growsquare);
		gr.color = arg2;
		gr.alarm[0] = 1 + (i * 3);
		gr.depth = depth - 10;
	}
}
