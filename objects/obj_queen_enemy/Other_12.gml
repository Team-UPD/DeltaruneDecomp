if ((bardlymercy >= 25 && phase == 1) || (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.75) && phase == 1))
{
	usewineattack = 1;
	phase = 2;
	wirescut = 0;
	shieldhp = 400;
	shieldmaxhp = shieldhp;
	shieldacthp = 6;
	shieldactmaxhp = shieldacthp;
	targetmercy = 50;
}
if ((bardlymercy >= 50 && phase == 2) || (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.5) && phase == 2))
{
	usewineattack = 1;
	phase = 3;
	shieldsize = 10;
	wirescut = 0;
	shieldhp = 500;
	shieldmaxhp = shieldhp;
	shieldacthp = 8;
	shieldactmaxhp = shieldacthp;
	targetmercy = 75;
}
if ((bardlymercy >= 75 && phase == 3) || (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.25) && phase == 3))
{
	usewineattack = 1;
	phase = 4;
	shieldsize = 12;
	wirescut = 0;
	shieldhp = 500;
	shieldmaxhp = shieldhp;
	shieldacthp = 8;
	shieldactmaxhp = shieldacthp;
	targetmercy = 100;
}
