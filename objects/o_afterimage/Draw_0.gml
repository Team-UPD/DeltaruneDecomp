if (black_silhouette == 1)
	d3d_set_fog(1, c_black, 0, 0);
if (white_silhouette == 1)
	d3d_set_fog(1, c_white, 0, 0);
draw_self();
if (black_silhouette == 1)
	d3d_set_fog(0, c_black, 0, 0);
if (white_silhouette == 1)
	d3d_set_fog(0, c_white, 0, 0);
