global.turntimer += 120;
global.monsterattackname[myself] = "MausHoles";
dc = scr_bulletspawner(x, y, obj_dbulletcontroller);
dc.type = 19;
dc.target = mytarget;
if (cursor_count < total_cursors)
	cursor_count++;
