currentString += addString;
if (letterCount == 0 && puzzle_id == 2)
	firstTileX = lastPressedTile.x;
if (idealLetter[letterCount] == addString)
{
	letterCount++;
	if (currentString == idealString)
		con = 20;
}
else
{
	con = 10;
}
