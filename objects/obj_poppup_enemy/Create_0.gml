scr_enemy_object_init();
talkmax = 90;
image_speed = 0.16666666666666666;
idlesprite = spr_poppup_idle;
hurtsprite = spr_poppup_hurt;
sparedsprite = spr_poppup_spared;
becameTired = false;
becameSpareable = false;
cloning = false;
cloneTimer = 0;
staticOwner = false;
staticPoppup = 0;
animspeed = 0.16666666666666666;
clonedirection = 210;
blockbuffer = 0;
for (var i = 0; i < 3; i++)
{
	for (var j = 0; j < 6; j++)
	{
		staticX[i][j] = random_range(400, 600);
		staticY[i][j] = random_range(10, 280);
	}
}
blockTimer = false;
blockAds = 0;
blocked = 0;
mercytotal = 0;
popupscreated = 0;
poppupwait = 0;
allblocked = 0;
avoiding = false;
