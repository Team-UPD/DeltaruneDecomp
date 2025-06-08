scr_enemy_object_init();
talkmax = 90;
image_speed = 0.16666666666666666;
idlesprite = spr_virovirokun_idle;
hurtsprite = spr_virovirokun_hurt;
sparedsprite = spr_virovirokun_spared;
explosion = -4;
omawaroid_battle = false;
omawaroid_battle_init = false;
noelle_special = 0;
noelle_splat = 0;
noelle_special_con = 0;
viro_talk = 0;
init = 0;
nise_noelle = -1000;
noelle_fall = false;
noelle_fall_timer = 0;
sinerx = 0;
sinery = 0;
siner0 = 0;
siner_add0 = 0.1;
siner_amplitude0 = 0;
siner_direction0 = 0;
siner1 = 0;
siner_add1 = 0.1;
siner_amplitude1 = 0;
siner_direction1 = 90;
if (global.encounterno == 73)
{
	noelle_special = 1;
	global.monstermaxhp[0] = 90;
	global.monsterhp[0] = 90;
}
