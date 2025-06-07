if (con == 1 && other.con == 1 && active == 1 && other.active == 1)
{
	if (locked == 0)
	{
		speed = 0;
		locked = 1;
		with (other)
		{
			speed = 0;
			locked = 1;
		}
		repeat (16)
		{
			if (side == 0)
			{
				if (x >= (other.x - 28))
					x -= 1;
				if (x >= (other.x - 28))
					other.x += 1;
			}
			if (side == 3)
			{
				if (y >= (other.y - 28))
					y -= 1;
				if (y >= (other.y - 28))
					other.y += 1;
			}
			if (side == 2)
			{
				if (x <= (other.x + 28))
					x += 1;
				if (x <= (other.x + 28))
					other.x -= 1;
			}
			if (side == 1)
			{
				if (y <= (other.y + 28))
					y += 1;
				if (y <= (other.y + 28))
					other.y -= 1;
			}
		}
	}
}
