scr_enemy_object_init();
talkmax = 90;
image_speed = 0.16;
idlesprite = spr_werewire_idle;
hurtsprite = spr_werewire_hurt;
sparedsprite = spr_plugboy_spare;
loosenAmount = 0;
loosencon = 0;
throwsus = -4;
siner = 0;
siner_timer = 0;
hangx = 26;
hangy = -58;
init_hangy = hangy;
remx = x;
remy = y;
hangcon = 0;
hangtimer = 0;
hangsiner = 0;
shootcon = 0;
shoottimer = 0;
shootwait = 4;
mercyaccumulated = 0;
anim_timer_2 = 0;
stop_anim = 0;
talkwait = 0;
m = 2;
global.turntimer = 0;
initid = 0;
werewire_count = instance_number(object_index);
shootmode = 2;
shootwait = 10;
with (object_index)
{
	if (variable_instance_exists(id, "initid"))
	{
		initid++;
		shootwait = (random(5) + (initid * 30)) - 15;
	}
}
easymode = 0;
werewerewire = 0;
bx1[0] = -20;
bx1[1] = -36;
bx1[2] = -48;
bx1[3] = -46;
bx1[4] = -26;
by1[0] = -54;
by1[1] = -46;
by1[2] = 6;
by1[3] = 46;
by1[4] = 72;
