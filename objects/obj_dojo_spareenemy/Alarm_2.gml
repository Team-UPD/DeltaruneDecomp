alarm[3] = 20;
alarm[1] = 40;
scr_mercyadd(myself, 100);
snd_play_pitch(snd_damage, 1.5);
image_speed = 0;
shaved = true;
global.flag[20] = 0;
sparedsprite = spr_npc_puzzlepiece_shaved_frown;
hurtsprite = spr_npc_puzzlepiece_shock2_shaved;
var _yy = y + ((siner % 1) * 2);
instance_create(x + 22, _yy + 32, obj_dojo_shaveeffect);
instance_create(x + 46, _yy + 32, obj_dojo_shaveeffect);
instance_create(x + 24, _yy + 34, obj_dojo_shaveeffect);
instance_create(x + 28, _yy + 34, obj_dojo_shaveeffect);
instance_create(x + 32, _yy + 34, obj_dojo_shaveeffect);
instance_create(x + 36, _yy + 34, obj_dojo_shaveeffect);
instance_create(x + 40, _yy + 34, obj_dojo_shaveeffect);
instance_create(x + 44, _yy + 34, obj_dojo_shaveeffect);
instance_create(x + 26, _yy + 36, obj_dojo_shaveeffect);
instance_create(x + 42, _yy + 36, obj_dojo_shaveeffect);
instance_create(x + 30, _yy + 38, obj_dojo_shaveeffect);
instance_create(x + 34, _yy + 38, obj_dojo_shaveeffect);
instance_create(x + 38, _yy + 38, obj_dojo_shaveeffect);
list = ds_list_create();
with (obj_dojo_shaveeffect)
	ds_list_add(other.list, self);
ds_list_shuffle(list);
for (i = 0; i < ds_list_size(list); i++)
{
	var _item = ds_list_find_value(list, i);
	_item.sparkle_timer = ((i * -1) + irandom(2)) - 5;
}
ds_list_destroy(list);
