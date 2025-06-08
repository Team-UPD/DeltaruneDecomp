if (init == 0)
{
	whipball.quizmode = quizmode;
	whipball.damage = damage;
	whipball.target = target;
	init = 1;
	depth = global.monsterinstance[creator].depth;
	if (quizmode)
		state = -1;
}
if (quizloop && state == -1)
{
	quizloop = false;
	state = 0;
}
if (state == -1)
{
	if (lastState != -1)
	{
		timer = 0;
		attacktimer = 0;
		visible = 0;
		global.monsterinstance[creator].visible = 1;
		lastState = -1;
	}
	exit;
}
if (lastState == -1 && state != -1)
{
	visible = 1;
	global.monsterinstance[creator].visible = 0;
	lastState = state;
}
truetimer++;
attacktimer += animSpeed;
if (state == 0 && attacktimer >= 20)
	attacktimer = 19;
if (attacktimer == 5)
{
	if (!quizmode)
	{
		targetx = obj_heart.x + 8;
		targety = obj_heart.y + 8;
	}
	whipball.origx = targetx;
	whipball.origy = targety;
	attackoffset += 45;
}
if (state == 2 && lastState == 1)
{
	lastState = 2;
	attacktimer = 35;
}
if (attacktimer >= 35 && (attacktimer % 5) < 1 && attacktimer <= 45)
{
	var rotation = attackoffset;
	if (difficulty == 1)
		rotation += (((attacktimer / 5) - 7) * 15 * ((attackoffset == 45) ? -1 : 1));
	var balldirection = 0;
	if (rotateCracker)
	{
		var handx = x + xOffset[1];
		var handy = y + yOffset[1];
		balldirection = point_direction(targetx, targety, handx, handy);
	}
	if (!quizmode)
	{
		var loop = (difficulty == 1) ? 8 : 4;
		for (i = 0; i < loop; i++)
		{
			var d = instance_create(targetx, targety, obj_regularbullet);
			d.speed = 0.1;
			d.friction = -0.5;
			d.sprite_index = spr_virovirokun_invaderbullet;
			d.timepoints = 0;
			d.direction = rotation + (((difficulty == 1) ? 45 : 90) * i) + balldirection;
			d.image_angle = d.direction + 90;
		}
	}
}
if (state != lastState)
{
	if (state == 1 && lastState == 2)
	{
		attacktimer = 34;
		timer = animConst * 5;
	}
	if (state == 3)
		attacktimer = 56;
	lastState = state;
}
if (state == 3 && attacktimer >= 59)
{
	timer = animConst;
	state = 4;
	lastState = 4;
}
if (state == 4 && attacktimer >= 65)
{
	whipball.dodraw = 0;
	if (!quizmode)
	{
		targetx = obj_heart.x + 8;
		targety = obj_heart.y + 8;
	}
	whipball.origx = targetx;
	whipball.origy = targety;
	if (quizmode && !quizloop)
	{
		state = -1;
	}
	else
	{
		if (quizloop)
			quizloop = false;
		state = 0;
		lastState = 0;
	}
	attacktimer = 5;
	attackoffset += 45;
}
