if (hit_timer > 0 && hit_timer < 2)
	d3d_set_fog(1, c_white, 0, 0);
draw_self();
if (hit_timer > 0 && hit_timer < 2)
	d3d_set_fog(0, c_white, 0, 0);
energy_aura_timer++;
if (energy_aura_timer == (100 / f))
	specialcon = 1;
if (specialcon == 1 && hit == 0)
{
	specialcontimer++;
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
		flamealpha = 1 - (specialcontimer / 30);
	if (specialcontimer >= 22)
	{
		specialcontimer = 12;
		image_index = 0;
	}
	draw_sprite_ext(spr_bhero, 10 + flameframe, x + 22, y + 100, -4, 4.8 + abs(sin(specialcontimer / 4) / 2), 0, c_red, flamealpha);
	draw_sprite_ext(spr_bhero, 11 - flameframe, x + 22, y + 100, -4, 4.8, 0, c_orange, flamealpha / 2);
}
reticletimer++;
draw_sprite_ext(spr_baseball_reticle, 0, x, y, 8, 8, image_angle * -1, c_white, (reticletimer - 100) / 7);
