con = 0;
stonelancer = -1;
fan_a = -1;
fan_b = -1;
gavepresent = global.flag[307] == 1 || global.flag[307] == 2;
lancer_stone = false;
if (global.chapter != 2)
{
	instance_destroy();
}
else if (global.plot >= 120)
{
	if (global.flag[356] == 0)
		lancernpc = instance_create(1605, 231, obj_pushable_lancer);
}
else
{
	con = -1;
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	susienpc = scr_dark_marker(1184, 231, spr_cutscene_18_susie_lancer_carry_walk_right);
	susienpc.image_speed = 0;
	lancer_stone = false;
}
