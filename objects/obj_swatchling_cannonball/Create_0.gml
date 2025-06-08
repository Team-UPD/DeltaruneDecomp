scr_bullet_init();
phase = 0;
trackplayer = 0;
bouncepower = 1;
if (trackplayer != 0)
	bouncepower = 1.25;
jumppeak = cameray() + 50;
nexttarget = (obj_growtangle.x - ((obj_growtangle.maxxscale * 75) / 2)) + random(obj_growtangle.maxxscale * 75);
currentrotation = 0;
animTimer = 0;
animspeed = 3;
animindex = 0;
bouncespecial = 0;
bouncepoint = (obj_growtangle.y + ((obj_growtangle.maxyscale * 75) / 2)) - 10;
destroyonhit = 0;
creator = 0;
defaultdepth = 0;
spawnbullets = 1;
bullettype = 0;
if (obj_swatchling_battle_controller.red_count > 0)
	bullettype = 1;
heart_found = false;
