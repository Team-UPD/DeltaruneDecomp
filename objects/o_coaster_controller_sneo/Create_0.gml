timer = 0;
timermax = 180;
playerinput = 0;
playerinputtimer = 0;
actcon = 0;
krisgooffscreen = 0;
susiegooffscreen = 0;
ralseigooffscreen = 0;
buttonspressed = 0;
bumpmercy = 0;
mykey[0] = 90;
mykey[1] = 88;
mykey[2] = 67;
for (i = 0; i < 3; i += 1)
{
	HeroCoaster[i] = instance_create(0, 0, o_coaster_hero_sneo);
	HeroCoaster[i].HeroID = i;
	HeroCoaster[i].image_index = i;
	HeroCoaster[i].depth = HeroCoaster[i].y * -100;
	HeroCoaster[i].siner = 0;
	HeroCoaster[i].mykey = mykey[i];
	with (HeroCoaster[i])
	{
		back = instance_create(x, y, o_coaster_hero_back_sneo);
		back.parentid = id;
		back.depth = depth + 2;
	}
	yspot[i] = HeroCoaster[i].y;
}
