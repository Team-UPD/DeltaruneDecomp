if (zurasu == 1 && zurasucon > 0)
{
	if (zurasucon == 1)
	{
		if (i_ex(writer))
		{
			remwriterx = writer.writingx - camerax();
			remwritery = writer.writingy - cameray();
		}
		if (global.fc != 0)
		{
			remfacex = obj_face.x - camerax();
			remfacey = obj_face.y - cameray();
		}
		zurasucon = 2;
	}
	if (zurasucon == 2)
	{
		if (i_ex(writer))
		{
			writer.writingx = remwriterx + camerax();
			writer.writingy = remwritery + cameray();
			if (global.fc != 0)
			{
				obj_face.x = remfacex + camerax();
				obj_face.y = remfacey + cameray();
				writer.writingx += 58 * f;
			}
		}
	}
}
