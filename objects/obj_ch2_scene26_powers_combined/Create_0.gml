global.interact = 1;
image_xscale = 3;
image_yscale = 3;
image_alpha = 0;
scr_depth();
con = 0;
color_lerp = 0;
glow_lerp = 0;
glow_in_out = 0;
recruit_con = 0;
thrash_con = 0;
thrash = -4;
recruit_ids[0] = 630;
recruit_ids[1] = 631;
recruit_ids[2] = 632;
recruit_ids[3] = 633;
recruit_ids[4] = 634;
recruit_ids[5] = 635;
recruit_ids[6] = 636;
recruit_ids[7] = 642;
recruit_col = 16777215;
recruit_color[0] = 13041038;
recruit_color[1] = 11164401;
recruit_color[2] = 14876191;
recruit_color[3] = 14867541;
recruit_color[4] = 14586879;
recruit_color[5] = 9662062;
recruit_color[6] = 14438399;
recruit_color[7] = 2366701;
recruit_color[8] = 14867541;
recruit_color[9] = 62207;
recruit_sprite_map = ds_map_create();
ds_map_set(recruit_sprite_map, 500, 298);
ds_map_set(recruit_sprite_map, 630, 287);
ds_map_set(recruit_sprite_map, 631, 288);
ds_map_set(recruit_sprite_map, 632, 292);
ds_map_set(recruit_sprite_map, 633, 289);
ds_map_set(recruit_sprite_map, 634, 291);
ds_map_set(recruit_sprite_map, 635, 290);
ds_map_set(recruit_sprite_map, 636, 293);
ds_map_set(recruit_sprite_map, 642, 294);
ds_map_set(recruit_sprite_map, 900, 295);
recruit_dialog_map = ds_map_create();
ds_map_set(recruit_dialog_map, 500, stringsetloc("* My strongest JPEGs!/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_43_0"));
ds_map_set(recruit_dialog_map, 630, stringsetloc("* Flashing lights!/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_44_0"));
ds_map_set(recruit_dialog_map, 631, stringsetloc("* HAPPI... BRAVARY.../%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_45_0"));
ds_map_set(recruit_dialog_map, 632, stringsetloc("* (meow noise)/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_46_0"));
ds_map_set(recruit_dialog_map, 633, stringsetloc("* My energy!/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_47_0"));
ds_map_set(recruit_dialog_map, 634, stringsetloc("* (squeak noise)/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_48_0"));
ds_map_set(recruit_dialog_map, 635, stringsetloc("* Tender loving care!/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_49_0"));
ds_map_set(recruit_dialog_map, 636, stringsetloc("* Fresh cooking!/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_50_0"));
ds_map_set(recruit_dialog_map, 642, stringsetloc("* Organization!/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_51_0"));
ds_map_set(recruit_dialog_map, 900, stringsetloc("* Star Walker/%", "obj_ch2_scene26_powers_combined_slash_Create_0_gml_52_0"));
current_sprite = -1;
current_index = -1;
recruit_index = 0;
var _color_index = 0;
if (global.flag[357] == 1)
{
	if (current_index == -1)
		current_index = 0;
	recruit[recruit_index] = 500;
	recruit_index++;
	_color_index++;
}
for (var i = 0; i < array_length_1d(recruit_ids); i++)
{
	if (global.flag[recruit_ids[i]] == 1)
	{
		var recruit_id = recruit_ids[i];
		if (!is_undefined(ds_map_find_value(recruit_sprite_map, recruit_id)))
		{
			if (current_index == -1)
				current_index = 0;
			if (_color_index < (i + 1))
				recruit_color[_color_index] = recruit_color[i + 1];
			_color_index++;
			recruit[recruit_index] = recruit_id;
			recruit_index++;
		}
	}
}
if (global.flag[254] == 1)
{
	if (current_index == -1)
		current_index = 0;
	recruit[recruit_index] = 900;
	recruit_color[_color_index] = recruit_color[9];
}
fade_in_out = false;
start_color = c_black;
end_color = c_white;
flicker_timer = 0;
spin_speed = 5;
current_side = 1;
shine_timer = 0;
miniflash = 0;
f = 2;
big_square = -4;
streak_timer = 0;
