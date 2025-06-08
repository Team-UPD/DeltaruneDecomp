drawblack = 2;
drawtrack = 1;
trackx = 0;
tracky0 = 180;
tracky1 = 240;
tracky2 = 300;
fightmode = 0;
trackspeed = 0;
trackaccel = 0;
trackspeedmax = 0;
cityscapefade = 0;
cityscape_active = false;
cityscape_speed = 0;
cityscape_alpha = 0;
init = 0;
con = -1;
customcon = 0;
timer = 0;
sneo_x_save = 0;
sneo_y_save = 0;
shortened = false;
special_scene = false;
rudebuster = false;
sneo_fly = false;
sneo_release = false;
forcend = 0;
shop_spamton_bg_con = 0;
shop_spamton_bg_timer = 0;
cityscape_speed_max = 5;
if (global.chapter != 2 || global.flag[309] < 8)
{
}
else
{
	if (global.tempflag[32] == 1)
		shortened = true;
	start_xpos = shortened ? (x + 100) : x;
	con = 1;
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	coaster_marker_kris = scr_dark_marker(0, cameray() - 500, spr_sneo_car_empty);
	with (coaster_marker_kris)
		scr_depth();
	coaster_marker_ra = scr_dark_marker(0, cameray() - 500, spr_sneo_car_empty);
	with (coaster_marker_ra)
		scr_depth();
	coaster_marker_su = scr_dark_marker(0, cameray() - 500, spr_sneo_car_empty);
	with (coaster_marker_su)
		scr_depth();
	coaster_kris = instance_create(0, cameray() - 500, obj_coaster);
	coaster_kris.depth = 90000;
	coaster_kris.visible = 0;
	coaster_susie = instance_create(0, cameray() - 500, obj_coaster);
	coaster_susie.type = 1;
	coaster_susie.depth = 80000;
	coaster_susie.character_sprite = spr_susie_shock;
	coaster_susie.visible = 0;
	coaster_ralsei = instance_create(0, cameray() - 500, obj_coaster);
	coaster_ralsei.type = 2;
	coaster_ralsei.depth = 70000;
	coaster_ralsei.character_sprite = spr_ralsei_hurt_fixed;
	coaster_ralsei.visible = 0;
	loop_tiles = false;
	bg_loop = layer_get_id("BG_Loop");
	whiteall = scr_dark_marker(-10, -10, spr_pixel_white);
	whiteall.image_xscale = 999;
	whiteall.image_yscale = 999;
	whiteall.depth = 0;
	whiteall.image_alpha = 0;
}
