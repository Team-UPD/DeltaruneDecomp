counter = scr_marker(318, 54, spr_lw_conbini_register);
counter.depth = obj_mainchara.depth + 10000;
sans = scr_marker(340, 50, spr_sans_d);
sans.depth = counter.depth + 10;
con = 99;
myinteract = 0;
talked = 0;
interacting = false;
if (global.flag[308] == 0)
{
	con = -1;
	myinteract = 0;
	talked = 0;
	interacting = false;
	toriel = -1;
	asgore = -1;
}
