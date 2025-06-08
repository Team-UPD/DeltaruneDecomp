with (obj_darkcontroller)
	charcon = 0;
global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
if (image_index == 0)
{
	snd_play(snd_locker);
	if (room != room_dw_city_postbaseball_1)
	{
		for (var i = 0; i < 5; i++)
		{
			bug[i] = instance_create(x + 20, y + 20, obj_tinybug);
			bug[i].direction = random(180);
			bug[i].speed = random(2) + 4;
			bug[i].sprite_index = spr_tinybug;
			bug[i].depth = depth - 1;
		}
	}
	else
	{
		for (var i = 0; i < 10; i++)
		{
			bug[i] = instance_create(x, y, obj_cybercity_balloon);
			bug[i].vspeed = -2 + random(1);
			bug[i].hspeed = random_range(-3, 3);
			bug[i].friction = 0.1;
			bug[i].gravity = -0.12;
			bug[i].mode = 1;
			bug[i].depth = 5000;
			bug[i].sprite_index = spr_bg_city_balloon_white;
			bug[i].image_blend = make_color_hsv(floor(random(255)), 190, 255);
			bug[i].blend = c_black;
			bug[i].image_xscale = 1;
			bug[i].image_yscale = 1;
		}
		with (obj_room_dw_city_postbaseball)
			rodeteacup = 5;
	}
}
image_index = 1;
myinteract = 1;
global.interact = 0;
