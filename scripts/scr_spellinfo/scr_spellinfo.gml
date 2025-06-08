function scr_spellinfo(arg0)
{
	cost = -1;
	spelltarget = 1;
	spellname = stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_3_0");
	spellnameb = " ";
	spelldescb = stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_5_0");
	spelldesc = stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_6_0");
	spellanim = 0;
	spellusable = 0;
	spelltext = " ";
	switch (arg0)
	{
		case 0:
			spellname = stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_14_0");
			spellnameb = " ";
			spelltarget = 0;
			cost = -1;
			spelldescb = stringsetloc("None", "scr_spellinfo_slash_scr_spellinfo_gml_18_0");
			break;
		case 1:
			spellname = stringsetloc("Rude Sword", "scr_spellinfo_slash_scr_spellinfo_gml_21_0");
			spellnameb = stringsetloc("RudeSword", "scr_spellinfo_slash_scr_spellinfo_gml_22_0");
			spelldescb = stringsetloc("Rude#Damage#", "scr_spellinfo_slash_scr_spellinfo_gml_23_0");
			spelldesc = stringsetloc("Deals moderate Rude-elemental damage to#one foe. Depends on Attack & Magic.", "scr_spellinfo_slash_scr_spellinfo_gml_24_0");
			spelltarget = 2;
			cost = 125;
			spellusable = 0;
			break;
		case 2:
			spellname = stringsetloc("Heal Prayer", "scr_spellinfo_slash_scr_spellinfo_gml_31_0");
			spellnameb = stringsetloc("Heal Prayer", "scr_spellinfo_slash_scr_spellinfo_gml_32_0");
			spelldescb = stringsetloc("Heal#Ally", "scr_spellinfo_slash_scr_spellinfo_gml_33_0");
			spelldesc = stringsetloc("Heavenly light restores a little HP to#one party member. Depends on Magic.", "scr_spellinfo_slash_scr_spellinfo_gml_34_0");
			spelltarget = 1;
			cost = 80;
			usable = 0;
			spellusable = 0;
			break;
		case 3:
			spellname = stringsetloc("Pacify", "scr_spellinfo_slash_scr_spellinfo_gml_42_0");
			spellnameb = stringsetloc("Pacify", "scr_spellinfo_slash_scr_spellinfo_gml_43_0");
			spelldescb = stringsetloc("Spare#TIRED foe", "scr_spellinfo_slash_scr_spellinfo_gml_44_0");
			spelldesc = stringsetloc("SPARE a tired enemy by putting them to sleep.", "scr_spellinfo_slash_scr_spellinfo_gml_45_0");
			spelltarget = 2;
			cost = 40;
			usable = 0;
			spellusable = 0;
			break;
		case 4:
			spellname = stringsetloc("Rude Buster", "scr_spellinfo_slash_scr_spellinfo_gml_52_0");
			spellnameb = stringsetloc("Rude Buster", "scr_spellinfo_slash_scr_spellinfo_gml_53_0");
			spelldescb = stringsetloc("Rude#Damage#", "scr_spellinfo_slash_scr_spellinfo_gml_54_0");
			spelldesc = stringsetloc("Deals moderate Rude-elemental damage to#one foe. Depends on Attack & Magic.", "scr_spellinfo_slash_scr_spellinfo_gml_55_0");
			spelltarget = 2;
			cost = 125;
			if (global.charweapon[2] == 7)
				cost = 100;
			spellusable = 0;
			break;
		case 5:
			spellname = stringsetloc("Red Buster", "scr_spellinfo_slash_scr_spellinfo_gml_64_0");
			spellnameb = stringsetloc("Red Buster", "scr_spellinfo_slash_scr_spellinfo_gml_65_0");
			spelldescb = stringsetloc("Red#Damage#", "scr_spellinfo_slash_scr_spellinfo_gml_66_0");
			spelldesc = stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_67_0");
			spelltarget = 2;
			cost = 0;
			spellusable = 0;
			break;
		case 6:
			spellname = stringsetloc("Dual Heal", "scr_spellinfo_slash_scr_spellinfo_gml_75_0");
			spellnameb = stringsetloc("Dual Heal", "scr_spellinfo_slash_scr_spellinfo_gml_76_0");
			spelldescb = stringsetloc("Heal All#30 HP", "scr_spellinfo_slash_scr_spellinfo_gml_77_0");
			spelldesc = stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_78_0");
			spelltarget = 0;
			cost = 0;
			spellusable = 0;
			break;
		case 7:
			spellname = stringsetloc("ACT", "scr_spellinfo_slash_scr_spellinfo_gml_86_0");
			spellnameb = stringsetloc("ACT", "scr_spellinfo_slash_scr_spellinfo_gml_87_0");
			spelldescb = stringsetloc("Use#action", "scr_spellinfo_slash_scr_spellinfo_gml_88_0");
			spelldesc = stringsetloc("Do all sorts of things.#It isn't magic.", "scr_spellinfo_slash_scr_spellinfo_gml_89_0");
			if (global.chapter == 2)
				spelldesc = stringsetloc("You can do many things.#Don't confuse it with magic.", "scr_spellinfo_slash_scr_spellinfo_gml_93_0");
			spelltarget = 0;
			cost = 0;
			spellusable = 0;
			break;
		case 8:
			spellname = stringsetloc("SleepMist", "scr_spellinfo_slash_scr_spellinfo_gml_96_0");
			spellnameb = stringsetloc("Sleep Mist", "scr_spellinfo_slash_scr_spellinfo_gml_97_0");
			spelldescb = stringsetloc("Spare#TIRED foes", "scr_spellinfo_slash_scr_spellinfo_gml_98_0");
			spelldesc = stringsetloc("A cold mist sweeps through,#sparing all TIRED enemies.", "scr_spellinfo_slash_scr_spellinfo_gml_99_0");
			spelltarget = 0;
			cost = 80;
			spellusable = 0;
			break;
		case 9:
			spellname = stringsetloc("IceShock", "scr_spellinfo_slash_scr_spellinfo_gml_107_0");
			spellnameb = stringsetloc("IceShock", "scr_spellinfo_slash_scr_spellinfo_gml_108_0");
			spelldescb = stringsetloc("Damage#w/ ICE", "scr_spellinfo_slash_scr_spellinfo_gml_109_0");
			spelldesc = stringsetloc("Deals magical ICE damage to#one enemy.", "scr_spellinfo_slash_scr_spellinfo_gml_110_0");
			spelltarget = 2;
			cost = 40;
			if (global.charweapon[4] == 13)
				cost *= 0.5;
			spellusable = 0;
			break;
		case 10:
			spellname = stringsetloc("SnowGrave", "scr_spellinfo_slash_scr_spellinfo_gml_121_0");
			spellnameb = stringsetloc("SnowGrave", "scr_spellinfo_slash_scr_spellinfo_gml_122_0");
			spelldescb = stringsetloc("Fatal", "scr_spellinfo_slash_scr_spellinfo_gml_123_0");
			spelldesc = stringsetloc("Deals the fatal damage to#all of the enemies.", "scr_spellinfo_slash_scr_spellinfo_gml_124_0");
			spelltarget = 0;
			if (instance_exists(obj_berdlyb2_enemy))
			{
				if (global.flag[924] < 4)
					spelltarget = 3;
				else
					spellanim = 1;
			}
			cost = global.maxtension * 2;
			if (global.charweapon[4] == 13)
				cost *= 0.5;
			spellusable = 0;
			break;
		case 11:
			spellname = stringsetloc("UltimatHeal", "scr_spellinfo_slash_scr_spellinfo_gml_147_0");
			spellnameb = stringsetloc("UltimatHeal", "scr_spellinfo_slash_scr_spellinfo_gml_148_0");
			spelldescb = stringsetloc("Best#healing", "scr_spellinfo_slash_scr_spellinfo_gml_149_0");
			spelldesc = stringsetloc("Heals 1 party member to the#best of Susie's ability.", "scr_spellinfo_slash_scr_spellinfo_gml_150_0");
			spelltarget = 1;
			cost = 250;
			spellusable = 0;
			break;
	}
}
