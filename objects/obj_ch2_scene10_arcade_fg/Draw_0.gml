timer++;
image_alpha -= 0.05;
draw_set_alpha(image_alpha);
draw_rectangle_color(0, 0, 9999, 9999, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);
if (timer == 12)
{
	with (o_boxingqueen)
	{
		snd_pause(global.currentsong[1]);
		boxing_game_music = snd_init("boxing_game.ogg");
		mus_loop(boxing_game_music);
	}
}
if (timer == 30)
	instance_destroy();
