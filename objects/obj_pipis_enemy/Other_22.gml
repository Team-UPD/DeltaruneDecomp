global.monsterx[myself] = x + (sprite_width / 2);
global.monstery[myself] = y + (sprite_height / 2);
scr_monstersetup();
mspipis = round(random(100));
if (mspipis == 1)
{
	idlesprite = spr_pipis_egg_ribbon;
	hurtsprite = spr_pipis_egg_ribbon;
	sparedsprite = spr_pipis_egg_ribbon;
	global.monstername[myself] = stringsetloc("Ms. Pipis", "obj_pipis_enemy_slash_Other_22_gml_21_0");
}
