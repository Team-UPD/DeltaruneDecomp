scr_enemy_object_init();
talkmax = 90;
image_speed = 0.16666666666666666;
hurtsprite = spr_tm_hurt;
timer = 0;
sprite[0] = spr_tm_head;
sprite[1] = spr_tm_body;
sprite[2] = spr_tm_tail;
sprite[3] = spr_tm_hand_l;
sprite[4] = spr_tm_hand_r;
sprite[5] = spr_tm_legs;
sparesprite[0] = spr_tm_head_spare;
sparesprite[1] = spr_tm_body_spare;
sparesprite[2] = spr_tm_tail_spare;
sparesprite[3] = spr_tm_hand_l_spare;
sparesprite[4] = spr_tm_hand_r_spare;
sparesprite[5] = spr_tm_legs_spare;
sparedsprite = spr_npc_tasquemanager;
for (i = 0; i < 6; i += 1)
{
	xOffset[i] = (sprite_get_xoffset(sprite[i]) * 2) - 22;
	yOffset[i] = (sprite_get_yoffset(sprite[i]) * 2) - 6;
}
timesOrdered = 0;
timesCharged = 0;
balloon = -4;
timesTrained = 0;
treatText = false;
badgeText = false;
quizDifficulty = 0;
overrideAttack = 0;
tailcheck = false;
knifecheck = false;
lastQuizLetter = 0;
init = 0;
violenceused = 0;
violenceusedcon = 0;
hitbysimonsaysattackcount = 0;
simonsayscon = 0;
