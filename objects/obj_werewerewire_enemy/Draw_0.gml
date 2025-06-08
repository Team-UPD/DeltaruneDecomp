if (state == 3)
{
	scr_enemyhurt_tired_after_damage(0.5);
	scr_enemy_drawhurt_generic();
}
if (stop_anim == 0)
{
	siner_timer += image_speed;
	if (siner_timer >= 1)
	{
		siner_timer -= 1;
		siner += 8;
	}
	var addvalue = sin(siner / (34 / m)) / (4 / m);
	if (abs(addvalue) >= 0.2)
		anim_timer_2 += addvalue;
}
if (state == 0)
{
	fsiner += 1;
	if (stop_anim == 0)
		draw_monster_body_part(idlesprite, anim_timer_2, x, y);
	else
		draw_self();
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
