if (init == 0)
{
	whipball.quizmode = quizmode;
	init = 1;
}
truetimer++;
attacktimer++;
if (state == 0 && attacktimer >= 20)
{
	if (global.turntimer > 30)
		state = 1;
	else
		attacktimer = 19;
}
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
if (state == 1 && attacktimer >= 35)
	state = 2;
if (attacktimer >= 35 && (attacktimer % 5) == 0 && attacktimer <= 45)
{
	var rotation = attackoffset;
	var balldirection = 0;
	if (rotateCracker)
	{
		var handx = x + xOffset[1];
		var handy = y + yOffset[1];
		balldirection = point_direction(targetx, targety, handx, handy);
	}
	if (!quizmode)
	{
		for (i = 0; i < 4; i++)
		{
			var d = instance_create(targetx, targety, obj_regularbullet);
			d.speed = 0.1;
			d.friction = -0.5;
			d.sprite_index = spr_virovirokun_invaderbullet;
			d.timepoints = 0;
			d.direction = rotation + (90 * i) + balldirection;
			d.image_angle = d.direction + 90;
		}
	}
}
if (state == 2 && attacktimer > 55)
	state = 3;
if (state == 3 && attacktimer >= 59)
{
	timer = animConst;
	state = 4;
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
	attacktimer = 5;
	state = 0;
	attackoffset += 45;
}
