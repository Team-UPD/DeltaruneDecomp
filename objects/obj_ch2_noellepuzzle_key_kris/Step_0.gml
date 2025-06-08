if (pressed)
	exit;
var checkPress = 0;
if (i_ex(obj_mainchara) && !pressed && global.interact == 0)
{
	if (place_meeting(x, y, obj_mainchara))
		checkPress = 1;
}
if (checkPress)
{
	if (pressed == 0)
	{
		pressed = 1;
		alarm[0] = 15;
		snd_play(snd_wing);
		var exit_forcefield = instance_create(x - 130, y - 40, obj_forcefield);
		with (exit_forcefield)
		{
			image_xscale = 2;
			image_yscale = 4;
			scr_depth();
			canttalk = 1;
		}
	}
}
