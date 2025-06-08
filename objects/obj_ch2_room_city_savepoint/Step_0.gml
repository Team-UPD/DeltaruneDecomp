if (con == 10 && !d_ex())
{
	con = 50;
	kknpc.sprite_index = spr_npc_kk_music;
	snd_free(global.currentsong[0]);
	alarm[0] = 1;
}
