if (instance_exists(obj_lottery_holemouse_generator) && inert == 0)
{
	obj_lottery_holemouse_generator.gentimer = 15;
	obj_lottery_holemouse_generator.mousecreate = 1;
	snd_play(snd_mouse);
	timer = 0;
	freezeplayer = true;
}
