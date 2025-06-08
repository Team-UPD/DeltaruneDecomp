drawblack = 1;
makelines = 1;
makecoaster = 0;
ymodifier = -80;
ymodifierb = 0;
makeclouds = 1;
makecity = 1;
makeground = 1;
ssymod = 1;
if (room == room_dw_cyber_intro_2)
{
	makecity = 0;
	makeground = 0;
	makelines = 0;
}
if (room == room_dw_cyber_savepoint)
	ymodifier = 0;
if (room == room_dw_cyber_battle_maze_1)
	ymodifier = -100;
if (room == room_dw_cyber_music_bullet)
{
	ymodifier = 60;
	ssymod = 5;
}
if (room == room_dw_cyber_tasque_battle)
	ymodifier = 60;
if (room == room_dw_cyber_keyboard_puzzle_1)
	ymodifier = 60;
if (room == room_dw_cyber_maze_fireworks)
	ymodifier = 5;
if (room == room_dw_cyber_post_music_boss_slide)
{
	drawblack = 1;
	ymodifier = 1880;
}
if (room == room_dw_cyber_teacup_final)
{
	drawblack = 0;
	ymodifier = 7000;
}
with (obj_mainchara)
	bg = 1;
layersprites = [spr_bg_cyber_parallax_clouds, spr_bg_cyber_parallax_buildings, spr_bg_cyber_parallax_coaster, spr_bg_cyber_parallax_ground];
drawx = camerax();
drawy = cameray();
siner = 0;
y_offset = -80;
y_startpos = ystart;
clouds_drawy = 0;
ground_drawy = 0;
room_scale = room_width / 20;
for (var i = 0; i < array_length_1d(layersprites); i++)
{
	if (i == 2)
		ymodifierb = 80;
	if (i == 0)
		ymodifierb = -ymodifier - 10;
	var bglayer = instance_create(0, ymodifier + ymodifierb, obj_parallaxer_layer_cyber);
	bglayer.ss = (0.24 * array_length_1d(layersprites)) - (0.02 * i);
	bglayer.ssy = bglayer.ss * 0.2 * ssymod;
	bglayer.sprite_index = layersprites[i];
	if (i == 0)
		bglayer.ssy = 1;
	if (makecoaster == 0 && i == 2)
		bglayer.visible = 0;
	if (makecity == 0 && i == 1)
		bglayer.visible = 0;
	if (makeclouds == 0 && i == 0)
		bglayer.visible = 0;
	if (makeground == 0 && i == 3)
		bglayer.visible = 0;
	bglayer.drawblack = drawblack;
	bglayer.shadoweffect = 1;
	if (i == 1)
		bglayer.citylights = 1;
	if (i == 0)
		bglayer.shadoweffect = 1;
	bglayer.depth = 1005500 - (i * 100);
	ymodifierb = 0;
}
depth = 1005000;
if (room == room_dw_cyber_teacup_final)
	depth = 1005100;
init = 0;
