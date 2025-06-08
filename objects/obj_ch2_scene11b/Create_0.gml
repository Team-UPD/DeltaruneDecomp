con = 0;
customcon = 0;
trashy_npc = instance_create(990, 120, obj_npc_room_animated);
trashy_npc.sprite_index = spr_npc_trashy;
with (trashy_npc)
	scr_depth();
if (global.plot < 100)
{
	nubert_npc = instance_create(1060, 350, obj_npc_room);
	nubert_npc.sprite_index = spr_npc_nubert;
	with (nubert_npc)
		scr_depth();
}
trashpile = scr_dark_marker(15, 60, spr_spamton_trash_pile_large);
with (trashpile)
	depth = 98000;
trashpile_collider = instance_create(20, 60, obj_soliddark);
trashpile_collider.image_xscale = 10.5;
trashpile_collider.image_yscale = 5;
if (global.chapter != 2 || global.plot >= 65.5)
{
	con = -1;
	instance_destroy();
}
else if (global.plot == 65)
{
	con = 5;
	heal = false;
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(2);
	scr_getchar(3);
	scr_makecaterpillar(obj_mainchara.x - 60, obj_mainchara.y, 2, 0);
	scr_makecaterpillar(obj_mainchara.x - 140, obj_mainchara.y, 3, 1);
	blackall = scr_dark_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 100;
	blackall.image_blend = c_black;
	heal = false;
}
