timer = 0;
width = 1;
vineid = obj_spamton_neo_enemy.vineid;
hide = 0;
x1 = x;
x2 = x;
y1 = y;
y2 = y;
x3 = x;
x4 = x;
y3 = y;
y4 = y;
depth = obj_spamton_neo_enemy.depth + 5;
a = 0;
selected_vine = 0;
var c = irandom(17);
var d = 0;
var e = 0;
while (d == 0)
{
	if (obj_spamton_neo_enemy.partvisible_back[c] == 1)
	{
		a = c;
		obj_spamton_neo_enemy.partvisible_back[c] = 0;
		selected_vine = c;
		x1 = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx_back[a] + obj_spamton_neo_enemy.partxoff_back[a] + (sin(obj_spamton_neo_enemy.partsiner_back[a] / 30) * 2);
		x2 = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx_back[a] + obj_spamton_neo_enemy.partxoff_back[a];
		y1 = obj_spamton_neo_enemy.y + obj_spamton_neo_enemy.party_back[a] + obj_spamton_neo_enemy.partyoff_back[a];
		y2 = -400;
		d = 1;
	}
	else
	{
		c++;
		if (c > 17)
			c = 0;
		e++;
		if (e > 18)
		{
			instance_destroy();
			exit;
		}
	}
}
x3 = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[vineid] + (obj_spamton_neo_enemy.partxoff[vineid] / 1.2) + (vineid * 5) + (sin(obj_spamton_neo_enemy.partsiner[vineid] / 30) * 2);
x4 = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[vineid] + (obj_spamton_neo_enemy.partxoff[vineid] / 1.5) + (vineid * 8);
y3 = ((obj_spamton_neo_enemy.y + obj_spamton_neo_enemy.party[vineid]) - 10) + obj_spamton_neo_enemy.partyoff[vineid];
y4 = -400;
