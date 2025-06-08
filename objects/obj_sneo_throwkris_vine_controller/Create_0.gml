state = 1;
timer = 0;
con = 0;
variant = 0;
depth = obj_spamton_neo_enemy.depth + 1;
for (i = 0; i < 6; i += 1)
{
	x1[i] = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[i] + (obj_spamton_neo_enemy.partxoff[i] / 1.2) + (i * 5) + (sin(obj_spamton_neo_enemy.partsiner[i] / 30) * 2);
	x2[i] = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[i] + (obj_spamton_neo_enemy.partxoff[i] / 1.5) + (i * 8);
	y1[i] = ((obj_spamton_neo_enemy.y + obj_spamton_neo_enemy.party[i]) - 10) + obj_spamton_neo_enemy.partyoff[i];
	y2[i] = -400;
	x2_target[i] = x2[i];
	x2_origin[i] = x2[i];
	visiblevine[i] = obj_spamton_neo_enemy.partvisible[i];
	weakened[i] = obj_spamton_neo_enemy.partweakened[i];
	obj_spamton_neo_enemy.partvisible[i] = 0;
}
if (variant == 0)
{
	for (i = 0; i < 6; i += 1)
		x2_target[i] = (obj_spamton_neo_enemy.x - 300) + (i * 130);
}
var a = x2_target[3];
x2_target[3] = x2_target[4];
x2_target[4] = a;
