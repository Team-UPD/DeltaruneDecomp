base_xpos = (room == room_dw_mansion_acid_tunnel_loop_rouxls) ? x : camerax();
base_ypos = (room == room_dw_mansion_acid_tunnel_loop_rouxls) ? y : cameray();
maker = 0;
if (room != room_dw_mansion_acid_tunnel_loop_rouxls)
	depth = obj_rouxls_enemy.depth + 9997;
else
	depth = 840000;
AvailableTension = 150;
HouseTensionCost = 0;
HouseCount = 0;
HouseCountMax = 1;
RouxlsTurn = 0;
RouxlsHouseMax = 2;
RalseiDistract = 0;
RalseiDistractTwice = 0;
for (i = 0; i < 16; i += 1)
{
	for (j = 0; j < 6; j += 1)
	{
		TileLand[i][j] = 0;
		TileHasHouse[i][j] = 0;
		TileYouCanBuild[i][j] = 0;
		TileRouxlsCanBuild[i][j] = 0;
		tileHouseY[i][j] = 0;
		if (collision_point(base_xpos + (i * 40) + 20, cameray() + (j * 40) + 100, obj_simtown_landmaker, false, true))
			TileLand[i][j] = 1;
	}
}
TileHasHouse[4][0] = 1;
TileHasHouse[11][5] = 2;
CursorX = 0;
CursorY = 0;
CursorVisualX = 0;
CursorVisualY = 0;
YourAvailableTileTotal = 0;
RouxlsAvailableTileTotal = 0;
GameOver = 0;
MyTurn = -1;
TurnCon = 0;
StatusMessage = "* Build a house!";
scr_simtown_canbuild_check();
scr_simtown_reset_cursor();
siner = 0;
actresult = "tie";
specialCursor = scr_dark_marker(-100, -100, spr_simtown_selector);
specialCursor.depth = -100;
specialCursor.image_speed = 0.2;
flyaway = 0;
