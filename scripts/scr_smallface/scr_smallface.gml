function scr_smallface(arg0, arg1, arg2, arg3, arg4, arg5)
{
	scr_smallface_reset(arg0);
	global.smsprite[arg0] = spr_face_susie_alt;
	if (is_string(arg1))
	{
		if (arg1 == "susie")
			global.smsprite[arg0] = spr_face_susie_alt;
		if (arg1 == "ralsei")
			global.smsprite[arg0] = spr_face_r_nohat;
		if (arg1 == "lancer")
			global.smsprite[arg0] = spr_face_l0;
		if (arg1 == "noelle")
			global.smsprite[arg0] = spr_face_n_matome;
		if (arg1 == "noelle_cropped")
			global.smsprite[arg0] = spr_face_n_matome_cropped;
		if (arg1 == "queen")
			global.smsprite[arg0] = scr_84_get_sprite("spr_face_queen");
		if (arg1 == "rouxls")
			global.smsprite[arg0] = spr_face_rurus;
		if (arg1 == "berdly")
			global.smsprite[arg0] = spr_face_berdly_dark;
		if (arg1 == "rudy")
			global.smsprite[arg0] = spr_face_rudy;
		if (arg1 == "none" || arg1 == "empty")
			global.smsprite[arg0] = spr_empty;
	}
	else
	{
		global.smsprite[arg0] = arg1;
		if (arg1 == 0)
			global.smsprite[arg0] = spr_empty;
	}
	global.smimage[arg0] = arg2;
	if (is_string(arg3))
	{
		if (global.fighting == 1)
		{
			if (arg3 == "left")
				global.smxx[arg0] = 60;
			if (arg3 == "leftmid")
				global.smxx[arg0] = 160;
			if (arg3 == "mid" || arg3 == "middle")
				global.smxx[arg0] = 260;
			if (arg3 == "rightmid")
				global.smxx[arg0] = 360;
			if (arg3 == "right")
				global.smxx[arg0] = 460;
		}
		else
		{
			if (arg3 == "left")
				global.smxx[arg0] = 70;
			if (arg3 == "leftmid")
				global.smxx[arg0] = 160;
			if (arg3 == "mid" || arg3 == "middle")
				global.smxx[arg0] = 260;
			if (arg3 == "rightmid")
				global.smxx[arg0] = 360;
			if (arg3 == "right")
				global.smxx[arg0] = 400;
		}
	}
	else
	{
		global.smxx[arg0] = arg3;
	}
	if (is_string(arg4))
	{
		if (global.fighting == 1)
		{
			if (arg4 == "top")
				global.smyy[arg0] = -10;
			if (arg4 == "mid" || arg4 == "middle")
				global.smyy[arg0] = 30;
			if (arg4 == "bottommid")
				global.smyy[arg0] = 45;
			if (arg4 == "bottom")
				global.smyy[arg0] = 56;
			if (arg4 == "bottom" || arg4 == "bottommid")
			{
				global.smdir[arg0] = 90;
				global.smspeed[arg0] = 4;
				global.smalarm[arg0] = 10;
				global.smyy[arg0] += 40;
				global.smxx[arg0] -= 40;
			}
		}
		else
		{
			if (arg4 == "top")
				global.smyy[arg0] = -10;
			if (arg4 == "mid" || arg4 == "middle")
				global.smyy[arg0] = 30;
			if (arg4 == "bottommid")
				global.smyy[arg0] = 50;
			if (arg4 == "bottom")
				global.smyy[arg0] = 68;
			if (global.darkzone == 0)
			{
				if (arg4 == "top")
					global.smyy[arg0] = 160;
				if (arg4 == "mid" || arg4 == "middle")
					global.smyy[arg0] = 200;
				if (arg4 == "bottommid")
					global.smyy[arg0] = 240;
				if (arg4 == "bottom")
					global.smyy[arg0] = 240;
			}
		}
	}
	else
	{
		global.smyy[arg0] = arg4;
	}
	global.smstring[arg0] = arg5;
}
