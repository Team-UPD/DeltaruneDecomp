global.interact = 2;
if (global.flag[9] == 1)
	snd_volume(global.currentsong[1], 0, 20);
scr_encountersetup(global.encounterno);
with (obj_mainchara)
	visible = 0;
with (global.cinstance[0])
	visible = 0;
with (global.cinstance[1])
	visible = 0;
count = 0;
c[0] = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisr_dark);
if (instance_exists(global.cinstance[0]))
{
	count += 1;
	c[1] = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, global.cinstance[0].rsprite);
	if (global.cinstance[0].rsprite == spr_susier_dark)
		c[1].sprite_index = spr_susier_wall;
}
if (instance_exists(global.cinstance[1]))
{
	count += 1;
	c[2] = scr_dark_marker(global.cinstance[1].x, global.cinstance[1].y, global.cinstance[1].rsprite);
	if (global.cinstance[1].rsprite == spr_susier_dark)
		c[2].sprite_index = spr_susier_wall;
}
for (i = 0; i < (count + 1); i += 1)
{
	c[i].direction = point_direction(c[i].x, c[i].y, global.heromakex[i], global.heromakey[i]);
	c[i].speed = point_distance(c[i].x, c[i].y, global.heromakex[i], global.heromakey[i]) / 10;
	c[i].depth = 200 - (i * 20);
}
fightcon = 1;
counttimer = 0;
