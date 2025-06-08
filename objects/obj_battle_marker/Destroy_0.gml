if (!destroyoncomplete && endanimation)
{
	var newMarker = scr_battle_marker(x, y, endanimation);
	newMarker.destroyoncomplete = 1;
	newMarker.sourceobject = sourceobject;
	newMarker.depth = depth;
	newMarker.image_speed = 0.5;
}
else if (sourceobject)
{
	sourceobject.image_alpha = 1;
}
