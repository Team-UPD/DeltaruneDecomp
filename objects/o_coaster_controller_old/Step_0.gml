if (timer < timermax && buttonspressed <= 5 && instance_exists(obj_berdlyb_enemy))
{
	if (obj_berdlyb_enemy.kriscoaster == 0 && krisgooffscreen == 1)
	{
		if (HeroCoaster[0].x > (camerax() - 120))
		{
			HeroCoaster[0].x -= 10;
			HeroCoaster[0].gooffscreen = 1;
		}
	}
	if (obj_berdlyb_enemy.suscoaster == 0 && susiegooffscreen == 1)
	{
		if (HeroCoaster[1].x > (camerax() - 120))
		{
			HeroCoaster[1].x -= 10;
			HeroCoaster[1].gooffscreen = 1;
		}
	}
	if (obj_berdlyb_enemy.ralcoaster == 0 && ralseigooffscreen == 1)
	{
		if (HeroCoaster[2].x > (camerax() - 120))
		{
			HeroCoaster[2].x -= 10;
			HeroCoaster[2].gooffscreen = 1;
		}
	}
}
if (timer > timermax && buttonspressed > 5)
{
	if (HeroCoaster[0].x < HeroCoaster[0].xstart && HeroCoaster[0].gooffscreen == 1)
		HeroCoaster[0].x += 30;
	if (HeroCoaster[1].x < HeroCoaster[1].xstart && HeroCoaster[1].gooffscreen == 1)
		HeroCoaster[1].x += 30;
	if (HeroCoaster[2].x < HeroCoaster[2].xstart && HeroCoaster[2].gooffscreen == 1)
		HeroCoaster[2].x += 30;
	if (HeroCoaster[0].x > HeroCoaster[0].xstart && HeroCoaster[0].gooffscreen == 1)
		HeroCoaster[0].x = HeroCoaster[0].xstart;
	if (HeroCoaster[1].x > HeroCoaster[1].xstart && HeroCoaster[1].gooffscreen == 1)
		HeroCoaster[1].x = HeroCoaster[1].xstart;
	if (HeroCoaster[2].x > HeroCoaster[2].xstart && HeroCoaster[2].gooffscreen == 1)
		HeroCoaster[2].x = HeroCoaster[2].xstart;
}
if (playerinputtimer < 12 || actcon == 1)
	playerinputtimer++;
if (playerinputtimer == 150)
	playerinput = 1;
if (playerinput == 1)
	timer++;
if (buttonspressed <= 5 && timer > (timermax - 2))
	timer = timermax - 2;
if (o_coaster_berdly.forceypos != -1 && buttonspressed > 2 && buttonspressed < 6)
{
	buttonspressed = 6;
	if (timer < timermax)
		timer = timermax;
}
if (timer >= timermax && buttonspressed > 5)
{
	with (o_coaster_lightning)
		instance_destroy();
	with (o_coaster_jama)
		instance_destroy();
	with (obj_berdlyparticle)
		instance_destroy();
	with (o_coastersmoke)
		instance_destroy();
	with (obj_writer)
		instance_destroy();
	if (timer >= (timermax + 10))
	{
		krisgooffscreen = 0;
		susiegooffscreen = 0;
		ralseigooffscreen = 0;
		HeroCoaster[0].gooffscreen = 0;
		HeroCoaster[1].gooffscreen = 0;
		HeroCoaster[2].gooffscreen = 0;
		with (o_coaster_hero)
			forceact = 0;
		if (HeroCoaster[0].con == 0 && HeroCoaster[1].con == 0 && HeroCoaster[2].con == 0)
		{
			buttonspressed = 0;
			with (obj_berdlyb_enemy)
			{
				bumpwait = 1;
				alarm[7] = 60;
				acting = 0;
				actcon = 1;
				actconsus = 0;
				actconral = 0;
				rideactgo = 0;
				bumpactstarted = 0;
				with (o_coaster_hero)
				{
					dontshowherosprite = 30;
					draw_button_press = 0;
				}
				if (global.mercymod[myself] < global.mercymax[myself])
					scr_mercyadd(myself, o_coaster_controller.bumpmercy);
				if (global.mercymod[myself] >= 100)
					event_user(10);
			}
			bumpmercy = 0;
			actcon = 0;
		}
	}
}
