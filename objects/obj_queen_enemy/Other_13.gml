global.monstergold[3] += global.monstergold[myself];
global.monsterexp[3] += global.monsterexp[myself];
if (global.flag[51 + myself] == 0)
{
	global.flag[51 + myself] = 2;
	if (global.monsterhp[myself] <= 0)
		global.flag[51 + myself] = 1;
}
if (global.flag[51 + myself] == 1)
{
	global.flag[40] += 1;
	if (fatal == 1)
		global.flag[44]++;
}
if (global.flag[51 + myself] == 2)
	global.flag[41] += 1;
if (global.flag[51 + myself] == 3)
	global.flag[42] += 1;
if (global.flag[51 + myself] == 5)
	global.flag[43] += 1;
if (global.flag[51 + myself] == 6)
{
	global.flag[45] += 1;
	global.monstergold[3] += 24;
}
_amt_add = 0;
_frozened = 0;
_violenced = 0;
_spared = 0;
_pacified = 0;
for (d_i = 0; d_i < 3; d_i += 1)
{
	if (global.flag[51 + d_i] != 0)
		_amt_add += 1;
	if (global.flag[51 + d_i] == 1)
		_violenced += 1;
	if (global.flag[51 + d_i] == 2)
		_spared += 1;
	if (global.flag[51 + d_i] == 3)
		_pacified += 1;
	if (global.flag[51 + d_i] == 6)
		_frozened += 1;
}
if (_frozened > 0)
	global.flag[50] = 6;
if (_pacified > 0)
	global.flag[50] = 3;
if (_spared > 0)
	global.flag[50] = 2;
if (_violenced > 0)
	global.flag[50] = 1;
if (global.flag[50] == 6)
	global.flag[926]++;
if (global.flag[54] != 0)
{
	global.flag[global.flag[54]] = global.flag[50];
	global.flag[54] = 0;
}
