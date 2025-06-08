init = 0;
difficulty = 0;
currentturn = 0;
turns = 1;
manualturns = false;
letters[0] = 0;
turnspeed = 30;
lastletter = -1;
state = 0;
timer = 0;
voiceclips[0] = snd_tm_quiz_a;
voiceclips[1] = snd_tm_quiz_b;
voiceclips[2] = snd_tm_quiz_c;
voiceclips[3] = snd_tm_quiz_d;
canrepeat = true;
creator = 0;
damage = -1;
target = -1;
animator = -4;
if (instance_exists(obj_tm_whip_animation))
{
	animator = 460;
}
else
{
	animator = instance_create(x, y, obj_tm_whip_animation);
	animator.visible = 0;
	animator.state = -1;
}
nextdifficulty = false;
dojo = false;
restart = false;
rounds = 0;
