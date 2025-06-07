function scr_saveprocess(arg0)
{
	global.lastsavedtime = global.time;
	global.lastsavedlv = global.lv;
	file = "filech1_" + string(arg0);
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
		scr_ds_list_write(global.hp, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.maxhp, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.at, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.df, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.mag, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.guts, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.charweapon, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.chararmor1, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.chararmor2, 4);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.weaponstyle, 4);
		ossafe_file_text_writeln(myfileid);
	}
	for (i = 0; i < 4; i += 1)
	{
		if (!global.is_console)
		{
			file_text_write_real(myfileid, global.hp[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.maxhp[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.at[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.df[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.mag[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.guts[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.charweapon[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.chararmor1[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.chararmor2[i]);
			file_text_writeln(myfileid);
			file_text_write_string(myfileid, global.weaponstyle[i]);
			file_text_writeln(myfileid);
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
		scr_ds_list_write(global.weapon, 13);
		ossafe_file_text_writeln(myfileid);
		scr_ds_list_write(global.armor, 13);
		ossafe_file_text_writeln(myfileid);
	}
	else
	{
		for (j = 0; j < 13; j += 1)
		{
			file_text_write_real(myfileid, global.item[j]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.keyitem[j]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.weapon[j]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.armor[j]);
			file_text_writeln(myfileid);
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
		scr_ds_list_write(global.flag, 9999);
		ossafe_file_text_writeln(myfileid);
	}
	else
	{
		for (i = 0; i < 8; i += 1)
		{
			file_text_write_real(myfileid, global.litem[i]);
			file_text_writeln(myfileid);
			file_text_write_real(myfileid, global.phone[i]);
			file_text_writeln(myfileid);
		}
		for (i = 0; i < 9999; i += 1)
		{
			file_text_write_real(myfileid, global.flag[i]);
			file_text_writeln(myfileid);
		}
	}
	ossafe_file_text_write_real(myfileid, global.plot);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.currentroom);
	ossafe_file_text_writeln(myfileid);
	ossafe_file_text_write_real(myfileid, global.time);
	ossafe_file_text_close(myfileid);
}
