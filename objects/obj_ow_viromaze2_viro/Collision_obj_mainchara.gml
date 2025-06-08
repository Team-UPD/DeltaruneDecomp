if (instance_exists(obj_overworld_bulletarea))
{
	obj_overworld_bulletarea.x = room_width;
	obj_overworld_bulletarea.y = room_height;
}
engage = instance_create(x, y, obj_chaseenemy);
engage.myencounter = 55;
engage.sprite_index = sprite_index;
engage.image_xscale = image_xscale;
engage.image_yscale = image_yscale;
engage.touchsprite = spr_virovirokun_hurt;
engage.radius = 1;
engage.moveradius = 0;
engage.pacetype = 9;
engage.chasetype = 3;
engage.alertskip = 1;
engage.ignoresolid = 0;
instance_destroy();
