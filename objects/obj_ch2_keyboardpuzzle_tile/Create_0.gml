textImage = 0;
pressed = 0;
pressedBuffer = 0;
init = 0;
image_speed = 0;
depth = 900000 - y;
pressable = 1;
bouncecon = 0;
bouncetimer = 0;
drawY = 0;
won = false;
if (room == room_dw_cyber_keyboard_puzzle_1 && global.flag[390] == 1)
	won = true;
if (room == room_dw_cyber_keyboard_puzzle_2 && global.flag[333] == 1)
	won = true;
if (room == room_dw_cyber_keyboard_puzzle_3 && global.flag[420] == 1)
	won = true;
if (won == true)
{
	pressed = 1;
	pressable = 0;
}
