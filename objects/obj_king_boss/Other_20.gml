snd_free_all();
with (obj_battlecontroller)
	skipvictory = 1;
with (obj_kingcutscene)
{
	with (king)
		visible = 1;
}
if (global.flag[247] == 0)
{
	with (obj_kingcutscene)
	{
		with (king)
			sprite_index = spr_chainking_hurt;
	}
}
global.invc = 1;
instance_destroy();
