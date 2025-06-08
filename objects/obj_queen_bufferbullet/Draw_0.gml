draw_self();
if (afterimage)
	scr_custom_afterimage(obj_buffer_afterimage);
if (instance_exists(obj_queen_buffercontroller) && scr_queen_buffercheck())
	draw_sprite(spr_queen_buffering, obj_queen_buffercontroller.bufferbar % 8, x, y);
