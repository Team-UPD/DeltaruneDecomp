havenoelle = 0;
if (instance_exists(obj_caterpillarchara))
{
	with (obj_caterpillarchara)
	{
		if (name == "noelle")
			other.havenoelle = true;
	}
}
makeviro = 1;
if ((room == room_dw_city_big_1 && global.flag[438] == 2) || (room == room_dw_city_roadblock && global.flag[438] == 1) || (global.flag[531] != 0 && global.flag[531] != 6) || havenoelle == 0)
	makeviro = 0;
if (makeviro)
{
	viro = instance_create(x, y, obj_chaseenemy);
	viro.myencounter = 73;
	if (room == room_dw_city_big_1)
		viro.sprite_index = spr_virovirokun_idle;
	if (room == room_dw_city_roadblock)
		viro.sprite_index = spr_virovirokun_bighitbox;
	viro.image_xscale = 2;
	viro.image_yscale = 2;
	viro.touchsprite = spr_virovirokun_hurt;
	viro.radius = 120;
	viro.moveradius = 0;
	viro.pacetype = 17;
	viro.chasetype = 3;
	viro.alertskip = 1;
	viro.ignoresolid = 0;
	viro.eraser = 0;
	viro.extflag = "tutViro";
	viro.encounterflag = 531;
}
else
{
	instance_destroy();
}
