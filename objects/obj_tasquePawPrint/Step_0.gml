if (con == 0)
{
	with (obj_chaseenemy)
	{
		if (sprite_index == spr_npc_swatchling_sweep_walk && place_meeting(x, y, other.id))
			other.con++;
	}
	if (place_meeting(x, y, obj_mainchara))
		con++;
	if (place_meeting(x, y, obj_caterpillarchara))
		con++;
}
if (con == 1)
{
	image_alpha = lerp(image_alpha, 0, 0.125);
	if (image_alpha == 0)
		instance_destroy();
}
