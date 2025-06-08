image_speed = 0;
mask_index = spr_coaster_berdly;
visible = false;
damagecon = 0;
damagetimer = 0;
invincible = 0;
siner = 0;
image_xscale = 2;
image_yscale = 2;
xshake = 0;
yshake = 0;
shaketimer = 0;
smoketimer = 0;
smokestart = 0;
depth = obj_berdlyb_enemy.depth + 1;
endscene = 0;
endscenetimer = 0;
movetimer = 59;
movethreshold = 60;
movebuffer = 0;
moveframes = 6;
movecon = -1;
idealy = -900;
kiss = 1;
forceypos = -1;
calculated = 0;
premonition = 0;
drawpremonition = 1;
if (obj_berdlyb_enemy.premonition > 0)
{
	premonition = 1;
	drawpremonition = 1;
}
else
{
	drawpremonition = 0;
}
knocked = 0;
knockedtimer = 0;
knockedhits = 0;
premy = y;
ycount = 0;
for (i = 0; i < 12; i++)
	nexty[i] = -1;
pick = floor(random(6));
for (i = 0; i < 2; i++)
{
	while (nexty[pick] != -1)
		pick = floor(random(6));
	nexty[pick] = i;
}
for (j = 0; j < 6; j++)
{
	if (nexty[j] == -1)
		nexty[j] = choose(0, 1, 2);
}
pick = floor(random(6) + 6);
for (i = 0; i < 2; i++)
{
	while (nexty[pick] != -1)
		pick = floor(random(6) + 6);
	nexty[pick] = i;
}
for (j = 6; j < 12; j++)
{
	if (nexty[j] == -1)
		nexty[j] = choose(0, 1, 2);
}
queenmode = 0;
init = 0;
mode = 0;
with (obj_berdlyb_enemy)
{
	if (global.mercymod[myself] > 50)
		o_coaster_berdly.mode = 1;
}
modetimer = 0;
movetype = 0;
movesiner = 0;
xx = 0;
