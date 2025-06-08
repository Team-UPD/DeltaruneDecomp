if (!i_ex(sourcePlatter))
{
	instance_destroy();
	exit;
}
y = sourcePlatter.y;
x = lerp(sourcePlatter.x - (20 * side), sourcePlatter.platterLid.x - (20 * side), 0.25);
image_alpha = sourcePlatter.image_alpha;
active = sourcePlatter.timer > 0 || sourcePlatter.lidOff;
