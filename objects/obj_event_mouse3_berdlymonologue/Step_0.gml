global.interact = 1;
if (con == 0)
{
	con = 1;
	small[0] = stringsetloc("(Powerless!?)", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_11_0");
	small[1] = stringsetloc("SIMPLETON?", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_13_0");
	small[2] = stringsetloc("... H-huh? Berdly?", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_14_0");
	small[3] = stringsetloc("BERDLY??? BERDLY KNOWS???", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_15_0");
	small[4] = stringsetloc("...", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_16_0");
	small[5] = stringsetloc("Berdly...", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_17_0");
	small[6] = stringsetloc("WHY THAT!?", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_18_0");
	if (jp)
	{
		scr_smallface(2, "noelle_cropped", 8, 420, 68, small[0]);
		scr_smallface(4, "noelle_cropped", 8, 400, 68, small[1]);
		scr_smallface(5, "noelle_cropped", 2, 260, 68, small[2]);
		scr_smallface(6, "noelle_cropped", 23, 260, 68, small[3]);
		scr_smallface(7, "noelle_cropped", 10, 400, 68, small[4]);
		scr_smallface(8, "noelle", 6, 400, 30, small[5]);
		scr_smallface(9, "noelle_cropped", 8, 410, 68, small[6]);
	}
	else
	{
		scr_smallface(2, "noelle_cropped", 8, 176, "bottom", small[0]);
		scr_smallface(4, "noelle_cropped", 8, 275, "bottom", small[1]);
		scr_smallface(5, "noelle_cropped", 2, "middle", "bottom", small[2]);
		scr_smallface(6, "noelle_cropped", 23, "middle", "bottom", small[3]);
		scr_smallface(7, "noelle_cropped", 10, "right", "bottom", small[4]);
		scr_smallface(8, "noelle", 6, 300, 44, small[5]);
		scr_smallface(9, "noelle_cropped", 8, "right", "bottom", small[6]);
	}
	scr_speaker("berdly");
	msgsetloc(0, "\\E5* Ahh^1, Kris. Stuck on this puzzle^1, I see?/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_21_0");
	msgnextloc("\\E7* I thought I heard Noelle calling for help^1, but.../", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_22_0");
	msgnextloc("\\EE* I get what that sound was now. Kris./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_23_0");
	msgnextloc("\\E7* Your brain must be crying./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_24_0");
	msgnextloc("\\E0* Poor^1, sweet^1, Noelle. Where could she be now./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_25_0");
	msgnextloc("\\EG* Stuck on a puzzle just like this one^1, no doubt./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_26_0");
	msgnextloc("\\EH* If only I was there to do it for her./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_27_0");
	msgnextloc("\\E8* She's but a powerless doe without my help...\\f2 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_28_0");
	msgnextloc("\\E1* Though being alone might be better than being with you!/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_29_0");
	msgnextloc("\\E7* Kris^1, you would only get in the way!/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_30_0");
	msgnextloc("\\EI* After all^1, you can't understand Noelle like I can./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_31_0");
	msgnextloc("\\E4* Yes^1, you may have been her lifelong neighbor. But./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_32_0");
	msgnextloc("\\EJ* I am a maestro of emotional intelligence./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_33_0");
	msgnextloc("\\E7* I can read her feelings like a strategy guide./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_34_0");
	msgnextloc("\\EC* Which^1, I have NEVER needed by the way!/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_35_0");
	msgnextloc("\\EE* You may see her as the simpleton girl next door.\\f4 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_36_0");
	msgnextloc("\\EI* But the reality. Is that she is./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_37_0");
	msgnextloc("\\EG* A lovestruck girl with her heart on her sleeve.\\f5 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_38_0");
	msgnextloc("\\E3* And..^1. Kris..^1. The target of her affection.../", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_39_0");
	msgnextloc("\\EI* May be surprising to you.\\f6 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_40_0");
	msgnextloc("\\E8* It's..^1. Truly sad. Such love..^1. May never fruit.\\f7 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_41_0");
	msgnextloc("\\E9* But still^1, I have to support her^1, Kris./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_42_0");
	msgnextloc("\\E5* She's my friend.\\f8 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_43_0");
	msgnextloc("\\EE* Also^1, my only worthy opponent at racing games.\\f9 ^1/%", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_44_0");
	d = d_make();
	d.side = 0;
}
if (con == 1 && !d_ex())
{
	con = 2;
	alarm[0] = 60;
}
if (con == 3)
{
	con = 99;
	scr_speaker("noelle");
	msgsetloc(0, "\\E8* (Is that really what you're gonna end it on!?)/%", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_61_0");
	d = d_make();
	d.side = 0;
}
if (con == 99 && !d_ex())
	instance_destroy();
if (instance_exists(obj_writer))
{
	if (obj_writer.halt != 0)
	{
		msgtimer++;
		if (msgtimer >= 60)
		{
			with (obj_writer)
				forcebutton1 = 1;
			msgtimer = 0;
		}
	}
	else
	{
		msgtimer = 0;
	}
}
