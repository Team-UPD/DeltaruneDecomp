if (myinteract == 0)
	facing = dfacing;
scr_npcdir();
if (instance_exists(obj_face) && global.fc == 1)
	image_index = obj_face.face_index;
else
	image_index = 0;
