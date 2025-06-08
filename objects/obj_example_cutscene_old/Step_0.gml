if (keyboard_check_pressed(ord("J")))
{
	with (obj_mainchara)
		scr_jump_to_point_sprite(x + random_range(-200, 200), y + random_range(-30, 30), 10, 15, 651, 650);
}
if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
	con = 1;
	global.interact = 1;
}
if (con == 1)
{
	con = 2;
	cutscene_master = scr_cutscene_make();
	kr = 0;
	kr_actor = instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisr_dark;
	with (obj_mainchara)
		visible = 0;
	su = 1;
	su_actor = instance_create(obj_mainchara.x + 300, obj_mainchara.y, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susiel_dark;
	c_sel(su);
	c_walk_wait("l", 4, 50);
	c_speaker("Susie");
	c_walkdirect_wait(757, 193, 48);
	c_specialsprite(1);
	c_talk();
	c_wait(40);
	c_waittalk();
	c_sel(su);
	c_walk("l", 6, 15);
	c_delayfacing(16, "d");
	c_delaywalk(30, "r", 3, 15);
	c_delayfacing(46, "u");
	c_delayfacing(60, "r");
	c_delayfacing(75, "r");
	c_delaywalkdirect(95, 757, 193, 20);
	c_delaycmd(116, "sprite", spr_susie_shock);
	c_delaycmd(116, "soundplay", snd_drive);
	c_sel(kr);
	c_walk("l", 3, 15);
	c_wait(15);
	c_walk_wait("r", 3, 15);
	c_walk_wait("l", 3, 15);
	c_facing("u");
	c_wait(15);
	c_facing("d");
	c_wait(15);
	c_facing("l");
	c_wait(75);
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_susie_shock);
	c_shake();
	c_soundplay(snd_noise);
	c_wait(30);
	c_facing("l");
	c_wait(10);
	c_facing("r");
	c_wait(10);
	c_facing("d");
	c_wait(10);
	c_facing("l");
	c_wait(30);
	c_speaker("ralsei");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_susieb_attack);
	c_soundplay(snd_laz_c);
	c_imagespeed(0.25);
	c_speaker("susie");
	c_talk();
	c_waittalk();
	c_autowalk(1);
	c_facing("r");
	c_wait(30);
	c_walk("r", 2, 5);
	c_wait(30);
	c_talk();
	c_waittalk();
	c_walk("r", 8, 90);
	c_pannable(1);
	c_panspeed(4, 0, 30);
	c_wait(60);
	c_panobj(kr_actor, 15);
	c_wait(15);
	c_sel(kr);
	c_facing("d");
	c_actortokris();
	c_pannable(0);
	c_terminatekillactors();
}
if (con == 2)
{
	if (!instance_exists(obj_cutscene_master))
	{
		con = 3;
		global.interact = 0;
	}
}
