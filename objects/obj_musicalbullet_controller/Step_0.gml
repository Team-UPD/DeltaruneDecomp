xx = obj_growtangle.x + random_range(-75, 75);
yy = obj_growtangle.y + random_range(-75, 75);
var a = obj_sweet_enemy.solotimer;
if ((obj_sweet_enemy.solotimer - solotimerprevious) == 2)
	a = obj_sweet_enemy.solotimer - 1;
solotimerprevious = obj_sweet_enemy.solotimer;
if (a == 1 || a == 8 || a == 15 || a == 22 || a == 30 || a == 36 || a == 42 || a == 51)
	event_user(0);
if (a == 64 || a == 72 || a == 78 || a == 84 || a == 96 || a == 102 || a == 108)
	event_user(0);
if (a == 114 || a == 122 || a == 129 || a == 138 || a == 142 || a == 150 || a == 158 || a == 166)
	event_user(0);
if (a == 180 || a == 186 || a == 193 || a == 201 || a == 216 || a == 222 || a == 227)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 231 || a == 236 || a == 246 || a == 252 || a == 258 || a == 264 || a == 270 || a == 276 || a == 282 || a == 294 || a == 294 || a == 303 || a == 311 || a == 319 || a == 326 || a == 332 || a == 339 || a == 345 || a == 353 || a == 360 || a == 368)
	event_user(0);
if (a == 374)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 381 || a == 389)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 396)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 411 || a == 417 || a == 426 || a == 432 || a == 444)
	event_user(0);
if (a == 475)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 490 || a == 504 || a == 519 || a == 530 || a == 547 || a == 559)
	event_user(2);
if (a == 573)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 583 || a == 591 || a == 599)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 604 || a == 619 || a == 627 || a == 634 || a == 654 || a == 658 || a == 670 || a == 681 || a == 692)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 705)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 720 || a == 735 || a == 749 || a == 764)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 778 || a == 789 || a == 800)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 816 || a == 830 || a == 837)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 847 || a == 855 || a == 858 || a == 863 || a == 870 || a == 876)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 883)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 936 || a == 957)
	event_user(1);
if (a == 972)
	event_user(1);
if (a == 986 || a == 993 || a == 1000)
	event_user(1);
if (a == 1008)
	event_user(1);
if (a == 1015 || a == 1023 || a == 1029 || a == 1051 || a == 1072)
	event_user(1);
if (a == 1087)
{
	event_user(1);
	forcedir = 1;
}
if (a == 1101 || a == 1109 || a == 1116)
	event_user(1);
if (a == 1124)
	event_user(1);
if (a == 1137 || a == 1144 || a == 1167 || a == 1188)
	event_user(1);
if (a == 1203)
	event_user(1);
if (a == 1216 || a == 1224 || a == 1231)
	event_user(1);
if (a == 1239)
{
	event_user(1);
	forcedir = -1;
}
if (a == 1253 || a == 1259 || a == 1263)
	event_user(1);
if (a == 1281 || a == 1303)
	event_user(1);
if (a == 1318)
	event_user(1);
if (a == 1333 || a == 1340 || a == 1347)
	event_user(1);
if (a == 1353)
	event_user(1);
if (a == 1368 || a == 1376 || a == 1396)
	event_user(1);
if (a == 1419 || a == 1433)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 1448 || a == 1454 || a == 1462 || a == 1469 || a == 1484 || a == 1491)
	event_user(0);
if (a == 1512 || a == 1533)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 1548 || a == 1562 || a == 1569 || a == 1577 || a == 1584 || a == 1598 || a == 1605)
	event_user(0);
if (a == 1625 || a == 1649)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 1664 || a == 1679 || a == 1685 || a == 1692)
	event_user(0);
if (a == 1696 || a == 1713 || a == 1722)
	event_user(0);
