enemy1 = 0;
enemy3 = 0;
enemy2 = instance_create(x, y, obj_chaseenemy);
with (enemy2)
{
	image_speed = 0.25;
	myencounter = 64;
	sprite_index = spr_npc_butler;
	touchsprite = spr_swatchling_hurt;
	radius = 0;
	pacetype = 11;
	chasetype = 0;
	alertskip = 0;
	alertcon = 0;
	ignoresolid = 0;
	moveradius = 0;
	eraser = 1;
	blind = 1;
	path_start(path_swatchling, 6, path_action_continue, 1);
}
topleftvase = instance_create(240, 240, obj_queenvase);
topleftvase.image_xscale = 2;
topleftvase.image_yscale = 2;
topleftspawned = 0;
count = 0;
botRightspawned = 0;
topRightTriggered = 0;
topRightBroken = 0;
botRightBroken = 0;
monstercount = 1;
susiebreak = 0;
triggered = 0;
