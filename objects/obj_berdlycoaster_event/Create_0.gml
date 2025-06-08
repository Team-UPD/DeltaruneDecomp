con = 0;
timer = 0;
y = cameray() + 480;
x = camerax() - 140;
for (i = 0; i < 20; i++)
{
	coasterSiner[i] = i * 2;
	coasterImageSpeed[i] = 0.25;
	coasterX[i] = 0;
	coasterY[i] = 0;
	coasterXscale[i] = 2;
	coasterSprite[i] = spr_whitepixel;
	coasterVisible[i] = 1;
	coasterImageIndex[i] = 0;
	coasterRecruitID[i] = 0;
	coasterCarVisible[i] = true;
}
coasterSprite[0] = spr_cutscene_26_berdly_left;
coasterX[0] = 0;
coasterY[0] = 0;
coasterX[1] = 0;
coasterY[1] = 0;
coasterImageSpeed[1] = 0;
coasterX[2] = 0;
coasterY[2] = 0;
coasterImageSpeed[2] = 0;
coasterX[3] = 0;
coasterY[3] = 0;
coasterImageSpeed[3] = 0;
coasterSprite[4] = spr_sweet_dance;
coasterXscale[4] = -2;
coasterX[4] = 0;
coasterY[4] = 0;
coasterSprite[5] = spr_hatguy_dance;
coasterX[5] = 0;
coasterY[5] = 0;
coasterSprite[6] = spr_kk_static;
coasterXscale[6] = -2;
coasterX[6] = 20;
coasterY[6] = 0;
coasterSprite[7] = spr_rouxls_stone_origin;
coasterX[7] = 36;
coasterY[7] = 120;
coasterImageSpeed[7] = 0;
coasterImageIndex[7] = 6;
coasterSprite[8] = spr_omawaroid_idle;
coasterXscale[8] = -2;
coasterX[8] = 0;
coasterY[8] = 0;
coasterRecruitID[8] = 30;
coasterSprite[9] = spr_poppup_idle;
coasterXscale[9] = -2;
coasterX[9] = 0;
coasterY[9] = 5;
coasterRecruitID[9] = 31;
coasterSprite[10] = spr_tasque_idle;
coasterXscale[10] = -2;
coasterX[10] = -10;
coasterY[10] = 0;
coasterRecruitID[10] = 32;
coasterSprite[11] = spr_werewire_idle;
coasterXscale[11] = -2;
coasterX[11] = 0;
coasterY[11] = 40;
coasterRecruitID[11] = 33;
coasterSprite[12] = spr_maus_idle;
coasterXscale[12] = -2;
coasterX[12] = -15;
coasterY[12] = -15;
coasterRecruitID[12] = 34;
coasterSprite[13] = spr_cutscene_26_virovirokun;
coasterXscale[13] = -2;
coasterX[13] = -20;
coasterY[13] = 30;
coasterRecruitID[13] = 35;
coasterSprite[14] = spr_npc_swatchling_down;
coasterXscale[14] = -2;
coasterX[14] = 10;
coasterY[14] = -10;
coasterRecruitID[14] = 36;
coasterSprite[15] = spr_werewerewire_idle;
coasterXscale[15] = -2;
coasterX[15] = 10;
coasterY[15] = 25;
coasterRecruitID[15] = 40;
coasterSprite[16] = spr_npc_tasquemanager;
coasterXscale[16] = -2;
coasterX[16] = 10;
coasterY[16] = 0;
coasterRecruitID[16] = 42;
coasterSprite[17] = spr_mauswheel_idle;
coasterXscale[17] = -2;
coasterX[17] = 5;
coasterY[17] = 0;
coasterRecruitID[17] = 44;
coasterRecruitID[18] = 500;
coasterRecruitID[19] = 900;
if (global.flag[357] == 1)
{
	coasterSprite[18] = spr_cutscene_26_hacker;
	coasterXscale[18] = 2;
	coasterX[18] = 35;
	coasterY[18] = 50;
}
if (global.flag[254] == 1)
{
	coasterSprite[19] = spr_cutscene_26_originalstarwalker;
	coasterXscale[19] = -2;
	coasterX[19] = -30;
	coasterY[19] = 30;
}
for (i = 0; i < 20; i++)
{
	dx[i] = 65 - sprite_get_width(coasterSprite[i]);
	if (coasterXscale[i] != 2)
		dx[i] = 65 + sprite_get_width(coasterSprite[i]);
	dy[i] = (-sprite_get_height(coasterSprite[i]) * 2) + 44;
	if (coasterSprite[i] == spr_whitepixel)
		coasterVisible[i] = 0;
	if (coasterRecruitID[i] > 0)
	{
		coasterVisible[i] = (global.flag[600 + coasterRecruitID[i]] == 1) ? 1 : 0;
		if (coasterRecruitID[i] == 500 && global.flag[357] == 1)
			coasterVisible[i] = 1;
		if (coasterRecruitID[i] == 900)
		{
			coasterVisible[i] = global.flag[254] == 1;
			coasterCarVisible[i] = global.flag[254] == 1;
		}
	}
}
