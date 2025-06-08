function scr_recruit_info(arg0)
{
	_recruitcount = 1;
	_sprite = spr_darkconfigbt;
	_spritex = 0;
	_spritey = 0;
	_imagespeed = 0;
	_name = stringsetloc("Known Quantity ", "scr_recruit_info_slash_scr_recruit_info_gml_10_0") + string(arg0);
	_desc = stringsetloc("It is known.", "scr_recruit_info_slash_scr_recruit_info_gml_11_0");
	_like = " ";
	_dislike = " ";
	_chapter = 0;
	_level = 0;
	_attack = 0;
	_defense = 0;
	_element = " ";
	_dialogueboxes = 1;
	_dialogue[0] = stringsetloc("%%", "scr_recruit_info_slash_scr_recruit_info_gml_22_0");
	_placeable = 1;
	switch (arg0)
	{
		case 5:
			_sprite = spr_diamond_overworld;
			_name = stringsetloc("Rudinn", "scr_recruit_info_slash_scr_recruit_info_gml_29_0");
			_desc = stringsetloc("Said to be someone's best friend, but maybe not. Shine on, you lazy diamond!", "scr_recruit_info_slash_scr_recruit_info_gml_30_0");
			_like = stringsetloc("Shiny Things", "scr_recruit_info_slash_scr_recruit_info_gml_31_0");
			_dislike = stringsetloc("Effort", "scr_recruit_info_slash_scr_recruit_info_gml_32_0");
			_chapter = 1;
			_level = 2;
			_attack = 4;
			_defense = 5;
			_element = stringsetloc("JEWEL", "scr_recruit_info_slash_scr_recruit_info_gml_37_0");
			_dialogue[0] = stringsetloc("* Hey^1, boss^1! I'll have a Dark Candy Starfait!/%", "scr_recruit_info_slash_scr_recruit_info_gml_38_0");
			break;
		case 6:
			_sprite = spr_heartenemy_overworld;
			_name = stringsetloc("Hathy", "scr_recruit_info_slash_scr_recruit_info_gml_43_0");
			_desc = stringsetloc("A heart with a big heart. Always supporting others with her bullets.", "scr_recruit_info_slash_scr_recruit_info_gml_44_0");
			_like = stringsetloc("Lip Gloss", "scr_recruit_info_slash_scr_recruit_info_gml_45_0");
			_dislike = stringsetloc("Drama", "scr_recruit_info_slash_scr_recruit_info_gml_46_0");
			_chapter = 1;
			_level = 2;
			_attack = 4;
			_defense = 5;
			_element = stringsetloc("HEART", "scr_recruit_info_slash_scr_recruit_info_gml_51_0");
			_dialogue[0] = stringsetloc("* (Hathy is going to order a heart-foam latte.)/%", "scr_recruit_info_slash_scr_recruit_info_gml_52_0");
			break;
		case 11:
			_sprite = spr_ponman_idle;
			_name = stringsetloc("Ponman", "scr_recruit_info_slash_scr_recruit_info_gml_57_0");
			_desc = stringsetloc("A simple organism that takes life one square at a time.", "scr_recruit_info_slash_scr_recruit_info_gml_58_0");
			_like = stringsetloc("Sleeping", "scr_recruit_info_slash_scr_recruit_info_gml_59_0");
			_dislike = stringsetloc("Moving Backwards", "scr_recruit_info_slash_scr_recruit_info_gml_60_0");
			_chapter = 1;
			_level = 3;
			_attack = 4;
			_defense = 5;
			_element = stringsetloc("ORDER", "scr_recruit_info_slash_scr_recruit_info_gml_65_0");
			_dialogue[0] = stringsetloc("* (Looks like it wants to osmose some flavorful cubes.)/%", "scr_recruit_info_slash_scr_recruit_info_gml_66_0");
			break;
		case 13:
			_sprite = spr_npc_rabbick_clean;
			_name = stringsetloc("Rabbick", "scr_recruit_info_slash_scr_recruit_info_gml_71_0");
			_desc = stringsetloc("A real dust bunny. Known to play dirty, but loves to play clean.", "scr_recruit_info_slash_scr_recruit_info_gml_72_0");
			_like = stringsetloc("Dusty Places", "scr_recruit_info_slash_scr_recruit_info_gml_73_0");
			_dislike = stringsetloc("Vacuum", "scr_recruit_info_slash_scr_recruit_info_gml_74_0");
			_chapter = 1;
			_level = 4;
			_attack = 4;
			_defense = 5;
			_element = stringsetloc("RABBIT:DUST", "scr_recruit_info_slash_scr_recruit_info_gml_79_0");
			_dialogue[0] = stringsetloc("* (Looks like it wants to be dabbed with rubbing alcohol.)/%", "scr_recruit_info_slash_scr_recruit_info_gml_80_0");
			break;
		case 14:
			_sprite = spr_blockguy_spared;
			_name = stringsetloc("Bloxer", "scr_recruit_info_slash_scr_recruit_info_gml_85_0");
			_desc = stringsetloc("A shape changing fighter. Ironically, blocking is not its forte.", "scr_recruit_info_slash_scr_recruit_info_gml_86_0");
			_like = stringsetloc("Cross-Trainers", "scr_recruit_info_slash_scr_recruit_info_gml_87_0");
			_dislike = stringsetloc("Formal Shoewear", "scr_recruit_info_slash_scr_recruit_info_gml_88_0");
			_chapter = 1;
			_level = 4;
			_attack = 4;
			_defense = 5;
			_element = stringsetloc("FIGHT", "scr_recruit_info_slash_scr_recruit_info_gml_93_0");
			_dialogue[0] = stringsetloc("* Everything tastes better with a normally-shaped body!/%", "scr_recruit_info_slash_scr_recruit_info_gml_94_0");
			break;
		case 15:
			_sprite = spr_jigsawry_spared;
			_name = stringsetloc("Jigsawry", "scr_recruit_info_slash_scr_recruit_info_gml_99_0");
			_desc = stringsetloc("It cries tears of joy that you are its boss.", "scr_recruit_info_slash_scr_recruit_info_gml_100_0");
			_like = stringsetloc("Fitting In", "scr_recruit_info_slash_scr_recruit_info_gml_101_0");
			_dislike = stringsetloc("Susie's Ax", "scr_recruit_info_slash_scr_recruit_info_gml_102_0");
			_chapter = 1;
			_level = 1;
			_attack = 4;
			_defense = 5;
			_element = stringsetloc("MOUSE:PUZZ", "scr_recruit_info_slash_scr_recruit_info_gml_107_0");
			_dialogue[0] = stringsetloc("* Lemonade? ..^1. Please./%", "scr_recruit_info_slash_scr_recruit_info_gml_108_0");
			break;
		case 20:
			_sprite = spr_joker_main;
			_name = stringsetloc("JEVIL", "scr_recruit_info_slash_scr_recruit_info_gml_113_0");
			_desc = stringsetloc("An agent of CHAOS, he became DEVILSKNIFE to the pocket.", "scr_recruit_info_slash_scr_recruit_info_gml_114_0");
			_like = stringsetloc("CHAOS", "scr_recruit_info_slash_scr_recruit_info_gml_115_0");
			_dislike = stringsetloc("BOREDOM", "scr_recruit_info_slash_scr_recruit_info_gml_116_0");
			_chapter = 1;
			_level = stringsetloc("???", "scr_recruit_info_slash_scr_recruit_info_gml_118_0");
			_attack = 10;
			_defense = 5;
			_element = stringsetloc("CHAOS:CHAOS", "scr_recruit_info_slash_scr_recruit_info_gml_121_0");
			_dialogue[0] = stringsetloc("", "scr_recruit_info_slash_scr_recruit_info_gml_122_0");
			_placeable = 0;
			break;
		case 22:
			_sprite = spr_diamond_knight_overworld;
			_name = stringsetloc("Rudinn Ranger", "scr_recruit_info_slash_scr_recruit_info_gml_128_0");
			_desc = stringsetloc("Obsessed with ranger shows, it lets everyone know it's better than Rudinn.", "scr_recruit_info_slash_scr_recruit_info_gml_129_0");
			_like = stringsetloc("Sucking Up", "scr_recruit_info_slash_scr_recruit_info_gml_130_0");
			_dislike = stringsetloc("Show Getting Taped Over", "scr_recruit_info_slash_scr_recruit_info_gml_131_0");
			_chapter = 1;
			_level = 5;
			_attack = 4;
			_defense = 5;
			_element = stringsetloc("JEWEL:BLADE", "scr_recruit_info_slash_scr_recruit_info_gml_136_0");
			_dialogue[0] = stringsetloc("* Boss...? You're treating me...? Oh^1, you shouldn't have^1! (smile)/%", "scr_recruit_info_slash_scr_recruit_info_gml_137_0");
			break;
		case 23:
			_sprite = spr_hathyx_overworld;
			_name = stringsetloc("Head Hathy", "scr_recruit_info_slash_scr_recruit_info_gml_142_0");
			_desc = stringsetloc("Although stronger than Hathy, seems to have fewer friends.", "scr_recruit_info_slash_scr_recruit_info_gml_143_0");
			_like = stringsetloc("Peace And Quiet", "scr_recruit_info_slash_scr_recruit_info_gml_144_0");
			_dislike = stringsetloc("Being Alone", "scr_recruit_info_slash_scr_recruit_info_gml_145_0");
			_chapter = 1;
			_level = 5;
			_attack = 5;
			_defense = 5;
			_element = stringsetloc("HEART:ICE", "scr_recruit_info_slash_scr_recruit_info_gml_150_0");
			_dialogue[0] = stringsetloc("* (Head Hathy drinks an ice tea in silence...)/%", "scr_recruit_info_slash_scr_recruit_info_gml_151_0");
			break;
		case 30:
			_sprite = spr_omawaroid_idle;
			_name = stringsetloc("Ambyu-Lance", "scr_recruit_info_slash_scr_recruit_info_gml_156_0");
			_desc = stringsetloc("An aggressive antivirus. It's not down with the sickness.", "scr_recruit_info_slash_scr_recruit_info_gml_157_0");
			_like = stringsetloc("Loud Sirens", "scr_recruit_info_slash_scr_recruit_info_gml_158_0");
			_dislike = stringsetloc("Funny Sound Effects", "scr_recruit_info_slash_scr_recruit_info_gml_159_0");
			_chapter = 2;
			_level = 8;
			_attack = 8;
			_defense = 8;
			_element = stringsetloc("ORDER:ELEC", "scr_recruit_info_slash_scr_recruit_info_gml_164_0");
			_dialogue[0] = stringsetloc("* Pipooo^1! Nothing beats a nice shot of espresso..^1. Want me to give you a \"shot\"^1, too!?/%", "scr_recruit_info_slash_scr_recruit_info_gml_165_0");
			_recruitcount = 4;
			break;
		case 31:
			_sprite = spr_poppup_idle;
			_name = stringsetloc("Poppup", "scr_recruit_info_slash_scr_recruit_info_gml_171_0");
			_desc = stringsetloc("Known to say ASOBOH, which means \"Let's Play!\" ... does it know that?", "scr_recruit_info_slash_scr_recruit_info_gml_172_0");
			_like = stringsetloc("LEEMO FRUIT", "scr_recruit_info_slash_scr_recruit_info_gml_173_0");
			_dislike = stringsetloc("ADBLOCK", "scr_recruit_info_slash_scr_recruit_info_gml_174_0");
			_chapter = 2;
			_level = 8;
			_attack = 9;
			_defense = 3;
			_element = stringsetloc("VIRUS", "scr_recruit_info_slash_scr_recruit_info_gml_179_0");
			_dialogue[0] = stringsetloc("* NOMU NOMU.&* BERRY GOOD!/%", "scr_recruit_info_slash_scr_recruit_info_gml_181_0");
			_recruitcount = 3;
			break;
		case 32:
			_sprite = spr_tasque_idle;
			_name = stringsetloc("Tasque", "scr_recruit_info_slash_scr_recruit_info_gml_188_0");
			_desc = stringsetloc("This cat loves you!", "scr_recruit_info_slash_scr_recruit_info_gml_189_0");
			_like = stringsetloc("Cat Food", "scr_recruit_info_slash_scr_recruit_info_gml_190_0");
			_dislike = stringsetloc("Cat Food", "scr_recruit_info_slash_scr_recruit_info_gml_191_0");
			_chapter = 2;
			_level = 7;
			_attack = 8;
			_defense = 6;
			_element = stringsetloc("CAT:ELEC", "scr_recruit_info_slash_scr_recruit_info_gml_196_0");
			_dialogue[0] = stringsetloc("* (It's drinking K_K's electric milk JPEG.)/%", "scr_recruit_info_slash_scr_recruit_info_gml_197_0");
			_recruitcount = 5;
			break;
		case 33:
			_sprite = spr_werewire_idle;
			_name = stringsetloc("Werewire", "scr_recruit_info_slash_scr_recruit_info_gml_203_0");
			_desc = stringsetloc("It was controlled by Queen. But, it's stronger and cooler now, so?", "scr_recruit_info_slash_scr_recruit_info_gml_204_0");
			_like = stringsetloc("Shock Therapy", "scr_recruit_info_slash_scr_recruit_info_gml_205_0");
			_dislike = stringsetloc("Emotional Therapy", "scr_recruit_info_slash_scr_recruit_info_gml_206_0");
			_chapter = 2;
			_level = 7;
			_attack = 8;
			_defense = 7;
			_element = stringsetloc("ELEC", "scr_recruit_info_slash_scr_recruit_info_gml_211_0");
			_dialogue[0] = stringsetloc("* (It has some kind of energy drink.)/%", "scr_recruit_info_slash_scr_recruit_info_gml_212_0");
			_recruitcount = 6;
			break;
		case 34:
			_sprite = spr_maus_idle;
			_name = stringsetloc("Maus", "scr_recruit_info_slash_scr_recruit_info_gml_218_0");
			_desc = stringsetloc("It dreams of re-enacting scenes from cat and mouse cartoons.", "scr_recruit_info_slash_scr_recruit_info_gml_219_0");
			_like = stringsetloc("Clicking", "scr_recruit_info_slash_scr_recruit_info_gml_220_0");
			_dislike = stringsetloc("Clicking On Poppup", "scr_recruit_info_slash_scr_recruit_info_gml_221_0");
			_chapter = 2;
			_level = 6;
			_attack = 8;
			_defense = 2;
			_element = stringsetloc("MOUSE:ELEC", "scr_recruit_info_slash_scr_recruit_info_gml_226_0");
			_dialogue[0] = stringsetloc("* (It's drinking melted cheese.)/%", "scr_recruit_info_slash_scr_recruit_info_gml_227_0");
			_recruitcount = 3;
			break;
		case 35:
			_sprite = spr_virovirokun_idle;
			_name = stringsetloc("Virovirokun", "scr_recruit_info_slash_scr_recruit_info_gml_233_0");
			_desc = stringsetloc("A virus with a slightly criminal streak... and a heart of gold.", "scr_recruit_info_slash_scr_recruit_info_gml_234_0");
			_like = stringsetloc("Retro Games", "scr_recruit_info_slash_scr_recruit_info_gml_235_0");
			_dislike = stringsetloc("Federal Justice System", "scr_recruit_info_slash_scr_recruit_info_gml_236_0");
			_chapter = 2;
			_level = 7;
			_attack = 8;
			_defense = 6;
			_element = stringsetloc("VIRUS", "scr_recruit_info_slash_scr_recruit_info_gml_241_0");
			_dialogue[0] = stringsetloc("* Wanna share my soda? We'll both get sick that way..^1. Hee hee./%", "scr_recruit_info_slash_scr_recruit_info_gml_242_0");
			_recruitcount = 4;
			break;
		case 36:
			_sprite = spr_npc_butler;
			_name = stringsetloc("Swatchling", "scr_recruit_info_slash_scr_recruit_info_gml_248_0");
			_desc = stringsetloc("Colorful and dandy, you can always count on him to work hard.", "scr_recruit_info_slash_scr_recruit_info_gml_249_0");
			_like = stringsetloc("Paint By Numbers", "scr_recruit_info_slash_scr_recruit_info_gml_250_0");
			_dislike = stringsetloc("Mixed Messages", "scr_recruit_info_slash_scr_recruit_info_gml_251_0");
			_chapter = 2;
			_level = 9;
			_attack = 9;
			_defense = 9;
			_element = stringsetloc("COLOR", "scr_recruit_info_slash_scr_recruit_info_gml_256_0");
			_dialogue[0] = stringsetloc("* Boss? Shall we sit down and enjoy a nice earl grey?/%", "scr_recruit_info_slash_scr_recruit_info_gml_257_0");
			_recruitcount = 5;
			break;
		case 40:
			_sprite = spr_werewerewire_idle;
			_name = stringsetloc("Werewerewire", "scr_recruit_info_slash_scr_recruit_info_gml_263_0");
			_desc = stringsetloc("It absorbed the wire with fighting spirit. Gets flustered easily.", "scr_recruit_info_slash_scr_recruit_info_gml_264_0");
			_like = stringsetloc("Supercharged Fighting", "scr_recruit_info_slash_scr_recruit_info_gml_265_0");
			_dislike = stringsetloc("Interpersonal Relationships", "scr_recruit_info_slash_scr_recruit_info_gml_266_0");
			_chapter = 2;
			_level = 14;
			_attack = 11;
			_defense = 11;
			_element = stringsetloc("ELEC:FIGHT", "scr_recruit_info_slash_scr_recruit_info_gml_271_0");
			_dialogue[0] = stringsetloc("* (..^1. it's crushing its energy drink with its hand...)/%", "scr_recruit_info_slash_scr_recruit_info_gml_272_0");
			_recruitcount = 1;
			break;
		case 42:
			_sprite = spr_npc_tasquemanager;
			_name = stringsetloc("Tasque Manager", "scr_recruit_info_slash_scr_recruit_info_gml_279_0");
			_desc = stringsetloc("Loves to coordinate outfits. Strongly dislikes clowns.", "scr_recruit_info_slash_scr_recruit_info_gml_280_0");
			_like = stringsetloc("New Wave Synth Pop", "scr_recruit_info_slash_scr_recruit_info_gml_281_0");
			_dislike = stringsetloc("Mismatched Socks", "scr_recruit_info_slash_scr_recruit_info_gml_282_0");
			_chapter = 2;
			_level = 10;
			_attack = 10;
			_defense = 7;
			_element = stringsetloc("CAT:ORDER", "scr_recruit_info_slash_scr_recruit_info_gml_287_0");
			_dialogue[0] = stringsetloc("", "scr_recruit_info_slash_scr_recruit_info_gml_288_0");
			_placeable = 0;
			_recruitcount = 1;
			break;
		case 44:
			_sprite = spr_mauswheel_idle;
			_name = stringsetloc("Mauswheel", "scr_recruit_info_slash_scr_recruit_info_gml_295_0");
			_desc = stringsetloc("You recruited 3 big mice and you're stuck with it.", "scr_recruit_info_slash_scr_recruit_info_gml_296_0");
			_like = stringsetloc("Pretending To Be A Tire", "scr_recruit_info_slash_scr_recruit_info_gml_297_0");
			_dislike = stringsetloc("Losing Momentum", "scr_recruit_info_slash_scr_recruit_info_gml_298_0");
			_chapter = 2;
			_level = 13;
			_attack = 10;
			_defense = 11;
			_element = stringsetloc("MOUSE:MOUSE:MOUSE", "scr_recruit_info_slash_scr_recruit_info_gml_303_0");
			_dialogue[0] = stringsetloc("* (It's getting electricity from the melted cheese like a water wheel)/%", "scr_recruit_info_slash_scr_recruit_info_gml_304_0");
			_recruitcount = 1;
			break;
	}
	if (_sprite == spr_darkconfigbt)
	{
		_sprite = floor(random(500));
		_placeable = 0;
	}
	_recruitcountcurrent = round(global.flag[arg0 + 600] / (1 / _recruitcount));
}
