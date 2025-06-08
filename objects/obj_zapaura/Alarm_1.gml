if (!i_ex(actor))
	instance_destroy();
zap = instance_create((x - 3) + irandom(6), (y - 3) + irandom(6), obj_zapaura_zap);
zap.actor = id;
alarm[1] = 2 + irandom(refresh);
