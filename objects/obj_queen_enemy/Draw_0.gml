var _flash = 0;
with (obj_berdlyplug_enemy)
	flash = 0;
with (obj_herokris)
	flash = 0;
with (obj_herosusie)
	flash = 0;
with (obj_heroralsei)
	flash = 0;
if (global.bmenuno == 9 || global.bmenuno == 9)
{
	if (global.bmenucoord[9][global.charturn] != 4 && global.bmenucoord[9][global.charturn] != 5 && shieldacthp <= 0)
		_flash = 1;
	if (global.bmenucoord[9][global.charturn] != 4 && global.bmenucoord[9][global.charturn] != 5 && shieldhp <= 0)
		_flash = 1;
	if (!instance_exists(obj_queenshield_enemy) && global.bmenucoord[9][global.charturn] == 3)
		_flash = 0;
	if ((global.bmenucoord[9][global.charturn] == 4 && !instance_exists(obj_queenshield_enemy)) || (global.bmenucoord[9][global.charturn] == 3 && instance_exists(obj_queenshield_enemy)))
	{
		with (obj_herokris)
			flash = 1;
		with (obj_herosusie)
			flash = 1;
		with (obj_heroralsei)
			flash = 1;
		flash = 0;
	}
}
if (global.bmenuno == 13 && global.bmenucoord[2][global.charturn] == 0 && shieldacthp <= 0)
	_flash = 1;
if (global.bmenuno == 13 && global.bmenucoord[2][global.charturn] == 0 && shieldhp <= 0)
	_flash = 1;
if (global.charturn == 2 && global.bmenuno == 13 && global.bmenucoord[2][global.charturn] == 1 && shieldacthp <= 0)
	_flash = 1;
if (global.charturn == 2 && global.bmenuno == 13 && global.bmenucoord[2][global.charturn] == 1 && shieldhp <= 0)
	_flash = 1;
if (_flash == 1)
{
	if (instance_exists(obj_berdlyplug_enemy))
		obj_berdlyplug_enemy.flash = 1;
	flash = 0;
}
if (state == 3)
{
}
if (sprite_index == spr_queen_drunk || sprite_index == spr_queen_throw_wineglass || sprite_index == spr_queen_hurt || (sprite_index == idlesprite && state == 3))
{
	image_index += 0.16666666666666666;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	fsiner++;
	if (flash == 1)
		draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
	if (endcon > 0 && sprite_index == spr_queen_throw_wineglass)
		draw_sprite_ext(spr_queen_wine_box1, 0, x + 29, y + 10, 0.4, 0.6, 0, c_white, 1);
}
else if (scr_queen_buffercheck())
{
	draw_sprite_ext(thissprite, siner, x, y, image_xscale, image_yscale, image_angle, c_gray, image_alpha);
	draw_sprite(spr_queen_buffering, obj_queen_buffercontroller.bufferbar % 8, x + 66, y + 76);
}
else
{
	scr_enemy_drawidle_generic(0.16666666666666666);
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
