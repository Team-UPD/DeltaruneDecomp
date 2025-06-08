timer++;
image_speed = 0;
if (timer == 1)
	snd_play(snd_spell_cure_slight_smaller);
if (timer > 0 && timer < 21)
{
	image_xscale = lerp(0, 2, timer / 20);
	image_yscale = lerp(0, 2, timer / 20);
	var easedlerp = scr_ease_inout(timer / 20, 2);
	image_angle = lerp(0, 720, easedlerp);
}
if (timer > 25 && timer < 36)
	x = lerp(x, obj_herokris.x + 35, (timer - 25) / 10);
if (timer > 35)
{
	image_xscale += 0.4;
	image_yscale += 0.4;
	image_alpha -= 0.1;
}
if (timer == 45)
{
	star = 0;
	scr_healitemspell(120);
	instance_destroy();
}
