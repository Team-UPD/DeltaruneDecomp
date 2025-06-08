if (endcoaster == 0)
{
	if (obj_berdlyb_enemy.kriscoaster == 0 && krisgooffscreen == 1)
	{
	}
	if (obj_berdlyb_enemy.suscoaster == 0 && susiegooffscreen == 1)
	{
	}
	if (obj_berdlyb_enemy.ralcoaster == 0 && ralseigooffscreen == 1)
	{
	}
}
if (endcoaster == 1)
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
if (obj_berdlyb_enemy.bumpactstarted == 1 && obj_berdlyb_enemy.ralseigo == 0 && obj_berdlyb_enemy.susiego == 0 && obj_berdlyb_enemy.krisgo == 0 && o_coaster_berdly.movecon == 0)
	endcoaster = 1;
if (endcoaster == 1)
{
	with (o_coastersmoke)
		instance_destroy();
	with (obj_writer)
		instance_destroy();
	endcoastertimer = 20;
	if (endcoastertimer == 20)
	{
		endcoaster = 0;
		endcoastertimer = 0;
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
				alarm[7] = 10;
				acting = 0;
				actcon = 1;
				actconsus = 0;
				actconral = 0;
				rideactgo = 0;
				bumpactstarted = 0;
				bumpactfast = 0;
				with (o_coaster_hero)
					draw_button_press = 0;
				if (global.mercymod[myself] < global.mercymax[myself])
					scr_mercyadd(myself, o_coaster_controller.bumpmercy);
				if (global.mercymod[myself] >= 100)
					endcon = 1;
			}
			bumpmercy = 0;
			actcon = 0;
		}
	}
}
