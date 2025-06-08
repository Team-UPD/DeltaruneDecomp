with (obj_mainchara)
	bg = 1;
con = -1;
bg_hspeed = 0;
xpos = 0;
ypos = 0;
if (room == room_dw_mansion_acid_tunnel_exit)
	ypos = 260;
if (room == room_dw_city_traffic_4)
	xpos = x;
var layersprites = [spr_cyber_coaster_bg_cityscape];
for (var i = 0; i < array_length_1d(layersprites); i++)
{
	var bglayer = instance_create(xpos, ypos, obj_parallaxer_layer);
	bglayer.sprite_index = layersprites[i];
	bglayer.depth = 1000500 - (i * 100);
	bglayer.image_speed = 0.05;
}
