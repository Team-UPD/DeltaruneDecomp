siner += 1;
if (on >= 1 && on <= 4)
{
	if (on == 1 && special == 1)
		special = 2;
	if (on == 1 || on == 2 || on == 3)
	{
		if (onion_blue_alpha < 1)
			onion_blue_alpha += 0.05;
	}
	draw_sprite_ext(spr_onionblue, 0, x, y, 0.1 + onion_blue_alpha + (sin(siner / 4) * 0.05), onion_blue_alpha + (sin(siner / 4) * 0.05), 0, c_white, onion_blue_alpha);
}
if (on == 2 || on == 3 || on == 4)
{
	if (global.flag[20] == 0)
		onionsprite = spr_onionsan_kawaii;
	if (global.flag[20] == 1)
		onionsprite = spr_onionsan_yhear;
	if (global.flag[20] == 2)
		onionsprite = spr_onionsan_wistful;
	if (global.flag[20] == 3)
		onionsprite = spr_onionsan_disappoint;
	if (global.flag[20] == 4)
		onionsprite = spr_onionsan_sing;
	if (global.flag[20] == 5)
		onionsprite = spr_onionsan_menace;
	draw_sprite_part(onionsprite, floor(siner / 6), 0, 0, 63, floor(onionh), x - 32, y - floor(onionh));
	if (on == 2 || on == 3)
	{
		if (onionh < 63)
			onionh += 0.5;
	}
	if (on == 4)
	{
		if (onionh > 0)
			onionh -= 0.5;
		else if (onion_blue_alpha > 0)
			onion_blue_alpha -= 0.05;
	}
}
