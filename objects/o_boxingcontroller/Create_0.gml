if (room == room_dw_cyber_queen_boxing)
	arcade = 1;
else
	arcade = 0;
room_speed = 30;
depth = 7;
c = 250;
f = 2;
wireframe_boxing = 0;
if (room == room_dw_cyber_queen_boxing)
	wireframe_boxing = 1;
if (wireframe_boxing == 0)
{
	health_count = global.hp[1];
	health_count_max = global.maxhp[1];
}
else
{
	health_count = 500;
	health_count_max = 500;
}
disable_queen_blocking = 1;
dodge_string = stringsetsubloc("DODGE with ~1 or ~2!", scr_get_input_name(3), scr_get_input_name(1), "o_boxingcontroller_slash_Create_0_gml_18_0");
duck_string = stringsetsubloc("Press ~1 to Duck!", scr_get_input_name(0), "o_boxingcontroller_slash_Create_0_gml_19_0");
default_string = stringsetloc("default", "o_boxingcontroller_slash_Create_0_gml_20_0");
health_count_prev = 200;
health_count_prev_timer_set = 24;
health_count_prev_timer = 0;
white_flash = 0;
times_hit_by_boss = 0;
hit_baseball = 0;
hit_baseball_check = 0;
damage_multiplier = 1;
punch_speed_multiplier = 1;
color_fade_alpha = 0;
turbo_fade_alpha = 0;
turbo_fade_state = 0;
sword_fade_alpha = 0;
sword_fade_state = 0;
miss_timer = 0;
defend = 0;
failed_kick_tutorial_counter = 1;
succeeded_kick_tutorial = 0;
arcade_loss_count = 0;
arcade_times_blocked = 0;
dead = 0;
dead_timer = 0;
arcade_mode_last_punched_direction = 0;
if (!variable_global_exists("beat_phase1_no_damage_taken"))
	global.beat_phase1_no_damage_taken = 0;
beat_phase1_no_damage_taken_check = 0;
beat_phase2_no_damage_taken = 0;
beat_phase2_no_damage_taken_check = 0;
phase2_25_percent_health_early = 0;
phase3_hit_check = 0;
phase3_damage_multiplier = 0;
attackintrotimer = 0;
attackintrocon = 0;
talking = 0;
arcaderesettimer = 0;
damagereductiononeturn = 0;
damageoverride = 0;
healoverride = 0;
tpoverride = 0;
actpunchtimer = 0;
acttoenemytalktransition = 0;
lastpunchside = 0;
damagetakenthisturn = 0;
if (wireframe_boxing == 1)
{
	instance_create(x, y, o_boxing_wireframe);
	sprite_index = spr_bhero_wireframe;
	with (o_boxingqueen)
		sprite_index = spr_bqueen_wireframe;
}
htimer = 0;
hcon = 0;
hsubcon = 0;
qtimer = 0;
qcon = 0;
qsubcon = 0;
punchcon = 0;
punchtimer = 0;
dodgecon = 0;
dodgetimer = 0;
dodging = 0;
duckcon = 0;
ducktimer = 0;
ducking = 0;
jumpcon = 0;
jumptimer = 0;
jumping = 0;
hurtcon = 0;
hurttimer = 0;
hurt_length = 22 / f;
invincible = 0;
invincibility_timer = 0;
buffer_punch = 0;
buffer_l = 0;
buffer_u = 0;
buffer_d = 0;
buffer_r = 0;
buffer_z = 0;
buffer_x = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
x = 320;
y = 390;
basex = x;
basey = y;
drawflip = 1;
headsprite = spr_bhero_head_c;
background_xscale[0] = 2;
background_yscale[0] = 2;
grazer = instance_create(x, y, o_boxinggraze);
hud = instance_create(0, 0, o_boxinghud);
global.boxingphase = 0;
cancontrol = 0;
siner = 0;
boxingtimer = 0;
for (i = 0; i < 4; i++)
	specialactive[i] = 0;
for (i = 0; i < 20; i++)
{
	imagefistx[i] = 0;
	imagefisty[i] = 0;
}
specialcon = 0;
specialcontimer = 0;
special_punch_count = 0;
special_punch_turns = 0;
flameactive = 0;
flametimer = 0;
flamepunch = 0;
swordactive = 0;
swordtimer = 0;
swordpunch = 0;
laseractive = 0;
lasertimer = 0;
laserpunch = 0;
duckactive = 0;
ducktimer = 0;
duckpunch = 0;
turboactive = 0;
turbotimer = 0;
turbopunch = 0;
healactive = 0;
healtimer = 0;
healpunch = 0;
laserpunchfadetimer = 0;
xspot = 88;
yspot = 180;
imagefistx[0] = 50 - xspot;
imagefisty[0] = 90 - yspot;
imagefistx[1] = 68 - xspot;
imagefisty[1] = 98 - yspot;
imagefistx[3] = imagefistx[1];
imagefisty[3] = imagefisty[1];
imagefistx[2] = 74 - xspot;
imagefisty[2] = 18 - yspot;
imagefistx[4] = 70 - xspot;
imagefisty[4] = 70 - yspot;
imagefistx[6] = 26 - xspot;
imagefisty[6] = 110 - yspot;
if (global.flag[220] == 1)
	headsprite = spr_bhero_head_b;
if (global.flag[220] == 2)
	headsprite = spr_bhero_head_a;
if (global.flag[220] == 3)
	headsprite = spr_bhero_head_d;
headcolor = make_color_hsv(global.flag[223] * 8, 255, 255);
glow = 0;
