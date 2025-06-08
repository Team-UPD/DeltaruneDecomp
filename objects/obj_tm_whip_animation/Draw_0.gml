if (state == 0)
{
	if (timer >= (animConst * 2.5))
		timer += 0.25;
	else
		timer += (1.5 * animSpeed);
	if (timer >= (animConst * 3))
		timer = animConst * 3;
}
else if (state == 1)
{
	timer += (8 * animSpeed);
	if (timer >= (animConst * 5))
		timer = animConst * 5;
}
else if (state == 2)
{
	if (timer >= (animConst * 5) && zapping)
		timer -= 1.5;
	else
		timer = animConst * 5;
}
else if (state == 4)
{
	if (timer >= (animConst * 2.5))
		timer += (0.25 * animSpeed);
	else
		timer += (1.5 * animSpeed);
	if (timer >= (animConst * 3))
		timer = animConst * 3;
}
var otherHandSprite = sprite[4];
draw_sprite_ext(otherHandSprite, 0, x + xOffset[4] + (sin(timer / 6) * 2), y + yOffset[4] + (sin(timer / 6) * 2), 2, 2, 0, c_white, 1);
var tailsprite = sprite[2];
draw_sprite_ext(tailsprite, 0, x + xOffset[2], y + yOffset[2], 2, 2, -sin(timer / 6) * 10, c_white, 1);
var handSprite = (attacktimer < 20) ? spr_tm_hand_l : sprite[3];
var handdir = point_direction(xOffset[1], yOffset[1], xOffset[3], yOffset[3]);
var handlength = point_distance(xOffset[1], yOffset[1], xOffset[3], yOffset[3]);
var handx = xOffset[1] + lengthdir_x(handlength, (handdir - 45) + (sin(timer / 6) * 50));
var handy = yOffset[1] + lengthdir_y(handlength, (handdir - 45) + (sin(timer / 6) * 30));
var rot1 = (state == 0) ? -45 : 0;
var rot2 = (state == 0) ? 45 : 90;
var whipimage = 0;
if (state == 0)
{
	handSprite = spr_tm_whip_ready;
	if (timer >= (animConst * 2.5))
		whipimage = 4;
	else if (timer >= (animConst * 2))
		whipimage = 2;
}
if (state == 1)
{
	if (timer < (animConst * 5))
	{
		handx = xOffset[1] + lengthdir_x(handlength, (handdir - 45) + (sin((animConst * 5) / 6) * 50));
		handy = yOffset[1] + lengthdir_y(handlength, (handdir - 45) + (sin((animConst * 5) / 6) * 30));
	}
	if (timer < (animConst * 4))
		handSprite = spr_tm_whip_smear;
	draw_sprite_ext(handSprite, 0, x + handx + (cos((animConst * 5) / 6) * 2), y + handy + (sin((animConst * 5) / 6) * 2), 2, 2, point_direction(x + handx + (cos((animConst * 5) / 6) * 2), y + handy + (sin((animConst * 5) / 6) * 2), targetx, targety) - 90, c_white, 1);
}
else if (state != 2 && !(state == 3 && attacktimer > 55))
{
	draw_sprite_ext(handSprite, whipimage, x + handx + (cos(timer / 6) * 2), y + handy + (sin(timer / 6) * 2), 2, 2, rot1 + (sin((timer - 2) / 6) * rot2), c_white, 1);
}
var legSprite = sprite[5];
draw_sprite_ext(legSprite, 0, x + xOffset[5] + (sin(timer / 6) * 0), y + yOffset[5], 2, 2, 0, c_white, 1);
var bodySprite = sprite[1];
draw_sprite_ext(bodySprite, 0, x + xOffset[1], y + yOffset[1] + (sin(timer / 6) * 2), 2, 2, 0, c_white, 1);
var headSprite = sprite[0];
draw_sprite_ext(headSprite, 0, x + xOffset[0], y + yOffset[0] + (sin(timer / 6) * 3), 2, 2, sin(timer / 6) * 10, c_white, 1);
if (!quizmode && attacktimer >= 5 && attacktimer <= 20 && global.turntimer > 30)
{
	if (difficulty == 1)
		whipball.warnoffset = 6;
	else
		whipball.warnoffset = ((attackoffset % 90) == 0) ? 0 : 3;
	whipball.warning = attacktimer - 4;
}
if (attacktimer > 20)
{
	whipball.warning = 0;
	handx = x + handx + (cos(timer / 6) * 2);
	handy = y + handy + (sin(timer / 6) * 2);
}
if (attacktimer > 20 && attacktimer < 30)
{
	whipball.dodraw = 1;
	var invlerp = scr_inverselerp(15, 30, attacktimer);
	var xlerp = lerp(handx, targetx, invlerp);
	var ylerp = lerp(handy, targety, invlerp);
	var linkdir = point_direction(handx, handy, targetx, targety);
	whipball.origx = handx;
	whipball.origy = handy;
	for (i = 1; i < 6; i++)
		draw_sprite_ext(spr_whitepixel, 0, lerp(handx, xlerp, i / 12), lerp(handy, ylerp, i / 12), 12, 2, linkdir, c_white, 1);
	whipball.x = xlerp;
	whipball.y = ylerp;
	whipball.image_angle = attackoffset + (invlerp * 720);
}
if (attacktimer >= 30 && attacktimer <= 55)
{
	whipball.dodraw = 1;
	var linkdir = point_direction(handx, handy, targetx, targety);
	whipball.origx = handx;
	whipball.origy = handy;
	for (i = 1; i < 6; i++)
		draw_sprite_ext(spr_whitepixel, 0, lerp(handx, targetx, i / 12), lerp(handy, targety, i / 12), 12, 2, linkdir, c_white, 1);
	if (state == 2)
		draw_sprite_ext(handSprite, 0, handx, handy, 2, 2, point_direction(handx, handy, targetx, targety) - 90, c_white, 1);
	whipball.x = targetx;
	whipball.y = targety;
	whipball.image_angle = attackoffset - 45;
}
if (attacktimer > 55)
{
	var invlerp = scr_inverselerp(65, 55, attacktimer);
	var xlerp = lerp(handx, targetx, invlerp);
	var ylerp = lerp(handy, targety, invlerp);
	whipball.origx = handx;
	whipball.origy = handy;
	var linkdir = point_direction(handx, handy, targetx, targety);
	for (i = 1; i < 6; i++)
		draw_sprite_ext(spr_whitepixel, 0, lerp(handx, xlerp, i / 12), lerp(handy, ylerp, i / 12), 12, 2, linkdir, c_white, 1);
	if (state == 2 || state == 3)
		draw_sprite_ext(handSprite, 0, handx, handy, 2, 2, point_direction(handx, handy, targetx, targety) - 90, c_white, 1);
	whipball.x = xlerp;
	whipball.y = ylerp;
	whipball.image_angle = attackoffset + (invlerp * 720);
}
