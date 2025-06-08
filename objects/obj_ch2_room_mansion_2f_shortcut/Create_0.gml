con = 0;
key = 0;
dooropen = -1;
keyfloat = false;
floattimer = 0;
keysparkle = false;
sparkletimer = 0;
fadeplatters = false;
keyXPos = 0;
keyYPos = 0;
make_forcefield = false;
forcefield = -4;
if (global.flag[346] == 0)
{
	bookcase = instance_create(221, 40, obj_npc_sign);
	bookcase.sprite_index = spr_dw_mansion_bookcase;
	with (bookcase)
		scr_depth();
	monty = instance_create(210, 230, obj_saucer_monty);
	monty.saucercount = 5;
}
