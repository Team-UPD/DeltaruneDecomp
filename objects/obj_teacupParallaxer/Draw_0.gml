called = 0;
extra = 0;
if (room == room_dw_mansion_east_teacup_4)
	extra = room_height + 1500;
modifier = ((cameray() - autoamount) / (room_height + extra)) * 1000;
var yy_top = max(0, cameray() - 180);
var yy_bottom = cameray() + 580;
var bigi = 0;
var midi = 0;
var smalli = 0;
for (i = 0; i <= squarecount; i += bigheight)
{
	if ((i + modifier) > yy_top)
	{
		called += 2;
		draw_sprite_ext(big, 0, 34, i + modifier, 1, 1, 0, c_white, 1);
		draw_sprite_ext(big, 0, 582, i + modifier, 1, 1, 0, c_white, 1);
	}
	if ((i + modifier + 100) > yy_bottom)
		break;
}
for (i = midi; i <= squarecount; i += midheight)
{
	if ((i + (modifier * 2)) > yy_top)
	{
		called += 2;
		draw_sprite_ext(mid, 0, 82, i + (modifier * 2), 1, 1, 0, c_white, 1);
		draw_sprite_ext(mid, 0, 544, i + (modifier * 2), 1, 1, 0, c_white, 1);
	}
	if ((i + modifier + 100) > yy_bottom)
		break;
}
for (i = smalli; i <= squarecount; i += smallheight)
{
	if ((i + (modifier * 3)) > yy_top)
	{
		called += 2;
		draw_sprite_ext(smol, 0, 112, i + (modifier * 3), 1, 1, 0, c_white, 1);
		draw_sprite_ext(smol, 0, 521, i + (modifier * 3), 1, 1, 0, c_white, 1);
	}
	if ((i + modifier + 100) > yy_bottom)
		break;
}
