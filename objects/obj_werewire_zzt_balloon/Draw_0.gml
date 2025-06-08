draw_self();
siner++;
lettersiner += 0.2;
if (lettersiner >= 2)
	lettersiner = 0;
y += (sin(siner / 8) * 0.1);
for (i = 0; i < 4; i++)
	draw_sprite_ext(scr_84_get_sprite("spr_werewire_zzt_text"), (letter[i] * 2) + lettersiner, x + (i * 20) + random(2), (y - (i * 7)) + random(2) + sin((i / 2) + (siner / 3)), 2, 2, 0, c_white, 1);
canDestroyTimer++;
if (canDestroyTimer >= 15)
{
	if (button1_p())
		instance_destroy();
}
if (canDestroyTimer >= 120 || !scr_isphase("enemytalk"))
	instance_destroy();
