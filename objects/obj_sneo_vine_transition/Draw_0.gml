timer++;
width += (1/30);
x3 = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[vineid] + (obj_spamton_neo_enemy.partxoff[vineid] / 1.2) + (vineid * 5) + (sin(obj_spamton_neo_enemy.partsiner[vineid] / 30) * 2);
x4 = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[vineid] + (obj_spamton_neo_enemy.partxoff[vineid] / 1.5) + (vineid * 8);
if (global.myfight != 3 && global.monsterattackname[obj_spamton_neo_enemy.myself] == "UnspecifiedSneoAttack")
	x1 = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx_back[a] + obj_spamton_neo_enemy.partxoff_back[a] + (sin(obj_spamton_neo_enemy.partsiner_back[a] / 30) * 2);
y1 = obj_spamton_neo_enemy.y + obj_spamton_neo_enemy.party_back[a] + obj_spamton_neo_enemy.partyoff_back[a];
repeat (2)
{
	if (x1 < (x3 - 1))
		x1 += 1;
	if (x2 < (x3 - 1))
		x2 += 1;
	if (x1 > (x3 + 1))
		x1 -= 1;
	if (x2 > (x3 + 1))
		x2 -= 1;
}
if (timer >= 31)
{
	obj_spamton_neo_enemy.partvisible[vineid] = 1;
	obj_spamton_neo_enemy.partweakened[vineid] = 0;
	if (obj_spamton_neo_enemy.extra_vines > 0)
	{
		for (ii = 0; ii < 18; ii += 1)
		{
			if (obj_spamton_neo_enemy.partvisible_back[ii] == 0 && obj_spamton_neo_enemy.extra_vines > 0)
			{
				obj_spamton_neo_enemy.extra_vines--;
				obj_spamton_neo_enemy.partvisible_back[ii] = 1;
				obj_spamton_neo_enemy.vinebgcount++;
			}
		}
	}
	instance_destroy();
}
if (hide == 1)
	exit;
draw_set_color(c_green);
draw_line_width(x1, y1, x2, y2, width);
draw_set_alpha((31 - timer) / 30);
draw_set_color(make_colour_rgb(0, 51, 0));
draw_line_width(x1, y1, x2, y2, width);
draw_set_alpha(1);
