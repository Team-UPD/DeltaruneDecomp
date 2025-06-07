buffer++;
if (buffer < 60)
	exit;
if (button1_p() && !start_timer)
{
	fadeout = instance_create(0, 0, obj_fadeout);
	with (fadeout)
		fadespeed = 0.02;
	start_timer = true;
}
if (start_timer)
{
	snd_free_all();
	restart_timer++;
}
if (restart_timer == 200)
	game_restart();
