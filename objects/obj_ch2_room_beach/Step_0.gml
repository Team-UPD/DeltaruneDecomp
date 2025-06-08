if (canrest)
{
	if (obj_mainchara.x > x && (!keyboard_check_pressed(vk_anykey) && !scr_gamepad_check_any()))
		timer++;
	else if (timer > 0)
		timer = 0;
	if (timer >= 300 && con == -1)
	{
		con = 1;
		timer = 0;
	}
	if (con == 1)
	{
		con = 2;
		global.interact = 1;
		global.facing = 1;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		mus_volume(global.currentsong[1], 0, 60);
	}
	if (con == 2)
	{
		con = 3;
		oceansong[0] = snd_init("ocean.ogg");
		oceansong[1] = mus_loop(oceansong[0]);
		mus_volume(oceansong[1], 0, 0);
		mus_volume(oceansong[1], 0.5, 150);
		c_sel(su);
		c_walkdirect(362, 88, 30);
		c_delayfacing(31, "r");
		c_sel(kr);
		c_walkdirect(364, 122, 30);
		c_delayfacing(31, "r");
		c_pannable(1);
		c_panspeed(1, 0, 40);
		c_wait(32);
		c_autowalk(0);
		c_sprite(spr_kris_sit_wind);
		c_imagespeed(0.1);
		c_sel(su);
		c_wait(5);
		c_autowalk(0);
		c_sprite(spr_susie_sit_wind);
		c_imagespeed(0.1);
		c_wait(15);
		c_waitcustom();
	}
	if (con == 3 && customcon == 1 && (keyboard_check_pressed(vk_anykey) || scr_gamepad_check_any()))
	{
		con = 4;
		customcon = 0;
		alarm[0] = 30;
		c_waitcustom_end();
		c_panobj(kr_actor, 60);
		mus_volume(oceansong[1], 0, 90);
		mus_volume(global.currentsong[1], 1, 90);
		c_wait(65);
		c_sel(kr);
		c_autowalk(1);
		c_sprite(spr_krisr);
		c_sel(su);
		c_autowalk(1);
		c_sprite(spr_susie_walk_right_lw);
		c_actortokris();
		c_actortocaterpillar();
		c_terminatekillactors();
	}
	if (con == 5 && !i_ex(obj_cutscene_master))
	{
		con = -1;
		snd_free(oceansong[1]);
		obj_mainchara.cutscene = 0;
		global.interact = 0;
		global.facing = 0;
	}
}
