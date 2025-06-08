visible = true;
image_alpha = 0;
con = 0;
balloontimer = 0;
balloonthreshold = 5;
scr_losechar();
safe_delete(obj_caterpillarchara);
scr_getchar(2);
scr_getchar(3);
caterpillarsus = scr_makecaterpillar(obj_mainchara.x, (obj_mainchara.y - 16) + 2, 2, 0);
caterpillarral = scr_makecaterpillar(obj_mainchara.x, obj_mainchara.y - 12 - 2, 3, 1);
caterpillarnoe = scr_makecaterpillar(obj_mainchara.x - 4, (obj_mainchara.y - 20) + 2, 4, 2);
var remtarget = caterpillarral.target;
caterpillarral.target = caterpillarnoe.target;
caterpillarnoe.target = remtarget;
if (room == room_dw_city_postbaseball_1)
{
	instance_create(1260, 270, obj_chaseenemy);
	forcefieldtopleft = instance_create(320, 320, obj_forcefield);
	forcefieldtopleft.image_xscale = 6;
	forcefieldtopright = instance_create(440, 320, obj_forcefield);
	forcefieldtopright.image_xscale = 36;
	forcefieldright = instance_create(880, 760, obj_forcefield);
	forcefieldright.image_xscale = 100;
	with (obj_forcefield)
		stayVisible = 1;
}
switchcon = 0;
rodeteacup = -5;
switch3con = -1;
switch2con = -1;
switch1con = -1;
forcefield1 = 999;
forcefield2 = 999;
forcefield3 = 999;
if (room == room_dw_city_postbaseball_1)
{
	if (global.flag[448] == 1)
	{
		safe_delete(forcefieldtopright);
		safe_delete(forcefieldright);
		switch1con = 2;
		switch2con = 2;
		rodeteacup = 3;
		con = 99;
	}
	if (global.flag[449] == 1)
	{
		safe_delete(forcefieldtopleft);
		rodeteacup = 4;
	}
}
if (room == room_dw_city_postbaseball_2 || room == room_dw_city_postbaseball_1)
{
	instance_create(0, 0, obj_fireworks_manager);
	with (obj_fireworks_manager)
		is_active = 1;
}
fireworkshotcon = 0;
fireworktimer = 0;
if (room == room_dw_city_postbaseball_3)
{
	blockleft = 0;
	makecaters = 0;
	minigame = 0;
	minigamecon = 0;
	minigamestartcon = 0;
	timer = 0;
	balloon[0] = instance_create(626, 40, obj_cybercity_balloon);
	with (balloon[0])
	{
		balloonid = 0;
		event_user(0);
	}
	ballremx[0] = balloon[0].x;
	ballremy[0] = balloon[0].y;
	balloondestroyed[0] = 0;
	pillar1 = instance_create(700, 200, obj_mouseballoon_pillar);
	pillar1.pillarid = 1;
	blockforcefield = instance_create(760, 320, obj_solidblocksized);
	blockforcefield2 = instance_create(1560, 320, obj_solidblocksized);
	blockforcefield3 = instance_create(1960, 320, obj_solidblocksized);
	blockforcefield4 = instance_create(2560, 120, obj_solidblocksized);
	blockforcefield.image_xscale = 3;
	blockforcefield2.image_xscale = 3;
	blockforcefield3.image_xscale = 3;
	blockforcefield4.image_xscale = 3;
	blockforcefield4.image_yscale = 10;
	pillaremerge = instance_create(900, 200, obj_mouseballoon_pillar_release);
	pillar2 = instance_create(1500, 200, obj_mouseballoon_pillar);
	pillar2.pillarid = 2;
	pillar2.micerequired = 1;
	pillar3 = instance_create(1900, 200, obj_mouseballoon_pillar);
	pillar3.pillarid = 3;
	pillar3.micerequired = 20;
	bucket = instance_create(500, 335, obj_kris_putonheadobj);
	scr_darksize(bucket);
	switch2 = instance_create(1340, 320, obj_pushtile_room);
	switch2.pushVariableName = "switch2con";
	scr_darksize(switch2);
	bucketpillar = instance_create(2440, 188, obj_mouseballoon_pillar_bucket);
	layer_set_visible("TILE_BLOCKLAYER1", 1);
	layer_set_visible("TILE_BLOCKLAYER2", 1);
	layer_set_visible("TILE_BLOCKLAYER3", 1);
	layer_set_visible("TILE_BLOCKLAYER4", 1);
}
