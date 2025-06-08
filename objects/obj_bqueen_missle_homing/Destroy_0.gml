if (global.turntimer > 4)
{
	bonk = scr_afterimage_grow();
	bonk.sprite_index = spr_dogcar_hit;
	snd_play(snd_bomb);
}
