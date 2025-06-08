if (other.con == 5 && other.captured == 0)
{
	caught++;
	other.depth = depth + 1;
	other.captured = 1;
	draw_in = 1;
	if (draw_in_timer > 10)
		draw_in_timer = 0;
	with (obj_maus_split)
		mousecount--;
	other.vspeed = vspeed;
	other.friction = friction;
	with (obj_maus_split)
		mercycount += 2;
	with (obj_mauswheel_enemy)
		actfailure = 0;
	snd_stop(snd_squeaky);
	snd_volume(snd_play(snd_squeaky), noisevol, 0);
}
