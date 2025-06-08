state = -1;
sprite_index = choose(spr_poppup_ad_poppup, spr_poppup_ad_loading, spr_poppup_ad_infected, spr_poppup_ad_addison, spr_poppup_ad_restricted, spr_poppup_ad_maus);
if (irandom(99) == 99)
	sprite_index = spr_poppup_ad_everyman;
scale = 0;
blockstate = 0;
timer = 0;
mock = 0;
mocktimer = 0;
scalespeed = 1;
slow = false;
