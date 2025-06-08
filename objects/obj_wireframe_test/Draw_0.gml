draw_primitive_begin(pr_linestrip);
for (i = 0; i < 4; i++)
{
	var _xx = scr_orbitx(vertexx[0], vertexz[0], 0, 0, yrotation);
	draw_vertex(_xx, vertexy[0]);
}
