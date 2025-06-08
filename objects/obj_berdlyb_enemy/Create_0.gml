scr_enemy_object_init();
sactionboxx = -60;
talkmax = 90;
image_speed = 0.16666666666666666;
visible = false;
idlesprite = spr_berdlyb_idle;
hurtsprite = spr_berdlyb_shocked_battle;
sparedsprite = spr_berdlyb_shocked_battle;
difficulty = 0;
kriscoaster = 0;
suscoaster = 0;
ralcoaster = 0;
nitro = 0;
premonition = 0;
mrboneswildride = 0;
bumpactstarted = 0;
init = 0;
attackorder = 0;
with (obj_battleback)
	instance_destroy();
recruitable = 0;
with (obj_herokris)
	x = camerax() - 200;
with (obj_herosusie)
	x = camerax() - 200;
with (obj_heroralsei)
	x = camerax() - 200;
tornadocount = 0;
spearblastcount = 0;
chirchicount = 0;
recruitable = 0;
rideactgo = 0;
dialoguecon = 0;
bumpedfirsttime = 0;
bumpedpast50percent = 0;
ballooncon = 0;
balloonorder = 0;
talkedcon = 0;
bumpwait = 0;
krisgo = 0;
susiego = 0;
ralseigo = 0;
forcedefaultballoon = 0;
bumpactfast = 0;
endcon = 0;
endtime = 0;
