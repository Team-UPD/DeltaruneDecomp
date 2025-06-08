function scr_act_simul()
{
	__simulcount = 0;
	for (__ii = global.currentactingchar; __ii < 3; __ii++)
	{
		__foundsimul = 0;
		if (global.actingsingle[__ii] == 1 && instance_exists(obj_monsterparent))
		{
			if (global.char[__ii] == 1 && global.actsimul[global.actingtarget[__ii]][global.actingchoice[__ii]] == 1)
			{
				obj_monsterparent.simulorderkri = __simulcount;
				with (global.monsterinstance[global.actingtarget[__ii]])
					actcon = 0;
				__foundsimul = 1;
			}
			if (global.char[__ii] == 2 && global.actsimulsus[global.actingtarget[__ii]][global.actingchoice[__ii]] == 1)
			{
				obj_monsterparent.simulordersus = __simulcount;
				with (global.monsterinstance[global.actingtarget[__ii]])
					actconsus = 1;
				__foundsimul = 1;
			}
			if (global.char[__ii] == 3 && global.actsimulral[global.actingtarget[__ii]][global.actingchoice[__ii]] == 1)
			{
				obj_monsterparent.simulorderral = __simulcount;
				with (global.monsterinstance[global.actingtarget[__ii]])
					actconral = 1;
				__foundsimul = 1;
			}
			if (global.char[__ii] == 4 && global.actsimulnoe[global.actingtarget[__ii]][global.actingchoice[__ii]] == 1)
			{
				obj_monsterparent.simulordernoe = __simulcount;
				with (global.monsterinstance[global.actingtarget[__ii]])
					actconnoe = 1;
				__foundsimul = 1;
			}
			if (__foundsimul)
			{
				global.actingsingle[__ii] = 0;
				__simulcount++;
			}
			obj_monsterparent.simultotal = __simulcount;
		}
	}
}
