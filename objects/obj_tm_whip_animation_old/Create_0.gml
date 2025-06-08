state = 0;
lastState = 0;
creator = 0;
animConst = 9.42477796076938;
timer = animConst * 2;
attacktimer = 0;
truetimer = 0;
animSpeed = 1;
sprite[0] = spr_tm_head;
sprite[1] = spr_tm_body;
sprite[2] = spr_tm_tail;
sprite[3] = spr_tm_hand_l_attack;
sprite[4] = spr_tm_hand_r;
sprite[5] = spr_tm_legs;
for (i = 0; i < 6; i += 1)
{
	xOffset[i] = sprite_get_xoffset(sprite[i]) * 2;
	yOffset[i] = sprite_get_yoffset(sprite[i]) * 2;
}
targetx = obj_heart.x;
targety = obj_heart.y;
rotateCracker = 0;
attackoffset = choose(0, 45);
whipball = instance_create(x, y, obj_tm_whip);
quizmode = false;
quizloop = false;
init = 0;
damage = -1;
target = -1;
difficulty = 0;
