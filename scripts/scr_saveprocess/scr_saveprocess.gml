function scr_saveprocess(arg0)
{
	global.lastsavedtime = global.time;
	global.lastsavedlv = global.lv;
	file = "filech" + string(global.chapter) + "_" + string(arg0);
	myfileid = ossafe_file_text_open_write(file);
	ossafe_file_text_write_string(myfileid, global.truename);
	ossafe_file_text_writeln(myfileid);
	if (global.is_console)
	{
		scr_ds_list_write(global.othername, 6);
		ossafe_file_text_writeln(myfileid);
	}
	else
	{
		for (i = 0; i < 6; i += 1)
		{
			ossafe_file_text_write_string(myfileid, global.othername[i]);
			ossafe_file_text_writeln(myfileid);
		}
	}
	ossafe_file_text_write_real(myfileid, global.char[0]);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.char[1]);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.char[2]);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.gold);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.xp);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.lv);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.inv);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.invc);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.darkzone);
	ossafe_file_text_writeln(myfileid);
	if (global.is_console)
	{
		var stats_amount = 5;
		scr_ds_list_write(global.hp, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.maxhp, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.at, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.df, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.mag, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.guts, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.charweapon, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.chararmor1, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.chararmor2, stats_amount);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.weaponstyle, stats_amount);
		ossafe_file_text_writeln(myfileid);
	}
	for (i = 0; i < 5; i += 1)
	{
		if (!global.is_console)
		{
			ossafe_file_text_write_real(myfileid, global.hp[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.maxhp[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.at[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.df[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.mag[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.guts[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.charweapon[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.chararmor1[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.chararmor2[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.weaponstyle[i]);
			ossafe_file_text_writeln(myfileid);
		}
		for (q = 0; q < 4; q += 1)
		{
			ossafe_file_text_write_real(myfileid, global.itemat[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itemdf[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itemmag[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itembolts[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itemgrazeamt[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itemgrazesize[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itemboltspeed[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itemspecial[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itemelement[i][q]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.itemelementamount[i][q]);
			ossafe_file_text_writeln(myfileid);
		}
		for (j = 0; j < 12; j += 1)
		{
			ossafe_file_text_write_real(myfileid, global.spell[i][j]);
			ossafe_file_text_writeln(myfileid);
		}
	}
	ossafe_file_text_write_real(myfileid, global.boltspeed);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.grazeamt);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.grazesize);
	ossafe_file_text_writeln(myfileid);
	if (global.is_console)
	{
		scr_ds_list_write(global.item, 13);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.keyitem, 13);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.weapon, 48);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.armor, 48);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.pocketitem, 72);
		ossafe_file_text_writeln(myfileid);
	}
	else
	{
		for (j = 0; j < 13; j += 1)
		{
			ossafe_file_text_write_real(myfileid, global.item[j]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.keyitem[j]);
			ossafe_file_text_writeln(myfileid);
		}
		for (j = 0; j < 48; j++)
		{
			ossafe_file_text_write_real(myfileid, global.weapon[j]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.armor[j]);
			ossafe_file_text_writeln(myfileid);
		}
		for (j = 0; j < 72; j++)
		{
			ossafe_file_text_write_real(myfileid, global.pocketitem[j]);
			ossafe_file_text_writeln(myfileid);
		}
	}
	ossafe_file_text_write_real(myfileid, global.tension);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.maxtension);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.lweapon);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.larmor);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.lxp);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.llv);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.lgold);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.lhp);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.lmaxhp);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.lat);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.ldf);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.lwstrength);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.ladef);
	ossafe_file_text_writeln(myfileid);
	if (global.is_console)
	{
		scr_ds_list_write(global.litem, 8);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.phone, 8);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.flag, 2500);
		ossafe_file_text_writeln(myfileid);
	}
	else
	{
		for (i = 0; i < 8; i += 1)
		{
			ossafe_file_text_write_real(myfileid, global.litem[i]);
			ossafe_file_text_writeln(myfileid);
			ossafe_file_text_write_real(myfileid, global.phone[i]);
			ossafe_file_text_writeln(myfileid);
		}
		for (i = 0; i < 2500; i += 1)
		{
			ossafe_file_text_write_real(myfileid, global.flag[i]);
			ossafe_file_text_writeln(myfileid);
		}
	}
	ossafe_file_text_write_real(myfileid, global.plot);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.currentroom);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.time);
	ossafe_file_text_close(myfileid);
}