if (a == 1735 || a == 1743 || a == 1750 || a == 1764 || a == 1679 || a == 1771 || a == 1780)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 1794 || a == 1801 || a == 1811)
{
	with (obj_musicenemy_boombox)
		singlenote = 1;
	event_user(2);
}
if (a == 1830 || a == 1839)
	event_user(1);
if (a == 1864 || a == 1876 || a == 1893 || a == 1899 || a == 1908 || a == 1917 || a == 1923)
	event_user(1);
if (a == 1938)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 1980)
	event_user(1);
if (a == 2009 || a == 2019 || a == 2025 || a == 2034 || a == 2040 || a == 2052)
	event_user(1);
if (a == 2062)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 2094)
	event_user(1);
if (a == 2124 || a == 2124 || a == 2133 || a == 2141 || a == 2150 || a == 2157 || a == 2166 || a == 2170)
	event_user(1);
if (a == 2180)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 2211 || a == 2240 || a == 2250 || a == 2260 || a == 2270)
	event_user(1);
if (a == 2295)
	event_user(1);
if (a == 2312 || a == 2319 || a == 2325 || a == 2334 || a == 2341)
	event_user(1);
if (a == 2335)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 2368 || a == 2376 || a == 2385 || a == 2391)
	event_user(0);
if (a == 2397)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 2412)
	event_user(1);
if (a == 2427 || a == 2433 || a == 2442 || a == 2448 || a == 2457 || a == 2464)
	event_user(1);
if (a == 2472 || a == 2484 || a == 2493)
	event_user(1);
if (a == 2499 || a == 2520 || a == 2529)
	event_user(1);
if (a == 2535 || a == 2550 || a == 2556 || a == 2564)
	event_user(0);
if (a == 2573 || a == 2581 || a == 2598 || a == 2607 || a == 2614 || a == 2622)
	event_user(0);
if (a == 2628)
{
	with (obj_musicenemy_boombox)
		singlenote = 0;
	event_user(2);
}
if (a == 2643 || a == 2658 || a == 2664 || a == 2669 || a == 2674 || a == 2687 || a == 2694 || a == 2700)
	event_user(0);
if (a == 2715 || a == 2721 || a == 2730 || a == 2745 || a == 2758)
	event_user(0);
if (a == 2763)
{
	forcedir = 1;
	with (obj_musicenemy_boombox)
		segmentcountmax = 3;
	event_user(1);
}
if (a == 2787)
{
	forcedir = -1;
	with (obj_musicenemy_boombox)
		segmentcountmax = 5;
	event_user(1);
}
if (a == 2844 || a == 2860 || a == 2874 || a == 2886)
{
	forcedir = 0;
	with (obj_musicenemy_boombox)
	{
		segmentcountmax = 0;
		segmentcount = 0;
		makelong = 0;
		makelongtimer = 0;
	}
	event_user(0);
}
if (a == 2889 || a == 2895 || a == 2901 || a == 2916)
	event_user(0);
if (a == 2925)
{
	forcedir = 1;
	with (obj_musicenemy_boombox)
		segmentcountmax = 2;
	event_user(1);
}
if (a == 2958 || a == 2973 || a == 2988)
	event_user(0);
if (a == 2992)
{
	forcedir = -1;
	with (obj_musicenemy_boombox)
		segmentcountmax = 3;
	event_user(1);
}
if (a == 3015)
{
	forcedir = 1;
	with (obj_musicenemy_boombox)
		segmentcountmax = 5;
	event_user(1);
}
if (a == 3075 || a == 3084 || a == 3102 || a == 3118 || a == 3122 || a == 3126)
{
	event_user(0);
	forcedir = 0;
	with (obj_musicenemy_boombox)
	{
		segmentcountmax = 0;
		segmentcount = 0;
		makelong = 0;
		makelongtimer = 0;
	}
}
if (a == 3132 || a == 3147 || a == 3154 || a == 3177 || a == 3186)
	event_user(0);
if (a == 3195 || a == 3204 || a == 3213 || a == 3219)
	event_user(0);
