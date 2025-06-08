outline = true;
var d = instance_create(x, cameray() - 100, obj_following_silhouette);
d.target_char = obj_mainchara;
with (obj_caterpillarchara)
{
	d = instance_create(x, cameray() - 100, obj_following_silhouette);
	d.target_char = self;
}
depth = 200;
